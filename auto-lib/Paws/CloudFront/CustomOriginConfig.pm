# Generated by default/object.tt
package Paws::CloudFront::CustomOriginConfig;
  use Moose;
  has HTTPPort => (is => 'ro', isa => 'Int', required => 1);
  has HTTPSPort => (is => 'ro', isa => 'Int', required => 1);
  has OriginKeepaliveTimeout => (is => 'ro', isa => 'Int');
  has OriginProtocolPolicy => (is => 'ro', isa => 'Str', required => 1);
  has OriginReadTimeout => (is => 'ro', isa => 'Int');
  has OriginSslProtocols => (is => 'ro', isa => 'Paws::CloudFront::OriginSslProtocols');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CustomOriginConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::CustomOriginConfig object:

  $service_obj->Method(Att1 => { HTTPPort => $value, ..., OriginSslProtocols => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::CustomOriginConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->HTTPPort

=head1 DESCRIPTION

A custom origin. A custom origin is any origin that is I<not> an Amazon
S3 bucket, with one exception. An Amazon S3 bucket that is configured
with static website hosting
(https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html)
I<is> a custom origin.

=head1 ATTRIBUTES


=head2 B<REQUIRED> HTTPPort => Int

The HTTP port that CloudFront uses to connect to the origin. Specify
the HTTP port that the origin listens on.


=head2 B<REQUIRED> HTTPSPort => Int

The HTTPS port that CloudFront uses to connect to the origin. Specify
the HTTPS port that the origin listens on.


=head2 OriginKeepaliveTimeout => Int

Specifies how long, in seconds, CloudFront persists its connection to
the origin. The minimum timeout is 1 second, the maximum is 60 seconds,
and the default (if you don't specify otherwise) is 5 seconds.

For more information, see Keep-alive timeout (custom origins only)
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginKeepaliveTimeout)
in the I<Amazon CloudFront Developer Guide>.


=head2 B<REQUIRED> OriginProtocolPolicy => Str

Specifies the protocol (HTTP or HTTPS) that CloudFront uses to connect
to the origin. Valid values are:

=over

=item *

C<http-only> E<ndash> CloudFront always uses HTTP to connect to the
origin.

=item *

C<match-viewer> E<ndash> CloudFront connects to the origin using the
same protocol that the viewer used to connect to CloudFront.

=item *

C<https-only> E<ndash> CloudFront always uses HTTPS to connect to the
origin.

=back



=head2 OriginReadTimeout => Int

Specifies how long, in seconds, CloudFront waits for a response from
the origin. This is also known as the I<origin response timeout>. The
minimum timeout is 1 second, the maximum is 60 seconds, and the default
(if you don't specify otherwise) is 30 seconds.

For more information, see Response timeout (custom origins only)
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginResponseTimeout)
in the I<Amazon CloudFront Developer Guide>.


=head2 OriginSslProtocols => L<Paws::CloudFront::OriginSslProtocols>

Specifies the minimum SSL/TLS protocol that CloudFront uses when
connecting to your origin over HTTPS. Valid values include C<SSLv3>,
C<TLSv1>, C<TLSv1.1>, and C<TLSv1.2>.

For more information, see Minimum Origin SSL Protocol
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOriginSSLProtocols)
in the I<Amazon CloudFront Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

