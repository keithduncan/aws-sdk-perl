
package Paws::SageMaker::DescribeTrainingJob;
  use Moose;
  has TrainingJobName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrainingJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeTrainingJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeTrainingJob - Arguments for method DescribeTrainingJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTrainingJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeTrainingJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTrainingJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeTrainingJobResponse = $api . sagemaker->DescribeTrainingJob(
      TrainingJobName => 'MyTrainingJobName',

    );

    # Results:
    my $AlgorithmSpecification =
      $DescribeTrainingJobResponse->AlgorithmSpecification;
    my $AutoMLJobArn = $DescribeTrainingJobResponse->AutoMLJobArn;
    my $BillableTimeInSeconds =
      $DescribeTrainingJobResponse->BillableTimeInSeconds;
    my $CheckpointConfig = $DescribeTrainingJobResponse->CheckpointConfig;
    my $CreationTime     = $DescribeTrainingJobResponse->CreationTime;
    my $DebugHookConfig  = $DescribeTrainingJobResponse->DebugHookConfig;
    my $DebugRuleConfigurations =
      $DescribeTrainingJobResponse->DebugRuleConfigurations;
    my $DebugRuleEvaluationStatuses =
      $DescribeTrainingJobResponse->DebugRuleEvaluationStatuses;
    my $EnableInterContainerTrafficEncryption =
      $DescribeTrainingJobResponse->EnableInterContainerTrafficEncryption;
    my $EnableManagedSpotTraining =
      $DescribeTrainingJobResponse->EnableManagedSpotTraining;
    my $EnableNetworkIsolation =
      $DescribeTrainingJobResponse->EnableNetworkIsolation;
    my $Environment         = $DescribeTrainingJobResponse->Environment;
    my $ExperimentConfig    = $DescribeTrainingJobResponse->ExperimentConfig;
    my $FailureReason       = $DescribeTrainingJobResponse->FailureReason;
    my $FinalMetricDataList = $DescribeTrainingJobResponse->FinalMetricDataList;
    my $HyperParameters     = $DescribeTrainingJobResponse->HyperParameters;
    my $InfraCheckConfig    = $DescribeTrainingJobResponse->InfraCheckConfig;
    my $InputDataConfig     = $DescribeTrainingJobResponse->InputDataConfig;
    my $LabelingJobArn      = $DescribeTrainingJobResponse->LabelingJobArn;
    my $LastModifiedTime    = $DescribeTrainingJobResponse->LastModifiedTime;
    my $ModelArtifacts      = $DescribeTrainingJobResponse->ModelArtifacts;
    my $OutputDataConfig    = $DescribeTrainingJobResponse->OutputDataConfig;
    my $ProfilerConfig      = $DescribeTrainingJobResponse->ProfilerConfig;
    my $ProfilerRuleConfigurations =
      $DescribeTrainingJobResponse->ProfilerRuleConfigurations;
    my $ProfilerRuleEvaluationStatuses =
      $DescribeTrainingJobResponse->ProfilerRuleEvaluationStatuses;
    my $ProfilingStatus   = $DescribeTrainingJobResponse->ProfilingStatus;
    my $RemoteDebugConfig = $DescribeTrainingJobResponse->RemoteDebugConfig;
    my $ResourceConfig    = $DescribeTrainingJobResponse->ResourceConfig;
    my $RetryStrategy     = $DescribeTrainingJobResponse->RetryStrategy;
    my $RoleArn           = $DescribeTrainingJobResponse->RoleArn;
    my $SecondaryStatus   = $DescribeTrainingJobResponse->SecondaryStatus;
    my $SecondaryStatusTransitions =
      $DescribeTrainingJobResponse->SecondaryStatusTransitions;
    my $StoppingCondition = $DescribeTrainingJobResponse->StoppingCondition;
    my $TensorBoardOutputConfig =
      $DescribeTrainingJobResponse->TensorBoardOutputConfig;
    my $TrainingEndTime   = $DescribeTrainingJobResponse->TrainingEndTime;
    my $TrainingJobArn    = $DescribeTrainingJobResponse->TrainingJobArn;
    my $TrainingJobName   = $DescribeTrainingJobResponse->TrainingJobName;
    my $TrainingJobStatus = $DescribeTrainingJobResponse->TrainingJobStatus;
    my $TrainingStartTime = $DescribeTrainingJobResponse->TrainingStartTime;
    my $TrainingTimeInSeconds =
      $DescribeTrainingJobResponse->TrainingTimeInSeconds;
    my $TuningJobArn   = $DescribeTrainingJobResponse->TuningJobArn;
    my $VpcConfig      = $DescribeTrainingJobResponse->VpcConfig;
    my $WarmPoolStatus = $DescribeTrainingJobResponse->WarmPoolStatus;

    # Returns a L<Paws::SageMaker::DescribeTrainingJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeTrainingJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrainingJobName => Str

The name of the training job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTrainingJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

