# Generated by default/object.tt
package Paws::ECS::ManagedAgentStateChange;
  use Moose;
  has ContainerName => (is => 'ro', isa => 'Str', request_name => 'containerName', traits => ['NameInRequest'], required => 1);
  has ManagedAgentName => (is => 'ro', isa => 'Str', request_name => 'managedAgentName', traits => ['NameInRequest'], required => 1);
  has Reason => (is => 'ro', isa => 'Str', request_name => 'reason', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ManagedAgentStateChange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::ManagedAgentStateChange object:

  $service_obj->Method(Att1 => { ContainerName => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::ManagedAgentStateChange object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerName

=head1 DESCRIPTION

An object representing a change in state for a managed agent.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContainerName => Str

The name of the container that's associated with the managed agent.


=head2 B<REQUIRED> ManagedAgentName => Str

The name of the managed agent.


=head2 Reason => Str

The reason for the status of the managed agent.


=head2 B<REQUIRED> Status => Str

The status of the managed agent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

