# Generated by default/object.tt
package Paws::RedShift::ReservedNodeConfigurationOption;
  use Moose;
  has SourceReservedNode => (is => 'ro', isa => 'Paws::RedShift::ReservedNode');
  has TargetReservedNodeCount => (is => 'ro', isa => 'Int');
  has TargetReservedNodeOffering => (is => 'ro', isa => 'Paws::RedShift::ReservedNodeOffering');

1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ReservedNodeConfigurationOption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::ReservedNodeConfigurationOption object:

  $service_obj->Method(Att1 => { SourceReservedNode => $value, ..., TargetReservedNodeOffering => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::ReservedNodeConfigurationOption object:

  $result = $service_obj->Method(...);
  $result->Att1->SourceReservedNode

=head1 DESCRIPTION

Details for a reserved-node exchange. Examples include the node type
for a reserved node, the price for a node, the node's state, and other
details.

=head1 ATTRIBUTES


=head2 SourceReservedNode => L<Paws::RedShift::ReservedNode>




=head2 TargetReservedNodeCount => Int

The target reserved-node count.


=head2 TargetReservedNodeOffering => L<Paws::RedShift::ReservedNodeOffering>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

