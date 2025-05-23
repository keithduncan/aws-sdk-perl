# Generated by default/object.tt
package Paws::TimestreamQuery::ScheduledQueryDescription;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str');
  has ErrorReportConfiguration => (is => 'ro', isa => 'Paws::TimestreamQuery::ErrorReportConfiguration');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LastRunSummary => (is => 'ro', isa => 'Paws::TimestreamQuery::ScheduledQueryRunSummary');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NextInvocationTime => (is => 'ro', isa => 'Str');
  has NotificationConfiguration => (is => 'ro', isa => 'Paws::TimestreamQuery::NotificationConfiguration', required => 1);
  has PreviousInvocationTime => (is => 'ro', isa => 'Str');
  has QueryString => (is => 'ro', isa => 'Str', required => 1);
  has RecentlyFailedRuns => (is => 'ro', isa => 'ArrayRef[Paws::TimestreamQuery::ScheduledQueryRunSummary]');
  has ScheduleConfiguration => (is => 'ro', isa => 'Paws::TimestreamQuery::ScheduleConfiguration', required => 1);
  has ScheduledQueryExecutionRoleArn => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str', required => 1);
  has TargetConfiguration => (is => 'ro', isa => 'Paws::TimestreamQuery::TargetConfiguration');

1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::ScheduledQueryDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::TimestreamQuery::ScheduledQueryDescription object:

  $service_obj->Method(Att1 => { Arn => $value, ..., TargetConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::TimestreamQuery::ScheduledQueryDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Structure that describes scheduled query.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

Scheduled query ARN.


=head2 CreationTime => Str

Creation time of the scheduled query.


=head2 ErrorReportConfiguration => L<Paws::TimestreamQuery::ErrorReportConfiguration>

Error-reporting configuration for the scheduled query.


=head2 KmsKeyId => Str

A customer provided KMS key used to encrypt the scheduled query
resource.


=head2 LastRunSummary => L<Paws::TimestreamQuery::ScheduledQueryRunSummary>

Runtime summary for the last scheduled query run.


=head2 B<REQUIRED> Name => Str

Name of the scheduled query.


=head2 NextInvocationTime => Str

The next time the scheduled query is scheduled to run.


=head2 B<REQUIRED> NotificationConfiguration => L<Paws::TimestreamQuery::NotificationConfiguration>

Notification configuration.


=head2 PreviousInvocationTime => Str

Last time the query was run.


=head2 B<REQUIRED> QueryString => Str

The query to be run.


=head2 RecentlyFailedRuns => ArrayRef[L<Paws::TimestreamQuery::ScheduledQueryRunSummary>]

Runtime summary for the last five failed scheduled query runs.


=head2 B<REQUIRED> ScheduleConfiguration => L<Paws::TimestreamQuery::ScheduleConfiguration>

Schedule configuration.


=head2 ScheduledQueryExecutionRoleArn => Str

IAM role that Timestream uses to run the schedule query.


=head2 B<REQUIRED> State => Str

State of the scheduled query.


=head2 TargetConfiguration => L<Paws::TimestreamQuery::TargetConfiguration>

Scheduled query target store configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::TimestreamQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

