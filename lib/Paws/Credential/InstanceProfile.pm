package Paws::Credential::InstanceProfile;
  use JSON::MaybeXS;
  use Moose;
  use DateTime::Format::ISO8601;
  use Paws::Credential::Explicit;
  with 'Paws::Credential';

  has metadata_url => (
    is => 'ro',
    isa => 'Str',
    default => 'http://169.254.169.254/latest/meta-data/iam/security-credentials/'
  );

  has timeout => (is => 'ro', isa => 'Int', default => 1);

  has ua => (
    is => 'ro',
    lazy => 1,
    default => sub {
      my $self = shift;
      use HTTP::Tiny;
      HTTP::Tiny->new(
        agent => 'AWS Perl SDK',
        timeout => $self->timeout,
      );
    }
  );

  has credentials => (is => 'rw', isa => 'Paws::Credential::Explicit|Undef');

  has expiration => (
    is => 'rw',
    isa => 'Int',
    default => sub { 0 }
  );

  #TODO: Raise exceptions if HTTP get didn't return success
  sub refresh {
    my $self = shift;

    if ($self->credentials && $self->expiration - 240 >= time) {
      return $self->credentials;
    }

    my $ua = $self->ua;
    my $r = $ua->get($self->metadata_url);
    return unless $r->{success};
    return unless $r->{content};

    $r = $ua->get($self->metadata_url . $r->{content});
    return unless $r->{success};

    my $json = eval { decode_json($r->{content}) };
    if ($@) { die "Error in JSON from metadata URL" }

    $self->credentials(Paws::Credential::Explicit->new(
      access_key => $json->{AccessKeyId},
      secret_key => $json->{SecretAccessKey},
      session_token => $json->{Token},
    ));
    $self->expiration(DateTime::Format::ISO8601->parse_datetime($json->{Expiration})->epoch);

    return $self->credentials;
  }

  no Moose;
1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Paws::Credential::InstanceProfile

=head1 SYNOPSIS

  use Paws::Credential::InstanceProfile;

  my $paws = Paws->new(config => {
    credentials => Paws::Credential::InstanceProfile->new(
      metadata_url => 'http://localhost:8000/security-credentials',
      timeout => 5,
    )
  });

=head1 DESCRIPTION

The InstanceProfile credential provider is used to call retrieve AWS credentials from instances running on AWS

When running on an instance in AWS, if said instance has a Role attached to it (also named InstanceProfile), Paws
can retrieve short-term credentials (and refresh them when needed) from the AWS provided "metadata service".

=head2 metadata_url: Str

The section in the ini file where credentials will be looked up:

=head2 timetout: Int

Number of seconds to wait before timinig out a connection to the metadata service. It defaults to 1 second, as
the metadata service is almost local, and very fast responding. Note that if set too high, and the metadata
service is not present (not running on an AWS instance), the connection has to time out

=head2 ua

A user agent that has a C<get> method. Defaults to HTTP::Tiny

=cut