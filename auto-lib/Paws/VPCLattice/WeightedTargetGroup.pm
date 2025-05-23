# Generated by default/object.tt
package Paws::VPCLattice::WeightedTargetGroup;
  use Moose;
  has TargetGroupIdentifier => (is => 'ro', isa => 'Str', request_name => 'targetGroupIdentifier', traits => ['NameInRequest'], required => 1);
  has Weight => (is => 'ro', isa => 'Int', request_name => 'weight', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::WeightedTargetGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::VPCLattice::WeightedTargetGroup object:

  $service_obj->Method(Att1 => { TargetGroupIdentifier => $value, ..., Weight => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::VPCLattice::WeightedTargetGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->TargetGroupIdentifier

=head1 DESCRIPTION

Describes the weight of a target group.

=head1 ATTRIBUTES


=head2 B<REQUIRED> TargetGroupIdentifier => Str

The ID or ARN of the target group.


=head2 Weight => Int

Only required if you specify multiple target groups for a forward
action. The weight determines how requests are distributed to the
target group. For example, if you specify two target groups, each with
a weight of 10, each target group receives half the requests. If you
specify two target groups, one with a weight of 10 and the other with a
weight of 20, the target group with a weight of 20 receives twice as
many requests as the other target group. If there's only one target
group specified, then the default value is 100.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

