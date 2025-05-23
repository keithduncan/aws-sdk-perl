# Generated by default/object.tt
package Paws::PaymentCryptographyData::CryptogramAuthResponse;
  use Moose;
  has ArpcMethod1 => (is => 'ro', isa => 'Paws::PaymentCryptographyData::CryptogramVerificationArpcMethod1');
  has ArpcMethod2 => (is => 'ro', isa => 'Paws::PaymentCryptographyData::CryptogramVerificationArpcMethod2');

1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptographyData::CryptogramAuthResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PaymentCryptographyData::CryptogramAuthResponse object:

  $service_obj->Method(Att1 => { ArpcMethod1 => $value, ..., ArpcMethod2 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PaymentCryptographyData::CryptogramAuthResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ArpcMethod1

=head1 DESCRIPTION

Parameters that are required for Authorization Response Cryptogram
(ARPC) generation after Authorization Request Cryptogram (ARQC)
verification is successful.

=head1 ATTRIBUTES


=head2 ArpcMethod1 => L<Paws::PaymentCryptographyData::CryptogramVerificationArpcMethod1>

Parameters that are required for ARPC response generation using method1
after ARQC verification is successful.


=head2 ArpcMethod2 => L<Paws::PaymentCryptographyData::CryptogramVerificationArpcMethod2>

Parameters that are required for ARPC response generation using method2
after ARQC verification is successful.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PaymentCryptographyData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

