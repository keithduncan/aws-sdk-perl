
package Paws::SageMaker::DescribeTrainingJobResponse;
  use Moose;
  has AlgorithmSpecification => (is => 'ro', isa => 'Paws::SageMaker::AlgorithmSpecification', required => 1);
  has AutoMLJobArn => (is => 'ro', isa => 'Str');
  has BillableTimeInSeconds => (is => 'ro', isa => 'Int');
  has CheckpointConfig => (is => 'ro', isa => 'Paws::SageMaker::CheckpointConfig');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has DebugHookConfig => (is => 'ro', isa => 'Paws::SageMaker::DebugHookConfig');
  has DebugRuleConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::DebugRuleConfiguration]');
  has DebugRuleEvaluationStatuses => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::DebugRuleEvaluationStatus]');
  has EnableInterContainerTrafficEncryption => (is => 'ro', isa => 'Bool');
  has EnableManagedSpotTraining => (is => 'ro', isa => 'Bool');
  has EnableNetworkIsolation => (is => 'ro', isa => 'Bool');
  has Environment => (is => 'ro', isa => 'Paws::SageMaker::TrainingEnvironmentMap');
  has ExperimentConfig => (is => 'ro', isa => 'Paws::SageMaker::ExperimentConfig');
  has FailureReason => (is => 'ro', isa => 'Str');
  has FinalMetricDataList => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::MetricData]');
  has HyperParameters => (is => 'ro', isa => 'Paws::SageMaker::HyperParameters');
  has InfraCheckConfig => (is => 'ro', isa => 'Paws::SageMaker::InfraCheckConfig');
  has InputDataConfig => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Channel]');
  has LabelingJobArn => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has ModelArtifacts => (is => 'ro', isa => 'Paws::SageMaker::ModelArtifacts', required => 1);
  has OutputDataConfig => (is => 'ro', isa => 'Paws::SageMaker::OutputDataConfig');
  has ProfilerConfig => (is => 'ro', isa => 'Paws::SageMaker::ProfilerConfig');
  has ProfilerRuleConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ProfilerRuleConfiguration]');
  has ProfilerRuleEvaluationStatuses => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ProfilerRuleEvaluationStatus]');
  has ProfilingStatus => (is => 'ro', isa => 'Str');
  has RemoteDebugConfig => (is => 'ro', isa => 'Paws::SageMaker::RemoteDebugConfig');
  has ResourceConfig => (is => 'ro', isa => 'Paws::SageMaker::ResourceConfig', required => 1);
  has RetryStrategy => (is => 'ro', isa => 'Paws::SageMaker::RetryStrategy');
  has RoleArn => (is => 'ro', isa => 'Str');
  has SecondaryStatus => (is => 'ro', isa => 'Str', required => 1);
  has SecondaryStatusTransitions => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::SecondaryStatusTransition]');
  has StoppingCondition => (is => 'ro', isa => 'Paws::SageMaker::StoppingCondition', required => 1);
  has TensorBoardOutputConfig => (is => 'ro', isa => 'Paws::SageMaker::TensorBoardOutputConfig');
  has TrainingEndTime => (is => 'ro', isa => 'Str');
  has TrainingJobArn => (is => 'ro', isa => 'Str', required => 1);
  has TrainingJobName => (is => 'ro', isa => 'Str', required => 1);
  has TrainingJobStatus => (is => 'ro', isa => 'Str', required => 1);
  has TrainingStartTime => (is => 'ro', isa => 'Str');
  has TrainingTimeInSeconds => (is => 'ro', isa => 'Int');
  has TuningJobArn => (is => 'ro', isa => 'Str');
  has VpcConfig => (is => 'ro', isa => 'Paws::SageMaker::VpcConfig');
  has WarmPoolStatus => (is => 'ro', isa => 'Paws::SageMaker::WarmPoolStatus');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeTrainingJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlgorithmSpecification => L<Paws::SageMaker::AlgorithmSpecification>

Information about the algorithm used for training, and algorithm
metadata.


=head2 AutoMLJobArn => Str

The Amazon Resource Name (ARN) of an AutoML job.


=head2 BillableTimeInSeconds => Int

The billable time in seconds. Billable time refers to the absolute
wall-clock time.

Multiply C<BillableTimeInSeconds> by the number of instances
(C<InstanceCount>) in your training cluster to get the total compute
time SageMaker bills you if you run distributed training. The formula
is as follows: C<BillableTimeInSeconds * InstanceCount> .

You can calculate the savings from using managed spot training using
the formula C<(1 - BillableTimeInSeconds / TrainingTimeInSeconds) *
100>. For example, if C<BillableTimeInSeconds> is 100 and
C<TrainingTimeInSeconds> is 500, the savings is 80%.


=head2 CheckpointConfig => L<Paws::SageMaker::CheckpointConfig>




