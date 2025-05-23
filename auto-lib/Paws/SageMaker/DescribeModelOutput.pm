
package Paws::SageMaker::DescribeModelOutput;
  use Moose;
  has Containers => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ContainerDefinition]');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has DeploymentRecommendation => (is => 'ro', isa => 'Paws::SageMaker::DeploymentRecommendation');
  has EnableNetworkIsolation => (is => 'ro', isa => 'Bool');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str');
  has InferenceExecutionConfig => (is => 'ro', isa => 'Paws::SageMaker::InferenceExecutionConfig');
  has ModelArn => (is => 'ro', isa => 'Str', required => 1);
  has ModelName => (is => 'ro', isa => 'Str', required => 1);
  has PrimaryContainer => (is => 'ro', isa => 'Paws::SageMaker::ContainerDefinition');
  has VpcConfig => (is => 'ro', isa => 'Paws::SageMaker::VpcConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeModelOutput

=head1 ATTRIBUTES


=head2 Containers => ArrayRef[L<Paws::SageMaker::ContainerDefinition>]

The containers in the inference pipeline.


=head2 B<REQUIRED> CreationTime => Str

A timestamp that shows when the model was created.


=head2 DeploymentRecommendation => L<Paws::SageMaker::DeploymentRecommendation>

A set of recommended deployment configurations for the model.


=head2 EnableNetworkIsolation => Bool

If C<True>, no inbound or outbound network calls can be made to or from
the model container.


=head2 ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that you specified for
the model.


=head2 InferenceExecutionConfig => L<Paws::SageMaker::InferenceExecutionConfig>

Specifies details of how containers in a multi-container endpoint are
called.


=head2 B<REQUIRED> ModelArn => Str

The Amazon Resource Name (ARN) of the model.


=head2 B<REQUIRED> ModelName => Str

Name of the SageMaker model.


=head2 PrimaryContainer => L<Paws::SageMaker::ContainerDefinition>

The location of the primary inference code, associated artifacts, and
custom environment map that the inference code uses when it is deployed
in production.


=head2 VpcConfig => L<Paws::SageMaker::VpcConfig>

A VpcConfig
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_VpcConfig.html)
object that specifies the VPC that this model has access to. For more
information, see Protect Endpoints by Using an Amazon Virtual Private
Cloud (https://docs.aws.amazon.com/sagemaker/latest/dg/host-vpc.html)


=head2 _request_id => Str


=cut

1;