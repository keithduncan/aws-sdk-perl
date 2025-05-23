# Generated by default/object.tt
package Paws::Route53RecoveryCluster::UpdateRoutingControlStateEntry;
  use Moose;
  has RoutingControlArn => (is => 'ro', isa => 'Str', required => 1);
  has RoutingControlState => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryCluster::UpdateRoutingControlStateEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53RecoveryCluster::UpdateRoutingControlStateEntry object:

  $service_obj->Method(Att1 => { RoutingControlArn => $value, ..., RoutingControlState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53RecoveryCluster::UpdateRoutingControlStateEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->RoutingControlArn

=head1 DESCRIPTION

A routing control state entry.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RoutingControlArn => Str

The Amazon Resource Name (ARN) for a routing control state entry.


=head2 B<REQUIRED> RoutingControlState => Str

The routing control state in a set of routing control state entries.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53RecoveryCluster>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

