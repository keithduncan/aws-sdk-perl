# Generated by default/object.tt
package Paws::SageMaker::ClusterInstanceGroupSpecification;
  use Moose;
  has ExecutionRole => (is => 'ro', isa => 'Str', required => 1);
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has InstanceGroupName => (is => 'ro', isa => 'Str', required => 1);
  has InstanceStorageConfigs => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ClusterInstanceStorageConfig]');
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has LifeCycleConfig => (is => 'ro', isa => 'Paws::SageMaker::ClusterLifeCycleConfig', required => 1);
  has OnStartDeepHealthChecks => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OverrideVpcConfig => (is => 'ro', isa => 'Paws::SageMaker::VpcConfig');
  has ScheduledUpdateConfig => (is => 'ro', isa => 'Paws::SageMaker::ScheduledUpdateConfig');
  has ThreadsPerCore => (is => 'ro', isa => 'Int');
  has TrainingPlanArn => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ClusterInstanceGroupSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ClusterInstanceGroupSpecification object:

  $service_obj->Method(Att1 => { ExecutionRole => $value, ..., TrainingPlanArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ClusterInstanceGroupSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->ExecutionRole

=head1 DESCRIPTION

The specifications of an instance group that you need to define.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionRole => Str

Specifies an IAM execution role to be assumed by the instance group.


=head2 B<REQUIRED> InstanceCount => Int

Specifies the number of instances to add to the instance group of a
SageMaker HyperPod cluster.


=head2 B<REQUIRED> InstanceGroupName => Str

Specifies the name of the instance group.


=head2 InstanceStorageConfigs => ArrayRef[L<Paws::SageMaker::ClusterInstanceStorageConfig>]

Specifies the additional storage configurations for the instances in
the SageMaker HyperPod cluster instance group.


=head2 B<REQUIRED> InstanceType => Str

Specifies the instance type of the instance group.


=head2 B<REQUIRED> LifeCycleConfig => L<Paws::SageMaker::ClusterLifeCycleConfig>

Specifies the LifeCycle configuration for the instance group.


=head2 OnStartDeepHealthChecks => ArrayRef[Str|Undef]

A flag indicating whether deep health checks should be performed when
the cluster instance group is created or updated.


=head2 OverrideVpcConfig => L<Paws::SageMaker::VpcConfig>

To configure multi-AZ deployments, customize the Amazon VPC
configuration at the instance group level. You can specify different
subnets and security groups across different AZs in the instance group
specification to override a SageMaker HyperPod cluster's default Amazon
VPC configuration. For more information about deploying a cluster in
multiple AZs, see Setting up SageMaker HyperPod clusters across
multiple AZs
(https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-hyperpod-prerequisites.html#sagemaker-hyperpod-prerequisites-multiple-availability-zones).

When your Amazon VPC and subnets support IPv6, network communications
differ based on the cluster orchestration platform:

=over

=item *

Slurm-orchestrated clusters automatically configure nodes with dual
IPv6 and IPv4 addresses, allowing immediate IPv6 network
communications.

=item *

In Amazon EKS-orchestrated clusters, nodes receive dual-stack
addressing, but pods can only use IPv6 when the Amazon EKS cluster is
explicitly IPv6-enabled. For information about deploying an IPv6 Amazon
EKS cluster, see Amazon EKS IPv6 Cluster Deployment
(https://docs.aws.amazon.com/eks/latest/userguide/deploy-ipv6-cluster.html#_deploy_an_ipv6_cluster_with_eksctl).

=back

Additional resources for IPv6 configuration:

=over

=item *

For information about adding IPv6 support to your VPC, see to IPv6
Support for VPC
(https://docs.aws.amazon.com/vpc/latest/userguide/vpc-migrate-ipv6.html).

=item *

For information about creating a new IPv6-compatible VPC, see Amazon
VPC Creation Guide
(https://docs.aws.amazon.com/vpc/latest/userguide/create-vpc.html).

=item *

To configure SageMaker HyperPod with a custom Amazon VPC, see Custom
Amazon VPC Setup for SageMaker HyperPod
(https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-hyperpod-prerequisites.html#sagemaker-hyperpod-prerequisites-optional-vpc).

=back



=head2 ScheduledUpdateConfig => L<Paws::SageMaker::ScheduledUpdateConfig>

The configuration object of the schedule that SageMaker uses to update
the AMI.


=head2 ThreadsPerCore => Int

Specifies the value for B<Threads per core>. For instance types that
support multithreading, you can specify C<1> for disabling
multithreading and C<2> for enabling multithreading. For instance types
that doesn't support multithreading, specify C<1>. For more
information, see the reference table of CPU cores and threads per CPU
core per instance type
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/cpu-options-supported-instances-values.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 TrainingPlanArn => Str

The Amazon Resource Name (ARN); of the training plan to use for this
cluster instance group.

For more information about how to reserve GPU capacity for your
SageMaker HyperPod clusters using Amazon SageMaker Training Plan, see
C< CreateTrainingPlan
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateTrainingPlan.html)
>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

