# Generated by default/object.tt
package Paws::SecurityHub::AwsEcsTaskDetails;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str');
  has Containers => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsEcsContainerDetails]');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Group => (is => 'ro', isa => 'Str');
  has StartedAt => (is => 'ro', isa => 'Str');
  has StartedBy => (is => 'ro', isa => 'Str');
  has TaskDefinitionArn => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
  has Volumes => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsEcsTaskVolumeDetails]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsEcsTaskDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsEcsTaskDetails object:

  $service_obj->Method(Att1 => { ClusterArn => $value, ..., Volumes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsEcsTaskDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterArn

=head1 DESCRIPTION

Provides details about a task in a cluster.

=head1 ATTRIBUTES


=head2 ClusterArn => Str

The Amazon Resource Name (ARN) of the cluster that hosts the task.


=head2 Containers => ArrayRef[L<Paws::SecurityHub::AwsEcsContainerDetails>]

The containers that are associated with the task.


=head2 CreatedAt => Str

The Unix timestamp for the time when the task was created. More
specifically, it's for the time when the task entered the C<PENDING>
state.


=head2 Group => Str

The name of the task group that's associated with the task.


=head2 StartedAt => Str

The Unix timestamp for the time when the task started. More
specifically, it's for the time when the task transitioned from the
C<PENDING> state to the C<RUNNING> state.


=head2 StartedBy => Str

The tag specified when a task is started. If an Amazon ECS service
started the task, the C<startedBy> parameter contains the deployment ID
of that service.


=head2 TaskDefinitionArn => Str

The ARN of the task definition that creates the task.


=head2 Version => Str

The version counter for the task.


=head2 Volumes => ArrayRef[L<Paws::SecurityHub::AwsEcsTaskVolumeDetails>]

Details about the data volume that is used in a task definition.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

