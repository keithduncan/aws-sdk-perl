# Generated by default/object.tt
package Paws::Finspace::KxScalingGroupConfiguration;
  use Moose;
  has Cpu => (is => 'ro', isa => 'Num', request_name => 'cpu', traits => ['NameInRequest']);
  has MemoryLimit => (is => 'ro', isa => 'Int', request_name => 'memoryLimit', traits => ['NameInRequest']);
  has MemoryReservation => (is => 'ro', isa => 'Int', request_name => 'memoryReservation', traits => ['NameInRequest'], required => 1);
  has NodeCount => (is => 'ro', isa => 'Int', request_name => 'nodeCount', traits => ['NameInRequest'], required => 1);
  has ScalingGroupName => (is => 'ro', isa => 'Str', request_name => 'scalingGroupName', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::KxScalingGroupConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Finspace::KxScalingGroupConfiguration object:

  $service_obj->Method(Att1 => { Cpu => $value, ..., ScalingGroupName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Finspace::KxScalingGroupConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Cpu

=head1 DESCRIPTION

The structure that stores the capacity configuration details of a
scaling group.

=head1 ATTRIBUTES


=head2 Cpu => Num

The number of vCPUs that you want to reserve for each node of this kdb
cluster on the scaling group host.


=head2 MemoryLimit => Int

An optional hard limit on the amount of memory a kdb cluster can use.


=head2 B<REQUIRED> MemoryReservation => Int

A reservation of the minimum amount of memory that should be available
on the scaling group for a kdb cluster to be successfully placed in a
scaling group.


=head2 B<REQUIRED> NodeCount => Int

The number of kdb cluster nodes.


=head2 B<REQUIRED> ScalingGroupName => Str

A unique identifier for the kdb scaling group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

