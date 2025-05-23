# Generated by default/object.tt
package Paws::AmplifyUIBuilder::FormInputValueProperty;
  use Moose;
  has BindingProperties => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::FormInputValuePropertyBindingProperties', request_name => 'bindingProperties', traits => ['NameInRequest']);
  has Concat => (is => 'ro', isa => 'ArrayRef[Paws::AmplifyUIBuilder::FormInputValueProperty]', request_name => 'concat', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::FormInputValueProperty

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AmplifyUIBuilder::FormInputValueProperty object:

  $service_obj->Method(Att1 => { BindingProperties => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AmplifyUIBuilder::FormInputValueProperty object:

  $result = $service_obj->Method(...);
  $result->Att1->BindingProperties

=head1 DESCRIPTION

Describes the configuration for an input field on a form. Use
C<FormInputValueProperty> to specify the values to render or bind by
default.

=head1 ATTRIBUTES


=head2 BindingProperties => L<Paws::AmplifyUIBuilder::FormInputValuePropertyBindingProperties>

The information to bind fields to data at runtime.


=head2 Concat => ArrayRef[L<Paws::AmplifyUIBuilder::FormInputValueProperty>]

A list of form properties to concatenate to create the value to assign
to this field property.


=head2 Value => Str

The value to assign to the input field.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AmplifyUIBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

