# Generated by default/object.tt
package Paws::IoTFleetWise::Attribute;
  use Moose;
  has AllowedValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'allowedValues', traits => ['NameInRequest']);
  has AssignedValue => (is => 'ro', isa => 'Str', request_name => 'assignedValue', traits => ['NameInRequest']);
  has Comment => (is => 'ro', isa => 'Str', request_name => 'comment', traits => ['NameInRequest']);
  has DataType => (is => 'ro', isa => 'Str', request_name => 'dataType', traits => ['NameInRequest'], required => 1);
  has DefaultValue => (is => 'ro', isa => 'Str', request_name => 'defaultValue', traits => ['NameInRequest']);
  has DeprecationMessage => (is => 'ro', isa => 'Str', request_name => 'deprecationMessage', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has FullyQualifiedName => (is => 'ro', isa => 'Str', request_name => 'fullyQualifiedName', traits => ['NameInRequest'], required => 1);
  has Max => (is => 'ro', isa => 'Num', request_name => 'max', traits => ['NameInRequest']);
  has Min => (is => 'ro', isa => 'Num', request_name => 'min', traits => ['NameInRequest']);
  has Unit => (is => 'ro', isa => 'Str', request_name => 'unit', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::Attribute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTFleetWise::Attribute object:

  $service_obj->Method(Att1 => { AllowedValues => $value, ..., Unit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTFleetWise::Attribute object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedValues

=head1 DESCRIPTION

A signal that represents static information about the vehicle, such as
engine type or manufacturing date.

=head1 ATTRIBUTES


=head2 AllowedValues => ArrayRef[Str|Undef]

A list of possible values an attribute can be assigned.


=head2 AssignedValue => Str

A specified value for the attribute.


=head2 Comment => Str

A comment in addition to the description.


=head2 B<REQUIRED> DataType => Str

The specified data type of the attribute.


=head2 DefaultValue => Str

The default value of the attribute.


=head2 DeprecationMessage => Str

The deprecation message for the node or the branch that was moved or
deleted.


=head2 Description => Str

A brief description of the attribute.


=head2 B<REQUIRED> FullyQualifiedName => Str

The fully qualified name of the attribute. For example, the fully
qualified name of an attribute might be C<Vehicle.Body.Engine.Type>.


=head2 Max => Num

The specified possible maximum value of the attribute.


=head2 Min => Num

The specified possible minimum value of the attribute.


=head2 Unit => Str

The scientific unit for the attribute.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

