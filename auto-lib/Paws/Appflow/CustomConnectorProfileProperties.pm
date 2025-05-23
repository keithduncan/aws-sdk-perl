# Generated by default/object.tt
package Paws::Appflow::CustomConnectorProfileProperties;
  use Moose;
  has OAuth2Properties => (is => 'ro', isa => 'Paws::Appflow::OAuth2Properties', request_name => 'oAuth2Properties', traits => ['NameInRequest']);
  has ProfileProperties => (is => 'ro', isa => 'Paws::Appflow::ProfilePropertiesMap', request_name => 'profileProperties', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::CustomConnectorProfileProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Appflow::CustomConnectorProfileProperties object:

  $service_obj->Method(Att1 => { OAuth2Properties => $value, ..., ProfileProperties => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Appflow::CustomConnectorProfileProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->OAuth2Properties

=head1 DESCRIPTION

The profile properties required by the custom connector.

=head1 ATTRIBUTES


=head2 OAuth2Properties => L<Paws::Appflow::OAuth2Properties>




=head2 ProfileProperties => L<Paws::Appflow::ProfilePropertiesMap>

A map of properties that are required to create a profile for the
custom connector.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

