# Generated by default/object.tt
package Paws::PcaConnectorAd::KeyUsageProperty;
  use Moose;
  has PropertyFlags => (is => 'ro', isa => 'Paws::PcaConnectorAd::KeyUsagePropertyFlags');
  has PropertyType => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::KeyUsageProperty

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PcaConnectorAd::KeyUsageProperty object:

  $service_obj->Method(Att1 => { PropertyFlags => $value, ..., PropertyType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PcaConnectorAd::KeyUsageProperty object:

  $result = $service_obj->Method(...);
  $result->Att1->PropertyFlags

=head1 DESCRIPTION

The key usage property defines the purpose of the private key contained
in the certificate. You can specify specific purposes using property
flags or all by using property type ALL.

=head1 ATTRIBUTES


=head2 PropertyFlags => L<Paws::PcaConnectorAd::KeyUsagePropertyFlags>

You can specify key usage for encryption, key agreement, and signature.
You can use property flags or property type but not both.


=head2 PropertyType => Str

You can specify all key usages using property type ALL. You can use
property type or property flags but not both.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PcaConnectorAd>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

