# Generated by default/object.tt
package Paws::AmplifyUIBuilder::ValueMapping;
  use Moose;
  has DisplayValue => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::FormInputValueProperty', request_name => 'displayValue', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Paws::AmplifyUIBuilder::FormInputValueProperty', request_name => 'value', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder::ValueMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AmplifyUIBuilder::ValueMapping object:

  $service_obj->Method(Att1 => { DisplayValue => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AmplifyUIBuilder::ValueMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->DisplayValue

=head1 DESCRIPTION

Associates a complex object with a display value. Use C<ValueMapping>
to store how to represent complex objects when they are displayed.

=head1 ATTRIBUTES


=head2 DisplayValue => L<Paws::AmplifyUIBuilder::FormInputValueProperty>

The value to display for the complex object.


=head2 B<REQUIRED> Value => L<Paws::AmplifyUIBuilder::FormInputValueProperty>

The complex object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AmplifyUIBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

