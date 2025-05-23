# Generated by default/object.tt
package Paws::AmplifyUIBuilder::CreateComponentData;
  use Moose;
  has BindingProperties => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::ComponentBindingProperties', request_name => 'bindingProperties', traits => ['NameInRequest'], required => 1);
  has Children => (is => 'ro', isa => 'ArrayRef[Paws::AmplifyUIBuilder::ComponentChild]', request_name => 'children', traits => ['NameInRequest']);
  has CollectionProperties => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::ComponentCollectionProperties', request_name => 'collectionProperties', traits => ['NameInRequest']);
  has ComponentType => (is => 'ro', isa => 'Str', request_name => 'componentType', traits => ['NameInRequest'], required => 1);
  has Events => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::ComponentEvents', request_name => 'events', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Overrides => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::ComponentOverrides', request_name => 'overrides', traits => ['NameInRequest'], required => 1);
  has Properties => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::ComponentProperties', request_name => 'properties', traits => ['NameInRequest'], required => 1);
  has SchemaVersion => (is => 'ro', isa => 'Str', request_name => 'schemaVersion', traits => ['NameInRequest']);
  has SourceId => (is => 'ro', isa => 'Str', request_name => 'sourceId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::Tags', request_name => 'tags', traits => ['NameInRequest']);
  has Variants => (is => 'ro', isa => 'ArrayRef[Paws::AmplifyUIBuilder::ComponentVariant]', request_name => 'variants', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::CreateComponentData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AmplifyUIBuilder::CreateComponentData object:

  $service_obj->Method(Att1 => { BindingProperties => $value, ..., Variants => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AmplifyUIBuilder::CreateComponentData object:

  $result = $service_obj->Method(...);
  $result->Att1->BindingProperties

=head1 DESCRIPTION

Represents all of the information that is required to create a
component.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BindingProperties => L<Paws::AmplifyUIBuilder::ComponentBindingProperties>

The data binding information for the component's properties.


=head2 Children => ArrayRef[L<Paws::AmplifyUIBuilder::ComponentChild>]

A list of child components that are instances of the main component.


=head2 CollectionProperties => L<Paws::AmplifyUIBuilder::ComponentCollectionProperties>

The data binding configuration for customizing a component's
properties. Use this for a collection component.


=head2 B<REQUIRED> ComponentType => Str

The component type. This can be an Amplify custom UI component or
another custom component.


=head2 Events => L<Paws::AmplifyUIBuilder::ComponentEvents>

The event configuration for the component. Use for the workflow feature
in Amplify Studio that allows you to bind events and actions to
components.


=head2 B<REQUIRED> Name => Str

The name of the component


=head2 B<REQUIRED> Overrides => L<Paws::AmplifyUIBuilder::ComponentOverrides>

Describes the component properties that can be overriden to customize
an instance of the component.


=head2 B<REQUIRED> Properties => L<Paws::AmplifyUIBuilder::ComponentProperties>

Describes the component's properties.


=head2 SchemaVersion => Str

The schema version of the component when it was imported.


=head2 SourceId => Str

The unique ID of the component in its original source system, such as
Figma.


=head2 Tags => L<Paws::AmplifyUIBuilder::Tags>

One or more key-value pairs to use when tagging the component data.


=head2 B<REQUIRED> Variants => ArrayRef[L<Paws::AmplifyUIBuilder::ComponentVariant>]

A list of the unique variants of this component.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AmplifyUIBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

