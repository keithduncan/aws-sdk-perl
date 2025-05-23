# Generated by default/object.tt
package Paws::AmplifyUIBuilder::ComponentProperty;
  use Moose;
  has BindingProperties => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::ComponentPropertyBindingProperties', request_name => 'bindingProperties', traits => ['NameInRequest']);
  has Bindings => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::FormBindings', request_name => 'bindings', traits => ['NameInRequest']);
  has CollectionBindingProperties => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::ComponentPropertyBindingProperties', request_name => 'collectionBindingProperties', traits => ['NameInRequest']);
  has ComponentName => (is => 'ro', isa => 'Str', request_name => 'componentName', traits => ['NameInRequest']);
  has Concat => (is => 'ro', isa => 'ArrayRef[Paws::AmplifyUIBuilder::ComponentProperty]', request_name => 'concat', traits => ['NameInRequest']);
  has Condition => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::ComponentConditionProperty', request_name => 'condition', traits => ['NameInRequest']);
  has Configured => (is => 'ro', isa => 'Bool', request_name => 'configured', traits => ['NameInRequest']);
  has DefaultValue => (is => 'ro', isa => 'Str', request_name => 'defaultValue', traits => ['NameInRequest']);
  has Event => (is => 'ro', isa => 'Str', request_name => 'event', traits => ['NameInRequest']);
  has ImportedValue => (is => 'ro', isa => 'Str', request_name => 'importedValue', traits => ['NameInRequest']);
  has Model => (is => 'ro', isa => 'Str', request_name => 'model', traits => ['NameInRequest']);
  has Property => (is => 'ro', isa => 'Str', request_name => 'property', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
  has UserAttribute => (is => 'ro', isa => 'Str', request_name => 'userAttribute', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::ComponentProperty

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AmplifyUIBuilder::ComponentProperty object:

  $service_obj->Method(Att1 => { BindingProperties => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AmplifyUIBuilder::ComponentProperty object:

  $result = $service_obj->Method(...);
  $result->Att1->BindingProperties

=head1 DESCRIPTION

Describes the configuration for all of a component's properties. Use
C<ComponentProperty> to specify the values to render or bind by
default.

=head1 ATTRIBUTES


=head2 BindingProperties => L<Paws::AmplifyUIBuilder::ComponentPropertyBindingProperties>

The information to bind the component property to data at runtime.


=head2 Bindings => L<Paws::AmplifyUIBuilder::FormBindings>

The information to bind the component property to form data.


=head2 CollectionBindingProperties => L<Paws::AmplifyUIBuilder::ComponentPropertyBindingProperties>

The information to bind the component property to data at runtime. Use
this for collection components.


=head2 ComponentName => Str

The name of the component that is affected by an event.


=head2 Concat => ArrayRef[L<Paws::AmplifyUIBuilder::ComponentProperty>]

A list of component properties to concatenate to create the value to
assign to this component property.


=head2 Condition => L<Paws::AmplifyUIBuilder::ComponentConditionProperty>

The conditional expression to use to assign a value to the component
property.


=head2 Configured => Bool

Specifies whether the user configured the property in Amplify Studio
after importing it.


=head2 DefaultValue => Str

The default value to assign to the component property.


=head2 Event => Str

An event that occurs in your app. Use this for workflow data binding.


=head2 ImportedValue => Str

The default value assigned to the property when the component is
imported into an app.


=head2 Model => Str

The data model to use to assign a value to the component property.


=head2 Property => Str

The name of the component's property that is affected by an event.


=head2 Type => Str

The component type.


=head2 UserAttribute => Str

An authenticated user attribute to use to assign a value to the
component property.


=head2 Value => Str

The value to assign to the component property.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AmplifyUIBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

