# Generated by default/object.tt
package Paws::RedShift::SecondaryClusterInfo;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has ClusterNodes => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::ClusterNode]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::SecondaryClusterInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::SecondaryClusterInfo object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., ClusterNodes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::SecondaryClusterInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

The AvailabilityZone and ClusterNodes information of the secondary
compute unit.

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The name of the Availability Zone in which the secondary compute unit
of the cluster is located.


=head2 ClusterNodes => ArrayRef[L<Paws::RedShift::ClusterNode>]

The nodes in the secondary compute unit.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

