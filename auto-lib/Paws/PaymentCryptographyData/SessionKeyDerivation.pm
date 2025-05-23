# Generated by default/object.tt
package Paws::PaymentCryptographyData::SessionKeyDerivation;
  use Moose;
  has Amex => (is => 'ro', isa => 'Paws::PaymentCryptographyData::SessionKeyAmex');
  has Emv2000 => (is => 'ro', isa => 'Paws::PaymentCryptographyData::SessionKeyEmv2000');
  has EmvCommon => (is => 'ro', isa => 'Paws::PaymentCryptographyData::SessionKeyEmvCommon');
  has Mastercard => (is => 'ro', isa => 'Paws::PaymentCryptographyData::SessionKeyMastercard');
  has Visa => (is => 'ro', isa => 'Paws::PaymentCryptographyData::SessionKeyVisa');

1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptographyData::SessionKeyDerivation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PaymentCryptographyData::SessionKeyDerivation object:

  $service_obj->Method(Att1 => { Amex => $value, ..., Visa => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PaymentCryptographyData::SessionKeyDerivation object:

  $result = $service_obj->Method(...);
  $result->Att1->Amex

=head1 DESCRIPTION

Parameters to derive a session key for Authorization Response
Cryptogram (ARQC) verification.

=head1 ATTRIBUTES


=head2 Amex => L<Paws::PaymentCryptographyData::SessionKeyAmex>

Parameters to derive session key for an Amex payment card for ARQC
verification.


=head2 Emv2000 => L<Paws::PaymentCryptographyData::SessionKeyEmv2000>

Parameters to derive session key for an Emv2000 payment card for ARQC
verification.


=head2 EmvCommon => L<Paws::PaymentCryptographyData::SessionKeyEmvCommon>

Parameters to derive session key for an Emv common payment card for
ARQC verification.


=head2 Mastercard => L<Paws::PaymentCryptographyData::SessionKeyMastercard>

Parameters to derive session key for a Mastercard payment card for ARQC
verification.


=head2 Visa => L<Paws::PaymentCryptographyData::SessionKeyVisa>

Parameters to derive session key for a Visa payment cardfor ARQC
verification.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PaymentCryptographyData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

