# Generated by default/object.tt
package Paws::RedshiftServerless::ScheduledActionResponse;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', request_name => 'endTime', traits => ['NameInRequest']);
  has NamespaceName => (is => 'ro', isa => 'Str', request_name => 'namespaceName', traits => ['NameInRequest']);
  has NextInvocations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'nextInvocations', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest']);
  has Schedule => (is => 'ro', isa => 'Paws::RedshiftServerless::Schedule', request_name => 'schedule', traits => ['NameInRequest']);
  has ScheduledActionDescription => (is => 'ro', isa => 'Str', request_name => 'scheduledActionDescription', traits => ['NameInRequest']);
  has ScheduledActionName => (is => 'ro', isa => 'Str', request_name => 'scheduledActionName', traits => ['NameInRequest']);
  has ScheduledActionUuid => (is => 'ro', isa => 'Str', request_name => 'scheduledActionUuid', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has TargetAction => (is => 'ro', isa => 'Paws::RedshiftServerless::TargetAction', request_name => 'targetAction', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ScheduledActionResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedshiftServerless::ScheduledActionResponse object:

  $service_obj->Method(Att1 => { EndTime => $value, ..., TargetAction => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedshiftServerless::ScheduledActionResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTime

=head1 DESCRIPTION

The returned scheduled action object.

=head1 ATTRIBUTES


=head2 EndTime => Str

The end time of


=head2 NamespaceName => Str

The end time in UTC when the schedule is no longer active. After this
time, the scheduled action does not trigger.


=head2 NextInvocations => ArrayRef[Str|Undef]

An array of timestamps of when the next scheduled actions will trigger.


=head2 RoleArn => Str

The ARN of the IAM role to assume to run the scheduled action. This IAM
role must have permission to run the Amazon Redshift Serverless API
operation in the scheduled action. This IAM role must allow the Amazon
Redshift scheduler to schedule creating snapshots. (Principal
scheduler.redshift.amazonaws.com) to assume permissions on your behalf.
For more information about the IAM role to use with the Amazon Redshift
scheduler, see Using Identity-Based Policies for Amazon Redshift
(https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html)
in the Amazon Redshift Management Guide


=head2 Schedule => L<Paws::RedshiftServerless::Schedule>

The schedule for a one-time (at timestamp format) or recurring (cron
format) scheduled action. Schedule invocations must be separated by at
least one hour. Times are in UTC.

=over

=item *

Format of at timestamp is C<yyyy-mm-ddThh:mm:ss>. For example,
C<2016-03-04T17:27:00>.

=item *

Format of cron expression is C<(Minutes Hours Day-of-month Month
Day-of-week Year)>. For example, C<"(0 10 ? * MON *)">. For more
information, see Cron Expressions
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions)
in the I<Amazon CloudWatch Events User Guide>.

=back



=head2 ScheduledActionDescription => Str

The description of the scheduled action.


=head2 ScheduledActionName => Str

The name of the scheduled action.


=head2 ScheduledActionUuid => Str

The uuid of the scheduled action.


=head2 StartTime => Str

The start time in UTC when the schedule is active. Before this time,
the scheduled action does not trigger.


=head2 State => Str

The state of the scheduled action.


=head2 TargetAction => L<Paws::RedshiftServerless::TargetAction>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

