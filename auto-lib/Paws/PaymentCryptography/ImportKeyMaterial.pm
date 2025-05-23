# Generated by default/object.tt
package Paws::PaymentCryptography::ImportKeyMaterial;
  use Moose;
  has DiffieHellmanTr31KeyBlock => (is => 'ro', isa => 'Paws::PaymentCryptography::ImportDiffieHellmanTr31KeyBlock');
  has KeyCryptogram => (is => 'ro', isa => 'Paws::PaymentCryptography::ImportKeyCryptogram');
  has RootCertificatePublicKey => (is => 'ro', isa => 'Paws::PaymentCryptography::RootCertificatePublicKey');
  has Tr31KeyBlock => (is => 'ro', isa => 'Paws::PaymentCryptography::ImportTr31KeyBlock');
  has Tr34KeyBlock => (is => 'ro', isa => 'Paws::PaymentCryptography::ImportTr34KeyBlock');
  has TrustedCertificatePublicKey => (is => 'ro', isa => 'Paws::PaymentCryptography::TrustedCertificatePublicKey');

1;

### main pod documentation begin ###

=head1 NAME

Paws::PaymentCryptography::ImportKeyMaterial

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PaymentCryptography::ImportKeyMaterial object:

  $service_obj->Method(Att1 => { DiffieHellmanTr31KeyBlock => $value, ..., TrustedCertificatePublicKey => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PaymentCryptography::ImportKeyMaterial object:

  $result = $service_obj->Method(...);
  $result->Att1->DiffieHellmanTr31KeyBlock

=head1 DESCRIPTION

Parameter information for key material import into Amazon Web Services
Payment Cryptography using TR-31 or TR-34 or RSA wrap and unwrap key
exchange method.

=head1 ATTRIBUTES


=head2 DiffieHellmanTr31KeyBlock => L<Paws::PaymentCryptography::ImportDiffieHellmanTr31KeyBlock>

Parameter information for key material import using the asymmetric ECDH
key exchange method.


=head2 KeyCryptogram => L<Paws::PaymentCryptography::ImportKeyCryptogram>

Parameter information for key material import using asymmetric RSA wrap
and unwrap key exchange method.


=head2 RootCertificatePublicKey => L<Paws::PaymentCryptography::RootCertificatePublicKey>

Parameter information for root public key certificate import.


=head2 Tr31KeyBlock => L<Paws::PaymentCryptography::ImportTr31KeyBlock>

Parameter information for key material import using symmetric TR-31 key
exchange method.


=head2 Tr34KeyBlock => L<Paws::PaymentCryptography::ImportTr34KeyBlock>

Parameter information for key material import using the asymmetric
TR-34 key exchange method.


=head2 TrustedCertificatePublicKey => L<Paws::PaymentCryptography::TrustedCertificatePublicKey>

Parameter information for trusted public key certificate import.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PaymentCryptography>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