=head2 B<REQUIRED> CreationTime => Str

A timestamp that indicates when the training job was created.


=head2 DebugHookConfig => L<Paws::SageMaker::DebugHookConfig>




=head2 DebugRuleConfigurations => ArrayRef[L<Paws::SageMaker::DebugRuleConfiguration>]

Configuration information for Amazon SageMaker Debugger rules for
debugging output tensors.


=head2 DebugRuleEvaluationStatuses => ArrayRef[L<Paws::SageMaker::DebugRuleEvaluationStatus>]

Evaluation status of Amazon SageMaker Debugger rules for debugging on a
training job.


=head2 EnableInterContainerTrafficEncryption => Bool

To encrypt all communications between ML compute instances in
distributed training, choose C<True>. Encryption provides greater
security for distributed training, but training might take longer. How
long it takes depends on the amount of communication between compute
instances, especially if you use a deep learning algorithms in
distributed training.


=head2 EnableManagedSpotTraining => Bool

A Boolean indicating whether managed spot training is enabled (C<True>)
or not (C<False>).


=head2 EnableNetworkIsolation => Bool

If you want to allow inbound or outbound network calls, except for
calls between peers within a training cluster for distributed training,
choose C<True>. If you enable network isolation for training jobs that
are configured to use a VPC, SageMaker downloads and uploads customer
data and model artifacts through the specified VPC, but the training
container does not have network access.


=head2 Environment => L<Paws::SageMaker::TrainingEnvironmentMap>

The environment variables to set in the Docker container.

Do not include any security-sensitive information including account
access IDs, secrets, or tokens in any environment fields. As part of
the shared responsibility model, you are responsible for any potential
exposure, unauthorized access, or compromise of your sensitive data if
caused by security-sensitive information included in the request
environment variable or plain text fields.


=head2 ExperimentConfig => L<Paws::SageMaker::ExperimentConfig>




=head2 FailureReason => Str

If the training job failed, the reason it failed.


=head2 FinalMetricDataList => ArrayRef[L<Paws::SageMaker::MetricData>]

A collection of C<MetricData> objects that specify the names, values,
and dates and times that the training algorithm emitted to Amazon
CloudWatch.


=head2 HyperParameters => L<Paws::SageMaker::HyperParameters>

Algorithm-specific parameters.


=head2 InfraCheckConfig => L<Paws::SageMaker::InfraCheckConfig>

Contains information about the infrastructure health check
configuration for the training job.


=head2 InputDataConfig => ArrayRef[L<Paws::SageMaker::Channel>]

An array of C<Channel> objects that describes each data input channel.


=head2 LabelingJobArn => Str

The Amazon Resource Name (ARN) of the SageMaker Ground Truth labeling
job that created the transform or training job.


=head2 LastModifiedTime => Str

A timestamp that indicates when the status of the training job was last
modified.


=head2 B<REQUIRED> ModelArtifacts => L<Paws::SageMaker::ModelArtifacts>

Information about the Amazon S3 location that is configured for storing
model artifacts.


=head2 OutputDataConfig => L<Paws::SageMaker::OutputDataConfig>

The S3 path where model artifacts that you configured when creating the
job are stored. SageMaker creates subfolders for model artifacts.


=head2 ProfilerConfig => L<Paws::SageMaker::ProfilerConfig>




=head2 ProfilerRuleConfigurations => ArrayRef[L<Paws::SageMaker::ProfilerRuleConfiguration>]

Configuration information for Amazon SageMaker Debugger rules for
profiling system and framework metrics.


=head2 ProfilerRuleEvaluationStatuses => ArrayRef[L<Paws::SageMaker::ProfilerRuleEvaluationStatus>]

Evaluation status of Amazon SageMaker Debugger rules for profiling on a
training job.


=head2 ProfilingStatus => Str

Profiling status of a training job.

Valid values are: C<"Enabled">, C<"Disabled">
=head2 RemoteDebugConfig => L<Paws::SageMaker::RemoteDebugConfig>

Configuration for remote debugging. To learn more about the remote
debugging functionality of SageMaker, see Access a training container
through Amazon Web Services Systems Manager (SSM) for remote debugging
(https://docs.aws.amazon.com/sagemaker/latest/dg/train-remote-debugging.html).


=head2 B<REQUIRED> ResourceConfig => L<Paws::SageMaker::ResourceConfig>

Resources, including ML compute instances and ML storage volumes, that
are configured for model training.


=head2 RetryStrategy => L<Paws::SageMaker::RetryStrategy>

The number of times to retry the job when the job fails due to an
C<InternalServerError>.


=head2 RoleArn => Str

The Amazon Web Services Identity and Access Management (IAM) role
configured for the training job.


=head2 B<REQUIRED> SecondaryStatus => Str

Provides detailed information about the state of the training job. For
detailed information on the secondary status of the training job, see
C<StatusMessage> under SecondaryStatusTransition
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_SecondaryStatusTransition.html).

