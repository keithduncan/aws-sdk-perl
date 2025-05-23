# Generated by default/object.tt
package Paws::CustomerProfiles::EventTriggerCondition;
  use Moose;
  has EventTriggerDimensions => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::EventTriggerDimension]', required => 1);
  has LogicalOperator => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::EventTriggerCondition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CustomerProfiles::EventTriggerCondition object:

  $service_obj->Method(Att1 => { EventTriggerDimensions => $value, ..., LogicalOperator => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CustomerProfiles::EventTriggerCondition object:

  $result = $service_obj->Method(...);
  $result->Att1->EventTriggerDimensions

=head1 DESCRIPTION

Specifies the circumstances under which the event should trigger the
destination.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventTriggerDimensions => ArrayRef[L<Paws::CustomerProfiles::EventTriggerDimension>]

A list of dimensions to be evaluated for the event.


=head2 B<REQUIRED> LogicalOperator => Str

The operator used to combine multiple dimensions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

