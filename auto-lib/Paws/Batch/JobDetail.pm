# Generated by default/object.tt
package Paws::Batch::JobDetail;
  use Moose;
  has ArrayProperties => (is => 'ro', isa => 'Paws::Batch::ArrayPropertiesDetail', request_name => 'arrayProperties', traits => ['NameInRequest']);
  has Attempts => (is => 'ro', isa => 'ArrayRef[Paws::Batch::AttemptDetail]', request_name => 'attempts', traits => ['NameInRequest']);
  has ConsumableResourceProperties => (is => 'ro', isa => 'Paws::Batch::ConsumableResourceProperties', request_name => 'consumableResourceProperties', traits => ['NameInRequest']);
  has Container => (is => 'ro', isa => 'Paws::Batch::ContainerDetail', request_name => 'container', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Int', request_name => 'createdAt', traits => ['NameInRequest']);
  has DependsOn => (is => 'ro', isa => 'ArrayRef[Paws::Batch::JobDependency]', request_name => 'dependsOn', traits => ['NameInRequest']);
  has EcsProperties => (is => 'ro', isa => 'Paws::Batch::EcsPropertiesDetail', request_name => 'ecsProperties', traits => ['NameInRequest']);
  has EksAttempts => (is => 'ro', isa => 'ArrayRef[Paws::Batch::EksAttemptDetail]', request_name => 'eksAttempts', traits => ['NameInRequest']);
  has EksProperties => (is => 'ro', isa => 'Paws::Batch::EksPropertiesDetail', request_name => 'eksProperties', traits => ['NameInRequest']);
  has IsCancelled => (is => 'ro', isa => 'Bool', request_name => 'isCancelled', traits => ['NameInRequest']);
  has IsTerminated => (is => 'ro', isa => 'Bool', request_name => 'isTerminated', traits => ['NameInRequest']);
  has JobArn => (is => 'ro', isa => 'Str', request_name => 'jobArn', traits => ['NameInRequest']);
  has JobDefinition => (is => 'ro', isa => 'Str', request_name => 'jobDefinition', traits => ['NameInRequest'], required => 1);
  has JobId => (is => 'ro', isa => 'Str', request_name => 'jobId', traits => ['NameInRequest'], required => 1);
  has JobName => (is => 'ro', isa => 'Str', request_name => 'jobName', traits => ['NameInRequest'], required => 1);
  has JobQueue => (is => 'ro', isa => 'Str', request_name => 'jobQueue', traits => ['NameInRequest'], required => 1);
  has NodeDetails => (is => 'ro', isa => 'Paws::Batch::NodeDetails', request_name => 'nodeDetails', traits => ['NameInRequest']);
  has NodeProperties => (is => 'ro', isa => 'Paws::Batch::NodeProperties', request_name => 'nodeProperties', traits => ['NameInRequest']);
  has Parameters => (is => 'ro', isa => 'Paws::Batch::ParametersMap', request_name => 'parameters', traits => ['NameInRequest']);
  has PlatformCapabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'platformCapabilities', traits => ['NameInRequest']);
  has PropagateTags => (is => 'ro', isa => 'Bool', request_name => 'propagateTags', traits => ['NameInRequest']);
  has RetryStrategy => (is => 'ro', isa => 'Paws::Batch::RetryStrategy', request_name => 'retryStrategy', traits => ['NameInRequest']);
  has SchedulingPriority => (is => 'ro', isa => 'Int', request_name => 'schedulingPriority', traits => ['NameInRequest']);
  has ShareIdentifier => (is => 'ro', isa => 'Str', request_name => 'shareIdentifier', traits => ['NameInRequest']);
  has StartedAt => (is => 'ro', isa => 'Int', request_name => 'startedAt', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
  has StatusReason => (is => 'ro', isa => 'Str', request_name => 'statusReason', traits => ['NameInRequest']);
  has StoppedAt => (is => 'ro', isa => 'Int', request_name => 'stoppedAt', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::Batch::TagrisTagsMap', request_name => 'tags', traits => ['NameInRequest']);
  has Timeout => (is => 'ro', isa => 'Paws::Batch::JobTimeout', request_name => 'timeout', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::JobDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::JobDetail object:

  $service_obj->Method(Att1 => { ArrayProperties => $value, ..., Timeout => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::JobDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ArrayProperties

=head1 DESCRIPTION

An object that represents an Batch job.

=head1 ATTRIBUTES


=head2 ArrayProperties => L<Paws::Batch::ArrayPropertiesDetail>

The array properties of the job, if it's an array job.


=head2 Attempts => ArrayRef[L<Paws::Batch::AttemptDetail>]

A list of job attempts that are associated with this job.


=head2 ConsumableResourceProperties => L<Paws::Batch::ConsumableResourceProperties>

Contains a list of consumable resources required by the job.


=head2 Container => L<Paws::Batch::ContainerDetail>

An object that represents the details for the container that's
associated with the job. If the details are for a multiple-container
job, this object will be empty.


=head2 CreatedAt => Int

The Unix timestamp (in milliseconds) for when the job was created. For
non-array jobs and parent array jobs, this is when the job entered the
C<SUBMITTED> state. This is specifically at the time SubmitJob
(https://docs.aws.amazon.com/batch/latest/APIReference/API_SubmitJob.html)
was called. For array child jobs, this is when the child job was
spawned by its parent and entered the C<PENDING> state.


=head2 DependsOn => ArrayRef[L<Paws::Batch::JobDependency>]

A list of job IDs that this job depends on.


=head2 EcsProperties => L<Paws::Batch::EcsPropertiesDetail>

An object with properties that are specific to Amazon ECS-based jobs.


=head2 EksAttempts => ArrayRef[L<Paws::Batch::EksAttemptDetail>]

A list of job attempts that are associated with this job.


=head2 EksProperties => L<Paws::Batch::EksPropertiesDetail>

An object with various properties that are specific to Amazon EKS based
jobs.


=head2 IsCancelled => Bool

Indicates whether the job is canceled.


=head2 IsTerminated => Bool

Indicates whether the job is terminated.


=head2 JobArn => Str

The Amazon Resource Name (ARN) of the job.


=head2 B<REQUIRED> JobDefinition => Str

The Amazon Resource Name (ARN) of the job definition that this job
uses.


=head2 B<REQUIRED> JobId => Str

The job ID.


=head2 B<REQUIRED> JobName => Str

The job name.


=head2 B<REQUIRED> JobQueue => Str

The Amazon Resource Name (ARN) of the job queue that the job is
associated with.


=head2 NodeDetails => L<Paws::Batch::NodeDetails>

An object that represents the details of a node that's associated with
a multi-node parallel job.


=head2 NodeProperties => L<Paws::Batch::NodeProperties>

An object that represents the node properties of a multi-node parallel
job.

This isn't applicable to jobs that are running on Fargate resources.


=head2 Parameters => L<Paws::Batch::ParametersMap>

Additional parameters that are passed to the job that replace parameter
substitution placeholders or override any corresponding parameter
defaults from the job definition.


=head2 PlatformCapabilities => ArrayRef[Str|Undef]

The platform capabilities required by the job definition. If no value
is specified, it defaults to C<EC2>. Jobs run on Fargate resources
specify C<FARGATE>.


=head2 PropagateTags => Bool

Specifies whether to propagate the tags from the job or job definition
to the corresponding Amazon ECS task. If no value is specified, the
tags aren't propagated. Tags can only be propagated to the tasks when
the tasks are created. For tags with the same name, job tags are given
priority over job definitions tags. If the total number of combined
tags from the job and job definition is over 50, the job is moved to
the C<FAILED> state.


=head2 RetryStrategy => L<Paws::Batch::RetryStrategy>

The retry strategy to use for this job if an attempt fails.


=head2 SchedulingPriority => Int

The scheduling policy of the job definition. This only affects jobs in
job queues with a fair-share policy. Jobs with a higher scheduling
priority are scheduled before jobs with a lower scheduling priority.


=head2 ShareIdentifier => Str

The share identifier for the job.


=head2 B<REQUIRED> StartedAt => Int

The Unix timestamp (in milliseconds) for when the job was started. More
specifically, it's when the job transitioned from the C<STARTING> state
to the C<RUNNING> state.


=head2 B<REQUIRED> Status => Str

The current status for the job.

If your jobs don't progress to C<STARTING>, see Jobs stuck in RUNNABLE
status
(https://docs.aws.amazon.com/batch/latest/userguide/troubleshooting.html#job_stuck_in_runnable)
in the troubleshooting section of the I<Batch User Guide>.


=head2 StatusReason => Str

A short, human-readable string to provide more details for the current
status of the job.

=over

=item *

C<CAPACITY:INSUFFICIENT_INSTANCE_CAPACITY> - All compute environments
have insufficient capacity to service the job.

=item *

C<MISCONFIGURATION:COMPUTE_ENVIRONMENT_MAX_RESOURCE> - All compute
environments have a C<maxVcpu> setting that is smaller than the job
requirements.

=item *

C<MISCONFIGURATION:JOB_RESOURCE_REQUIREMENT> - All compute environments
have no connected instances that meet the job requirements.

=item *

C<MISCONFIGURATION:SERVICE_ROLE_PERMISSIONS> - All compute environments
have problems with the service role permissions.

=back



=head2 StoppedAt => Int

The Unix timestamp (in milliseconds) for when the job was stopped. More
specifically, it's when the job transitioned from the C<RUNNING> state
to a terminal state, such as C<SUCCEEDED> or C<FAILED>.


=head2 Tags => L<Paws::Batch::TagrisTagsMap>

The tags that are applied to the job.


=head2 Timeout => L<Paws::Batch::JobTimeout>

The timeout configuration for the job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