SageMaker provides primary statuses and secondary statuses that apply
to each of them:

=over

=item InProgress

=over

=item *

C<Starting> - Starting the training job.

=item *

C<Downloading> - An optional stage for algorithms that support C<File>
training input mode. It indicates that data is being downloaded to the
ML storage volumes.

=item *

C<Training> - Training is in progress.

=item *

C<Interrupted> - The job stopped because the managed spot training
instances were interrupted.

=item *

C<Uploading> - Training is complete and the model artifacts are being
uploaded to the S3 location.

=back

=item Completed

=over

=item *

C<Completed> - The training job has completed.

=back

=item Failed

=over

=item *

C<Failed> - The training job has failed. The reason for the failure is
returned in the C<FailureReason> field of
C<DescribeTrainingJobResponse>.

=back

=item Stopped

=over

=item *

C<MaxRuntimeExceeded> - The job stopped because it exceeded the maximum
allowed runtime.

=item *

C<MaxWaitTimeExceeded> - The job stopped because it exceeded the
maximum allowed wait time.

=item *

C<Stopped> - The training job has stopped.

=back

=item Stopping

=over

=item *

C<Stopping> - Stopping the training job.

=back

=back

Valid values for C<SecondaryStatus> are subject to change.

We no longer support the following secondary statuses:

=over

=item *

C<LaunchingMLInstances>

=item *

C<PreparingTraining>

=item *

C<DownloadingTrainingImage>

=back


Valid values are: C<"Starting">, C<"LaunchingMLInstances">, C<"PreparingTrainingStack">, C<"Downloading">, C<"DownloadingTrainingImage">, C<"Training">, C<"Uploading">, C<"Stopping">, C<"Stopped">, C<"MaxRuntimeExceeded">, C<"Completed">, C<"Failed">, C<"Interrupted">, C<"MaxWaitTimeExceeded">, C<"Updating">, C<"Restarting">, C<"Pending">
=head2 SecondaryStatusTransitions => ArrayRef[L<Paws::SageMaker::SecondaryStatusTransition>]

A history of all of the secondary statuses that the training job has
transitioned through.


=head2 B<REQUIRED> StoppingCondition => L<Paws::SageMaker::StoppingCondition>

Specifies a limit to how long a model training job can run. It also
specifies how long a managed Spot training job has to complete. When
the job reaches the time limit, SageMaker ends the training job. Use
this API to cap model training costs.

To stop a job, SageMaker sends the algorithm the C<SIGTERM> signal,
which delays job termination for 120 seconds. Algorithms can use this
120-second window to save the model artifacts, so the results of
training are not lost.


=head2 TensorBoardOutputConfig => L<Paws::SageMaker::TensorBoardOutputConfig>




=head2 TrainingEndTime => Str

Indicates the time when the training job ends on training instances.
You are billed for the time interval between the value of
C<TrainingStartTime> and this time. For successful jobs and stopped
jobs, this is the time after model artifacts are uploaded. For failed
jobs, this is the time when SageMaker detects a job failure.


=head2 B<REQUIRED> TrainingJobArn => Str

The Amazon Resource Name (ARN) of the training job.


=head2 B<REQUIRED> TrainingJobName => Str

Name of the model training job.


=head2 B<REQUIRED> TrainingJobStatus => Str

The status of the training job.

SageMaker provides the following training job statuses:

=over

=item *

C<InProgress> - The training is in progress.

=item *

C<Completed> - The training job has completed.

=item *

C<Failed> - The training job has failed. To see the reason for the
failure, see the C<FailureReason> field in the response to a
C<DescribeTrainingJobResponse> call.

=item *

C<Stopping> - The training job is stopping.

=item *

C<Stopped> - The training job has stopped.

=back

For more detailed information, see C<SecondaryStatus>.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">, C<"Stopping">, C<"Stopped">
=head2 TrainingStartTime => Str

Indicates the time when the training job starts on training instances.
You are billed for the time interval between this time and the value of
C<TrainingEndTime>. The start time in CloudWatch Logs might be later
than this time. The difference is due to the time it takes to download
the training data and to the size of the training container.


=head2 TrainingTimeInSeconds => Int

The training time in seconds.


=head2 TuningJobArn => Str

The Amazon Resource Name (ARN) of the associated hyperparameter tuning
job if the training job was launched by a hyperparameter tuning job.


=head2 VpcConfig => L<Paws::SageMaker::VpcConfig>

A VpcConfig
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_VpcConfig.html)
object that specifies the VPC that this training job has access to. For
more information, see Protect Training Jobs by Using an Amazon Virtual
Private Cloud
(https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html).


=head2 WarmPoolStatus => L<Paws::SageMaker::WarmPoolStatus>

The status of the warm pool associated with the training job.


=head2 _request_id => Str


=cut

1;