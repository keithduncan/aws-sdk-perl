# Generated by default/object.tt
package Paws::VPCLattice::ForwardAction;
  use Moose;
  has TargetGroups => (is => 'ro', isa => 'ArrayRef[Paws::VPCLattice::WeightedTargetGroup]', request_name => 'targetGroups', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::ForwardAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::VPCLattice::ForwardAction object:

  $service_obj->Method(Att1 => { TargetGroups => $value, ..., TargetGroups => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::VPCLattice::ForwardAction object:

  $result = $service_obj->Method(...);
  $result->Att1->TargetGroups

=head1 DESCRIPTION

Describes a forward action. You can use forward actions to route
requests to one or more target groups.

=head1 ATTRIBUTES


=head2 B<REQUIRED> TargetGroups => ArrayRef[L<Paws::VPCLattice::WeightedTargetGroup>]

The target groups. Traffic matching the rule is forwarded to the
specified target groups. With forward actions, you can assign a weight
that controls the prioritization and selection of each target group.
This means that requests are distributed to individual target groups
based on their weights. For example, if two target groups have the same
weight, each target group receives half of the traffic.

The default value is 1. This means that if only one target group is
provided, there is no need to set the weight; 100% of the traffic goes
to that target group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

