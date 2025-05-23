# Generated by default/object.tt
package Paws::PaymentCryptographyData::WrappedKey;
  use Moose;
  has KeyCheckValueAlgorithm => (is => 'ro', isa => 'Str');
  has WrappedKeyMaterial => (is => 'ro', isa => 'Paws::PaymentCryptographyData::WrappedKeyMaterial', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptographyData::WrappedKey

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PaymentCryptographyData::WrappedKey object:

  $service_obj->Method(Att1 => { KeyCheckValueAlgorithm => $value, ..., WrappedKeyMaterial => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PaymentCryptographyData::WrappedKey object:

  $result = $service_obj->Method(...);
  $result->Att1->KeyCheckValueAlgorithm

=head1 DESCRIPTION

Parameter information of a WrappedKeyBlock for encryption key exchange.

=head1 ATTRIBUTES


=head2 KeyCheckValueAlgorithm => Str

The algorithm that Amazon Web Services Payment Cryptography uses to
calculate the key check value (KCV). It is used to validate the key
integrity.

For TDES keys, the KCV is computed by encrypting 8 bytes, each with
value of zero, with the key to be checked and retaining the 3 highest
order bytes of the encrypted result. For AES keys, the KCV is computed
using a CMAC algorithm where the input data is 16 bytes of zero and
retaining the 3 highest order bytes of the encrypted result.


=head2 B<REQUIRED> WrappedKeyMaterial => L<Paws::PaymentCryptographyData::WrappedKeyMaterial>

Parameter information of a WrappedKeyBlock for encryption key exchange.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PaymentCryptographyData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

