# Generated by default/object.tt
package Paws::Batch::JobQueueDetail;
  use Moose;
  has ComputeEnvironmentOrder => (is => 'ro', isa => 'ArrayRef[Paws::Batch::ComputeEnvironmentOrder]', request_name => 'computeEnvironmentOrder', traits => ['NameInRequest'], required => 1);
  has JobQueueArn => (is => 'ro', isa => 'Str', request_name => 'jobQueueArn', traits => ['NameInRequest'], required => 1);
  has JobQueueName => (is => 'ro', isa => 'Str', request_name => 'jobQueueName', traits => ['NameInRequest'], required => 1);
  has JobStateTimeLimitActions => (is => 'ro', isa => 'ArrayRef[Paws::Batch::JobStateTimeLimitAction]', request_name => 'jobStateTimeLimitActions', traits => ['NameInRequest']);
  has Priority => (is => 'ro', isa => 'Int', request_name => 'priority', traits => ['NameInRequest'], required => 1);
  has SchedulingPolicyArn => (is => 'ro', isa => 'Str', request_name => 'schedulingPolicyArn', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusReason => (is => 'ro', isa => 'Str', request_name => 'statusReason', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::Batch::TagrisTagsMap', request_name => 'tags', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::JobQueueDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::JobQueueDetail object:

  $service_obj->Method(Att1 => { ComputeEnvironmentOrder => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::JobQueueDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ComputeEnvironmentOrder

=head1 DESCRIPTION

An object that represents the details for an Batch job queue.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComputeEnvironmentOrder => ArrayRef[L<Paws::Batch::ComputeEnvironmentOrder>]

The compute environments that are attached to the job queue and the
order that job placement is preferred. Compute environments are
selected for job placement in ascending order.


=head2 B<REQUIRED> JobQueueArn => Str

The Amazon Resource Name (ARN) of the job queue.


=head2 B<REQUIRED> JobQueueName => Str

The job queue name.


=head2 JobStateTimeLimitActions => ArrayRef[L<Paws::Batch::JobStateTimeLimitAction>]

The set of actions that Batch perform on jobs that remain at the head
of the job queue in the specified state longer than specified times.
Batch will perform each action after C<maxTimeSeconds> has passed.


=head2 B<REQUIRED> Priority => Int

The priority of the job queue. Job queue priority determines the order
that job queues are evaluated when multiple queues dispatch jobs within
a shared compute environment. A higher value for C<priority> indicates
a higher priority. Queues are evaluated in cycles, in descending order
by priority. For example, a job queue with a priority value of C<10> is
evaluated before a queue with a priority value of C<1>. All of the
compute environments must be either Amazon EC2 (C<EC2> or C<SPOT>) or
Fargate (C<FARGATE> or C<FARGATE_SPOT>). Amazon EC2 and Fargate compute
environments can't be mixed.

Job queue priority doesn't guarantee that a particular job executes
before a job in a lower priority queue. Jobs added to higher priority
queues during the queue evaluation cycle might not be evaluated until
the next cycle. A job is dispatched from a queue only if resources are
available when the queue is evaluated. If there are insufficient
resources available at that time, the cycle proceeds to the next queue.
This means that jobs added to higher priority queues might have to wait
for jobs in multiple lower priority queues to complete before they are
dispatched. You can use job dependencies to control the order for jobs
from queues with different priorities. For more information, see Job
Dependencies
(https://docs.aws.amazon.com/batch/latest/userguide/job_dependencies.html)
in the I<Batch User Guide>.


=head2 SchedulingPolicyArn => Str

The Amazon Resource Name (ARN) of the scheduling policy. The format is
C<aws:I<Partition>:batch:I<Region>:I<Account>:scheduling-policy/I<Name>
>. For example,
C<aws:aws:batch:us-west-2:123456789012:scheduling-policy/MySchedulingPolicy>.


=head2 B<REQUIRED> State => Str

Describes the ability of the queue to accept new jobs. If the job queue
state is C<ENABLED>, it can accept jobs. If the job queue state is
C<DISABLED>, new jobs can't be added to the queue, but jobs already in
the queue can finish.


=head2 Status => Str

The status of the job queue (for example, C<CREATING> or C<VALID>).


=head2 StatusReason => Str

A short, human-readable string to provide additional details for the
current status of the job queue.


=head2 Tags => L<Paws::Batch::TagrisTagsMap>

The tags that are applied to the job queue. For more information, see
Tagging your Batch resources
(https://docs.aws.amazon.com/batch/latest/userguide/using-tags.html) in
I<Batch User Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

