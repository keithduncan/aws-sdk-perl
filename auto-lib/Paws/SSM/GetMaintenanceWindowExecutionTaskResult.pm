
package Paws::SSM::GetMaintenanceWindowExecutionTaskResult;
  use Moose;
  has AlarmConfiguration => (is => 'ro', isa => 'Paws::SSM::AlarmConfiguration');
  has EndTime => (is => 'ro', isa => 'Str');
  has MaxConcurrency => (is => 'ro', isa => 'Str');
  has MaxErrors => (is => 'ro', isa => 'Str');
  has Priority => (is => 'ro', isa => 'Int');
  has ServiceRole => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusDetails => (is => 'ro', isa => 'Str');
  has TaskArn => (is => 'ro', isa => 'Str');
  has TaskExecutionId => (is => 'ro', isa => 'Str');
  has TaskParameters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::MaintenanceWindowTaskParameters]');
  has TriggeredAlarms => (is => 'ro', isa => 'ArrayRef[Paws::SSM::AlarmStateInformation]');
  has Type => (is => 'ro', isa => 'Str');
  has WindowExecutionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetMaintenanceWindowExecutionTaskResult

=head1 ATTRIBUTES


=head2 AlarmConfiguration => L<Paws::SSM::AlarmConfiguration>

The details for the CloudWatch alarm you applied to your maintenance
window task.


=head2 EndTime => Str

The time the task execution completed.


=head2 MaxConcurrency => Str

The defined maximum number of task executions that could be run in
parallel.


=head2 MaxErrors => Str

The defined maximum number of task execution errors allowed before
scheduling of the task execution would have been stopped.


=head2 Priority => Int

The priority of the task.


=head2 ServiceRole => Str

The role that was assumed when running the task.


=head2 StartTime => Str

The time the task execution started.


=head2 Status => Str

The status of the task.

Valid values are: C<"PENDING">, C<"IN_PROGRESS">, C<"SUCCESS">, C<"FAILED">, C<"TIMED_OUT">, C<"CANCELLING">, C<"CANCELLED">, C<"SKIPPED_OVERLAPPING">
=head2 StatusDetails => Str

The details explaining the status. Not available for all status values.


=head2 TaskArn => Str

The Amazon Resource Name (ARN) of the task that ran.


=head2 TaskExecutionId => Str

The ID of the specific task execution in the maintenance window task
that was retrieved.


=head2 TaskParameters => ArrayRef[L<Paws::SSM::MaintenanceWindowTaskParameters>]

The parameters passed to the task when it was run.

C<TaskParameters> has been deprecated. To specify parameters to pass to
a task when it runs, instead use the C<Parameters> option in the
C<TaskInvocationParameters> structure. For information about how
Systems Manager handles these options for the supported maintenance
window task types, see MaintenanceWindowTaskInvocationParameters.

The map has the following format:

=over

=item *

C<Key>: string, between 1 and 255 characters

=item *

C<Value>: an array of strings, each between 1 and 255 characters

=back



=head2 TriggeredAlarms => ArrayRef[L<Paws::SSM::AlarmStateInformation>]

The CloudWatch alarms that were invoked by the maintenance window task.


=head2 Type => Str

The type of task that was run.

Valid values are: C<"RUN_COMMAND">, C<"AUTOMATION">, C<"STEP_FUNCTIONS">, C<"LAMBDA">
=head2 WindowExecutionId => Str

The ID of the maintenance window execution that includes the task.


=head2 _request_id => Str


=cut

1;