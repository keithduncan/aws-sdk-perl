# Generated by default/object.tt
package Paws::IoTTwinMaker::EntityPropertyReference;
  use Moose;
  has ComponentName => (is => 'ro', isa => 'Str', request_name => 'componentName', traits => ['NameInRequest']);
  has ComponentPath => (is => 'ro', isa => 'Str', request_name => 'componentPath', traits => ['NameInRequest']);
  has EntityId => (is => 'ro', isa => 'Str', request_name => 'entityId', traits => ['NameInRequest']);
  has ExternalIdProperty => (is => 'ro', isa => 'Paws::IoTTwinMaker::ExternalIdProperty', request_name => 'externalIdProperty', traits => ['NameInRequest']);
  has PropertyName => (is => 'ro', isa => 'Str', request_name => 'propertyName', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::EntityPropertyReference

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTTwinMaker::EntityPropertyReference object:

  $service_obj->Method(Att1 => { ComponentName => $value, ..., PropertyName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTTwinMaker::EntityPropertyReference object:

  $result = $service_obj->Method(...);
  $result->Att1->ComponentName

=head1 DESCRIPTION

An object that uniquely identifies an entity property.

=head1 ATTRIBUTES


=head2 ComponentName => Str

The name of the component.


=head2 ComponentPath => Str

This string specifies the path to the composite component, starting
from the top-level component.


=head2 EntityId => Str

The ID of the entity.


=head2 ExternalIdProperty => L<Paws::IoTTwinMaker::ExternalIdProperty>

A mapping of external IDs to property names. External IDs uniquely
identify properties from external data stores.


=head2 B<REQUIRED> PropertyName => Str

The name of the property.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

