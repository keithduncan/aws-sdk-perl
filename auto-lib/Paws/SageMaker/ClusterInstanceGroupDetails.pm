# Generated by default/object.tt
package Paws::SageMaker::ClusterInstanceGroupDetails;
  use Moose;
  has CurrentCount => (is => 'ro', isa => 'Int');
  has ExecutionRole => (is => 'ro', isa => 'Str');
  has InstanceGroupName => (is => 'ro', isa => 'Str');
  has InstanceStorageConfigs => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ClusterInstanceStorageConfig]');
  has InstanceType => (is => 'ro', isa => 'Str');
  has LifeCycleConfig => (is => 'ro', isa => 'Paws::SageMaker::ClusterLifeCycleConfig');
  has OnStartDeepHealthChecks => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OverrideVpcConfig => (is => 'ro', isa => 'Paws::SageMaker::VpcConfig');
  has ScheduledUpdateConfig => (is => 'ro', isa => 'Paws::SageMaker::ScheduledUpdateConfig');
  has Status => (is => 'ro', isa => 'Str');
  has TargetCount => (is => 'ro', isa => 'Int');
  has ThreadsPerCore => (is => 'ro', isa => 'Int');
  has TrainingPlanArn => (is => 'ro', isa => 'Str');
  has TrainingPlanStatus => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ClusterInstanceGroupDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ClusterInstanceGroupDetails object:

  $service_obj->Method(Att1 => { CurrentCount => $value, ..., TrainingPlanStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ClusterInstanceGroupDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrentCount

=head1 DESCRIPTION

Details of an instance group in a SageMaker HyperPod cluster.

=head1 ATTRIBUTES


=head2 CurrentCount => Int

The number of instances that are currently in the instance group of a
SageMaker HyperPod cluster.


=head2 ExecutionRole => Str

The execution role for the instance group to assume.


=head2 InstanceGroupName => Str

The name of the instance group of a SageMaker HyperPod cluster.


=head2 InstanceStorageConfigs => ArrayRef[L<Paws::SageMaker::ClusterInstanceStorageConfig>]

The additional storage configurations for the instances in the
SageMaker HyperPod cluster instance group.


=head2 InstanceType => Str

The instance type of the instance group of a SageMaker HyperPod
cluster.


=head2 LifeCycleConfig => L<Paws::SageMaker::ClusterLifeCycleConfig>

Details of LifeCycle configuration for the instance group.


=head2 OnStartDeepHealthChecks => ArrayRef[Str|Undef]

A flag indicating whether deep health checks should be performed when
the cluster instance group is created or updated.


=head2 OverrideVpcConfig => L<Paws::SageMaker::VpcConfig>

The customized Amazon VPC configuration at the instance group level
that overrides the default Amazon VPC configuration of the SageMaker
HyperPod cluster.


=head2 ScheduledUpdateConfig => L<Paws::SageMaker::ScheduledUpdateConfig>

The configuration object of the schedule that SageMaker follows when
updating the AMI.


=head2 Status => Str

The current status of the cluster instance group.

=over

=item *

C<InService>: The instance group is active and healthy.

=item *

C<Creating>: The instance group is being provisioned.

=item *

C<Updating>: The instance group is being updated.

=item *

C<Failed>: The instance group has failed to provision or is no longer
healthy.

=item *

C<Degraded>: The instance group is degraded, meaning that some
instances have failed to provision or are no longer healthy.

=item *

C<Deleting>: The instance group is being deleted.

=back



=head2 TargetCount => Int

The number of instances you specified to add to the instance group of a
SageMaker HyperPod cluster.


=head2 ThreadsPerCore => Int

The number you specified to C<TreadsPerCore> in C<CreateCluster> for
enabling or disabling multithreading. For instance types that support
multithreading, you can specify 1 for disabling multithreading and 2
for enabling multithreading. For more information, see the reference
table of CPU cores and threads per CPU core per instance type
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/cpu-options-supported-instances-values.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 TrainingPlanArn => Str

The Amazon Resource Name (ARN); of the training plan associated with
this cluster instance group.

For more information about how to reserve GPU capacity for your
SageMaker HyperPod clusters using Amazon SageMaker Training Plan, see
C< CreateTrainingPlan
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateTrainingPlan.html)
>.


=head2 TrainingPlanStatus => Str

The current status of the training plan associated with this cluster
instance group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

