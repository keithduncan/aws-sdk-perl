
package Paws::SageMaker::DescribeOptimizationJob;
  use Moose;
  has OptimizationJobName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOptimizationJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeOptimizationJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeOptimizationJob - Arguments for method DescribeOptimizationJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeOptimizationJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeOptimizationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeOptimizationJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeOptimizationJobResponse =
      $api . sagemaker->DescribeOptimizationJob(
      OptimizationJobName => 'MyEntityName',

      );

    # Results:
    my $CreationTime = $DescribeOptimizationJobResponse->CreationTime;
    my $DeploymentInstanceType =
      $DescribeOptimizationJobResponse->DeploymentInstanceType;
    my $FailureReason    = $DescribeOptimizationJobResponse->FailureReason;
    my $LastModifiedTime = $DescribeOptimizationJobResponse->LastModifiedTime;
    my $ModelSource      = $DescribeOptimizationJobResponse->ModelSource;
    my $OptimizationConfigs =
      $DescribeOptimizationJobResponse->OptimizationConfigs;
    my $OptimizationEndTime =
      $DescribeOptimizationJobResponse->OptimizationEndTime;
    my $OptimizationEnvironment =
      $DescribeOptimizationJobResponse->OptimizationEnvironment;
    my $OptimizationJobArn =
      $DescribeOptimizationJobResponse->OptimizationJobArn;
    my $OptimizationJobName =
      $DescribeOptimizationJobResponse->OptimizationJobName;
    my $OptimizationJobStatus =
      $DescribeOptimizationJobResponse->OptimizationJobStatus;
    my $OptimizationOutput =
      $DescribeOptimizationJobResponse->OptimizationOutput;
    my $OptimizationStartTime =
      $DescribeOptimizationJobResponse->OptimizationStartTime;
    my $OutputConfig      = $DescribeOptimizationJobResponse->OutputConfig;
    my $RoleArn           = $DescribeOptimizationJobResponse->RoleArn;
    my $StoppingCondition = $DescribeOptimizationJobResponse->StoppingCondition;
    my $VpcConfig         = $DescribeOptimizationJobResponse->VpcConfig;

    # Returns a L<Paws::SageMaker::DescribeOptimizationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeOptimizationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OptimizationJobName => Str

The name that you assigned to the optimization job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeOptimizationJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

