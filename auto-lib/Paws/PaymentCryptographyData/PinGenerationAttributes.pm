# Generated by default/object.tt
package Paws::PaymentCryptographyData::PinGenerationAttributes;
  use Moose;
  has Ibm3624NaturalPin => (is => 'ro', isa => 'Paws::PaymentCryptographyData::Ibm3624NaturalPin');
  has Ibm3624PinFromOffset => (is => 'ro', isa => 'Paws::PaymentCryptographyData::Ibm3624PinFromOffset');
  has Ibm3624PinOffset => (is => 'ro', isa => 'Paws::PaymentCryptographyData::Ibm3624PinOffset');
  has Ibm3624RandomPin => (is => 'ro', isa => 'Paws::PaymentCryptographyData::Ibm3624RandomPin');
  has VisaPin => (is => 'ro', isa => 'Paws::PaymentCryptographyData::VisaPin');
  has VisaPinVerificationValue => (is => 'ro', isa => 'Paws::PaymentCryptographyData::VisaPinVerificationValue');

1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptographyData::PinGenerationAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PaymentCryptographyData::PinGenerationAttributes object:

  $service_obj->Method(Att1 => { Ibm3624NaturalPin => $value, ..., VisaPinVerificationValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PaymentCryptographyData::PinGenerationAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Ibm3624NaturalPin

=head1 DESCRIPTION

Parameters that are required for PIN data generation.

=head1 ATTRIBUTES


=head2 Ibm3624NaturalPin => L<Paws::PaymentCryptographyData::Ibm3624NaturalPin>

Parameters that are required to generate or verify Ibm3624 natural PIN.


=head2 Ibm3624PinFromOffset => L<Paws::PaymentCryptographyData::Ibm3624PinFromOffset>

Parameters that are required to generate or verify Ibm3624 PIN from
offset PIN.


=head2 Ibm3624PinOffset => L<Paws::PaymentCryptographyData::Ibm3624PinOffset>

Parameters that are required to generate or verify Ibm3624 PIN offset
PIN.


=head2 Ibm3624RandomPin => L<Paws::PaymentCryptographyData::Ibm3624RandomPin>

Parameters that are required to generate or verify Ibm3624 random PIN.


=head2 VisaPin => L<Paws::PaymentCryptographyData::VisaPin>

Parameters that are required to generate or verify Visa PIN.


=head2 VisaPinVerificationValue => L<Paws::PaymentCryptographyData::VisaPinVerificationValue>

Parameters that are required to generate or verify Visa PIN
Verification Value (PVV).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PaymentCryptographyData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

