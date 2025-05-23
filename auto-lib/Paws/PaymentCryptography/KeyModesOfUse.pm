# Generated by default/object.tt
package Paws::PaymentCryptography::KeyModesOfUse;
  use Moose;
  has Decrypt => (is => 'ro', isa => 'Bool');
  has DeriveKey => (is => 'ro', isa => 'Bool');
  has Encrypt => (is => 'ro', isa => 'Bool');
  has Generate => (is => 'ro', isa => 'Bool');
  has NoRestrictions => (is => 'ro', isa => 'Bool');
  has Sign => (is => 'ro', isa => 'Bool');
  has Unwrap => (is => 'ro', isa => 'Bool');
  has Verify => (is => 'ro', isa => 'Bool');
  has Wrap => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::KeyModesOfUse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PaymentCryptography::KeyModesOfUse object:

  $service_obj->Method(Att1 => { Decrypt => $value, ..., Wrap => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PaymentCryptography::KeyModesOfUse object:

  $result = $service_obj->Method(...);
  $result->Att1->Decrypt

=head1 DESCRIPTION

The list of cryptographic operations that you can perform using the
key. The modes of use are dened in section A.5.3 of the TR-31 spec.

=head1 ATTRIBUTES


=head2 Decrypt => Bool

Species whether an Amazon Web Services Payment Cryptography key can be
used to decrypt data.


=head2 DeriveKey => Bool

Species whether an Amazon Web Services Payment Cryptography key can be
used to derive new keys.


=head2 Encrypt => Bool

Species whether an Amazon Web Services Payment Cryptography key can be
used to encrypt data.


=head2 Generate => Bool

Species whether an Amazon Web Services Payment Cryptography key can be
used to generate and verify other card and PIN verification keys.


=head2 NoRestrictions => Bool

Species whether an Amazon Web Services Payment Cryptography key has no
special restrictions other than the restrictions implied by
C<KeyUsage>.


=head2 Sign => Bool

Species whether an Amazon Web Services Payment Cryptography key can be
used for signing.


=head2 Unwrap => Bool

Species whether an Amazon Web Services Payment Cryptography key can be
used to unwrap other keys.


=head2 Verify => Bool

Species whether an Amazon Web Services Payment Cryptography key can be
used to verify signatures.


=head2 Wrap => Bool

Species whether an Amazon Web Services Payment Cryptography key can be
used to wrap other keys.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PaymentCryptography>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

