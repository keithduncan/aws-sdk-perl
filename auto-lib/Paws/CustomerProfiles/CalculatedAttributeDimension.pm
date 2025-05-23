# Generated by default/object.tt
package Paws::CustomerProfiles::CalculatedAttributeDimension;
  use Moose;
  has ConditionOverrides => (is => 'ro', isa => 'Paws::CustomerProfiles::ConditionOverrides');
  has DimensionType => (is => 'ro', isa => 'Str', required => 1);
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'Values', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::CalculatedAttributeDimension

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CustomerProfiles::CalculatedAttributeDimension object:

  $service_obj->Method(Att1 => { ConditionOverrides => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CustomerProfiles::CalculatedAttributeDimension object:

  $result = $service_obj->Method(...);
  $result->Att1->ConditionOverrides

=head1 DESCRIPTION

Object that segments on Customer Profile's Calculated Attributes.

=head1 ATTRIBUTES


=head2 ConditionOverrides => L<Paws::CustomerProfiles::ConditionOverrides>

Applies the given condition over the initial Calculated Attribute's
definition.


=head2 B<REQUIRED> DimensionType => Str

The action to segment with.


=head2 B<REQUIRED> Values => ArrayRef[Str|Undef]

The values to apply the DimensionType with.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

