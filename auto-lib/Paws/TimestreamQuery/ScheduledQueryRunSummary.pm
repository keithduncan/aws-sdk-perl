# Generated by default/object.tt
package Paws::TimestreamQuery::ScheduledQueryRunSummary;
  use Moose;
  has ErrorReportLocation => (is => 'ro', isa => 'Paws::TimestreamQuery::ErrorReportLocation');
  has ExecutionStats => (is => 'ro', isa => 'Paws::TimestreamQuery::ExecutionStats');
  has FailureReason => (is => 'ro', isa => 'Str');
  has InvocationTime => (is => 'ro', isa => 'Str');
  has QueryInsightsResponse => (is => 'ro', isa => 'Paws::TimestreamQuery::ScheduledQueryInsightsResponse');
  has RunStatus => (is => 'ro', isa => 'Str');
  has TriggerTime => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::ScheduledQueryRunSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::TimestreamQuery::ScheduledQueryRunSummary object:

  $service_obj->Method(Att1 => { ErrorReportLocation => $value, ..., TriggerTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::TimestreamQuery::ScheduledQueryRunSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorReportLocation

=head1 DESCRIPTION

Run summary for the scheduled query

=head1 ATTRIBUTES


=head2 ErrorReportLocation => L<Paws::TimestreamQuery::ErrorReportLocation>

S3 location for error report.


=head2 ExecutionStats => L<Paws::TimestreamQuery::ExecutionStats>

Runtime statistics for a scheduled run.


=head2 FailureReason => Str

Error message for the scheduled query in case of failure. You might
have to look at the error report to get more detailed error reasons.


=head2 InvocationTime => Str

InvocationTime for this run. This is the time at which the query is
scheduled to run. Parameter C<@scheduled_runtime> can be used in the
query to get the value.


=head2 QueryInsightsResponse => L<Paws::TimestreamQuery::ScheduledQueryInsightsResponse>

Provides various insights and metrics related to the run summary of the
scheduled query.


=head2 RunStatus => Str

The status of a scheduled query run.


=head2 TriggerTime => Str

The actual time when the query was run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::TimestreamQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

