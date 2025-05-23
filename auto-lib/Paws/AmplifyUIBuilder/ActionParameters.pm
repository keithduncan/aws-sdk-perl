# Generated by default/object.tt
package Paws::AmplifyUIBuilder::ActionParameters;
  use Moose;
  has Anchor => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::ComponentProperty', request_name => 'anchor', traits => ['NameInRequest']);
  has Fields => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::ComponentProperties', request_name => 'fields', traits => ['NameInRequest']);
  has Global => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::ComponentProperty', request_name => 'global', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::ComponentProperty', request_name => 'id', traits => ['NameInRequest']);
  has Model => (is => 'ro', isa => 'Str', request_name => 'model', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::MutationActionSetStateParameter', request_name => 'state', traits => ['NameInRequest']);
  has Target => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::ComponentProperty', request_name => 'target', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::ComponentProperty', request_name => 'type', traits => ['NameInRequest']);
  has Url => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::ComponentProperty', request_name => 'url', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::ActionParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AmplifyUIBuilder::ActionParameters object:

  $service_obj->Method(Att1 => { Anchor => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AmplifyUIBuilder::ActionParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->Anchor

=head1 DESCRIPTION

Represents the event action configuration for an element of a
C<Component> or C<ComponentChild>. Use for the workflow feature in
Amplify Studio that allows you to bind events and actions to
components. C<ActionParameters> defines the action that is performed
when an event occurs on the component.

=head1 ATTRIBUTES


=head2 Anchor => L<Paws::AmplifyUIBuilder::ComponentProperty>

The HTML anchor link to the location to open. Specify this value for a
navigation action.


=head2 Fields => L<Paws::AmplifyUIBuilder::ComponentProperties>

A dictionary of key-value pairs mapping Amplify Studio properties to
fields in a data model. Use when the action performs an operation on an
Amplify DataStore model.


=head2 Global => L<Paws::AmplifyUIBuilder::ComponentProperty>

Specifies whether the user should be signed out globally. Specify this
value for an auth sign out action.


=head2 Id => L<Paws::AmplifyUIBuilder::ComponentProperty>

The unique ID of the component that the C<ActionParameters> apply to.


=head2 Model => Str

The name of the data model. Use when the action performs an operation
on an Amplify DataStore model.


=head2 State => L<Paws::AmplifyUIBuilder::MutationActionSetStateParameter>

A key-value pair that specifies the state property name and its initial
value.


=head2 Target => L<Paws::AmplifyUIBuilder::ComponentProperty>

The element within the same component to modify when the action occurs.


=head2 Type => L<Paws::AmplifyUIBuilder::ComponentProperty>

The type of navigation action. Valid values are C<url> and C<anchor>.
This value is required for a navigation action.


=head2 Url => L<Paws::AmplifyUIBuilder::ComponentProperty>

The URL to the location to open. Specify this value for a navigation
action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AmplifyUIBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

