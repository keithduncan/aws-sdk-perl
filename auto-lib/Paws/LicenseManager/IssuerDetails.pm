# Generated by default/object.tt
package Paws::LicenseManager::IssuerDetails;
  use Moose;
  has KeyFingerprint => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has SignKey => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::IssuerDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LicenseManager::IssuerDetails object:

  $service_obj->Method(Att1 => { KeyFingerprint => $value, ..., SignKey => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LicenseManager::IssuerDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->KeyFingerprint

=head1 DESCRIPTION

Details associated with the issuer of a license.

=head1 ATTRIBUTES


=head2 KeyFingerprint => Str

Issuer key fingerprint.


=head2 Name => Str

Issuer name.


=head2 SignKey => Str

Asymmetric KMS key from Key Management Service. The KMS key must have a
key usage of sign and verify, and support the RSASSA-PSS SHA-256
signing algorithm.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

