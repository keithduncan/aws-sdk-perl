package Paws::Net::V2Signature;
  use Moose::Role;
  use Digest::SHA qw(hmac_sha256);
  use MIME::Base64 qw(encode_base64);
  use Carp;
  use URI;
  use POSIX qw/strftime/;

  sub BUILD {
    my $self = shift;

    # These calls are here so that when you construct
    # the object the endpoint information and the _region_for_signature
    # are calculated during construction. This is to avoid the fact that 
    # these attributes are lazy (because they depend on other attributes) 
    # and they don't get used until the first method is called, so if
    # they are incorrect, they don't throw until the first method is called.
    # It's much better to have them throw when $paws->service('...') is called
    # as this is the point where the user had specified "incorrect" information,
    # instead of the problem happening in the first method call.
    $self->endpoint;
    $self->_region_for_signature;
  }

has 'base_url'           => ( 
    is          => 'ro', 
    required    => 1,
    lazy        => 1,
    default     => sub {
        sprintf 'https://%s', $_[0]->endpoint_host;
    }
);

has '_base_url_host'     => (
    is          => 'ro',
    required    => 1,
    lazy        => 1,
    default     => sub {
        ($_[0]->_split_url($_[0]->base_url))[1]
    }
);

# Lifted off HTTP::Tiny
sub _split_url {
    my $url = pop;

    # URI regex adapted from the URI module
    my ($scheme, $host, $path_query) = $url =~ m<\A([^:/?#]+)://([^/?#]*)([^#]*)>
      or die(qq/Cannot parse URL: '$url'\n/);

    $scheme     = lc $scheme;
    $path_query = "/$path_query" unless $path_query =~ m<\A/>;

    my $auth = '';
    if ( (my $i = index $host, '@') != -1 ) {
        # user:pass@host
        $auth = substr $host, 0, $i, ''; # take up to the @ for auth
        substr $host, 0, 1, '';          # knock the @ off the host

        # userinfo might be percent escaped, so recover real auth info
        $auth =~ s/%([0-9A-Fa-f]{2})/chr(hex($1))/eg;
    }
    my $port = $host =~ s/:(\d*)\z// && length $1 ? $1
             : $scheme eq 'http'                  ? 80
             : $scheme eq 'https'                 ? 443
             : undef;

    return ($scheme, (length $host ? lc $host : "localhost") , $port, $path_query, $auth);
}

sub sign {
    my ($self, $request, $creds) = @_;

    $creds ||= $self->credentials->refresh;

    $request->parameters->{ SignatureVersion } = "2";
    $request->parameters->{ SignatureMethod } = "HmacSHA256";
    $request->parameters->{ Timestamp } //= strftime("%Y-%m-%dT%H:%M:%SZ",gmtime);
    $request->parameters->{ AWSAccessKeyId } = $creds->access_key;

    if ($creds->session_token) {
      $request->parameters->{ SecurityToken } = $creds->session_token;
    }

    my %sign_hash = %{ $request->parameters };
    my $sign_this = "POST\n";
    $sign_this .= $self->_base_url_host . "\n";
    $sign_this .= "/\n";


    $sign_this .= $self->www_form_urlencode(\%sign_hash);

    my $encoded = encode_base64(hmac_sha256($sign_this, $creds->secret_key), '');

    $request->parameters->{ Signature } = $encoded;

    $request->content($self->generate_content_from_parameters($request));
}


sub www_form_urlencode {
    my ($self, $data) = @_;

    my @params = %$data;

    my @terms;
    while( @params ) {
        my ($key, $value) = splice(@params, 0, 2);
        if ( ref $value eq 'ARRAY' ) {
            unshift @params, map { $key => $_ } @$value;
        }
        else {
            push @terms, join("=", map { $self->_uri_escape($_) } $key, $value);
        }
    }

    return join("&", sort @terms );
}

# URI escaping adapted from URI::Escape
# c.f. http://www.w3.org/TR/html4/interact/forms.html#h-17.13.4.1
# perl 5.6 ready UTF-8 encoding adapted from JSON::PP
our %escapes = map { chr($_) => sprintf("%%%02X", $_) } 0..255;
our $unsafe_char = qr/[^A-Za-z0-9\-\._~]/;

sub _uri_escape {
    my ($self, $str) = @_;
    utf8::encode($str);
    $str =~ s/($unsafe_char)/$escapes{$1}/ge;
    $str =~ s/ /+/go;
    return $str;
}

sub _request {
    my $self   = shift;
    my $params = shift;

    return $self->ua->post_form( $self->base_url, $params );
}

1;
