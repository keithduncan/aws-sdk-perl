# Generated by default/object.tt
package Paws::Deadline::TaskSearchSummary;
  use Moose;
  has EndedAt => (is => 'ro', isa => 'Str', request_name => 'endedAt', traits => ['NameInRequest']);
  has FailureRetryCount => (is => 'ro', isa => 'Int', request_name => 'failureRetryCount', traits => ['NameInRequest']);
  has JobId => (is => 'ro', isa => 'Str', request_name => 'jobId', traits => ['NameInRequest']);
  has Parameters => (is => 'ro', isa => 'Paws::Deadline::TaskParameters', request_name => 'parameters', traits => ['NameInRequest']);
  has QueueId => (is => 'ro', isa => 'Str', request_name => 'queueId', traits => ['NameInRequest']);
  has RunStatus => (is => 'ro', isa => 'Str', request_name => 'runStatus', traits => ['NameInRequest']);
  has StartedAt => (is => 'ro', isa => 'Str', request_name => 'startedAt', traits => ['NameInRequest']);
  has StepId => (is => 'ro', isa => 'Str', request_name => 'stepId', traits => ['NameInRequest']);
  has TargetRunStatus => (is => 'ro', isa => 'Str', request_name => 'targetRunStatus', traits => ['NameInRequest']);
  has TaskId => (is => 'ro', isa => 'Str', request_name => 'taskId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::TaskSearchSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Deadline::TaskSearchSummary object:

  $service_obj->Method(Att1 => { EndedAt => $value, ..., TaskId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Deadline::TaskSearchSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->EndedAt

=head1 DESCRIPTION

The details of a task search.

=head1 ATTRIBUTES


=head2 EndedAt => Str

The date and time the resource ended running.


=head2 FailureRetryCount => Int

The number of times that the task failed and was retried.


=head2 JobId => Str

The job ID.


=head2 Parameters => L<Paws::Deadline::TaskParameters>

The parameters to search for.


=head2 QueueId => Str

The queue ID.


=head2 RunStatus => Str

The run status of the task.


=head2 StartedAt => Str

The date and time the resource started running.


=head2 StepId => Str

The step ID.


=head2 TargetRunStatus => Str

The run status that the task is being updated to.


=head2 TaskId => Str

The task ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

