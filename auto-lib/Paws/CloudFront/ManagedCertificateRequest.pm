# Generated by default/object.tt
package Paws::CloudFront::ManagedCertificateRequest;
  use Moose;
  has CertificateTransparencyLoggingPreference => (is => 'ro', isa => 'Str');
  has PrimaryDomainName => (is => 'ro', isa => 'Str');
  has ValidationTokenHost => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ManagedCertificateRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::ManagedCertificateRequest object:

  $service_obj->Method(Att1 => { CertificateTransparencyLoggingPreference => $value, ..., ValidationTokenHost => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::ManagedCertificateRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateTransparencyLoggingPreference

=head1 DESCRIPTION

An object that represents the request for the Amazon CloudFront managed
ACM certificate.

=head1 ATTRIBUTES


=head2 CertificateTransparencyLoggingPreference => Str

You can opt out of certificate transparency logging by specifying the
C<disabled> option. Opt in by specifying C<enabled>. For more
information, see Certificate Transparency Logging
(https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency)
in the I<Certificate Manager User Guide>.


=head2 PrimaryDomainName => Str

The primary domain name associated with the CloudFront managed ACM
certificate.


=head2 B<REQUIRED> ValidationTokenHost => Str

Specify how the HTTP validation token will be served when requesting
the CloudFront managed ACM certificate.

=over

=item *

For C<cloudfront>, CloudFront will automatically serve the validation
token. Choose this mode if you can point the domain's DNS to CloudFront
immediately.

=item *

For C<self-hosted>, you serve the validation token from your existing
infrastructure. Choose this mode when you need to maintain current
traffic flow while your certificate is being issued. You can place the
validation token at the well-known path on your existing web server,
wait for ACM to validate and issue the certificate, and then update
your DNS to point to CloudFront.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

