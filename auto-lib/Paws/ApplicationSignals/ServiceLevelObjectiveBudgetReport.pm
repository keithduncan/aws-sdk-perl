# Generated by default/object.tt
package Paws::ApplicationSignals::ServiceLevelObjectiveBudgetReport;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Attainment => (is => 'ro', isa => 'Num');
  has BudgetRequestsRemaining => (is => 'ro', isa => 'Int');
  has BudgetSecondsRemaining => (is => 'ro', isa => 'Int');
  has BudgetStatus => (is => 'ro', isa => 'Str', required => 1);
  has EvaluationType => (is => 'ro', isa => 'Str');
  has Goal => (is => 'ro', isa => 'Paws::ApplicationSignals::Goal');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RequestBasedSli => (is => 'ro', isa => 'Paws::ApplicationSignals::RequestBasedServiceLevelIndicator');
  has Sli => (is => 'ro', isa => 'Paws::ApplicationSignals::ServiceLevelIndicator');
  has TotalBudgetRequests => (is => 'ro', isa => 'Int');
  has TotalBudgetSeconds => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals::ServiceLevelObjectiveBudgetReport

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationSignals::ServiceLevelObjectiveBudgetReport object:

  $service_obj->Method(Att1 => { Arn => $value, ..., TotalBudgetSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationSignals::ServiceLevelObjectiveBudgetReport object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A structure containing an SLO budget report that you have requested.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the SLO that this report is for.


=head2 Attainment => Num

A number between 0 and 100 that represents the success percentage of
your application compared to the goal set by the SLO.

If this is a period-based SLO, the number is the percentage of time
periods that the service has attained the SLO's attainment goal, as of
the time of the request.

If this is a request-based SLO, the number is the number of successful
requests divided by the number of total requests, multiplied by 100,
during the time range that you specified in your request.


=head2 BudgetRequestsRemaining => Int

This field is displayed only for request-based SLOs. It displays the
number of failed requests that can be tolerated before any more
successful requests occur, and still have the application meet its SLO
goal.

This number can go up and down between different reports, based on both
how many successful requests and how many failed requests occur in that
time.


=head2 BudgetSecondsRemaining => Int

The budget amount remaining before the SLO status becomes C<BREACHING>,
at the time specified in the C<Timestemp> parameter of the request. If
this value is negative, then the SLO is already in C<BREACHING> status.

This field is included only if the SLO is a period-based SLO.


=head2 B<REQUIRED> BudgetStatus => Str

The status of this SLO, as it relates to the error budget for the
entire time interval.

=over

=item *

C<OK> means that the SLO had remaining budget above the warning
threshold, as of the time that you specified in C<TimeStamp>.

=item *

C<WARNING> means that the SLO's remaining budget was below the warning
threshold, as of the time that you specified in C<TimeStamp>.

=item *

C<BREACHED> means that the SLO's budget was exhausted, as of the time
that you specified in C<TimeStamp>.

=item *

C<INSUFFICIENT_DATA> means that the specified start and end times were
before the SLO was created, or that attainment data is missing.

=back



=head2 EvaluationType => Str

Displays whether this budget report is for a period-based SLO or a
request-based SLO.


=head2 Goal => L<Paws::ApplicationSignals::Goal>




=head2 B<REQUIRED> Name => Str

The name of the SLO that this report is for.


=head2 RequestBasedSli => L<Paws::ApplicationSignals::RequestBasedServiceLevelIndicator>




=head2 Sli => L<Paws::ApplicationSignals::ServiceLevelIndicator>

A structure that contains information about the performance metric that
this SLO monitors.


=head2 TotalBudgetRequests => Int

This field is displayed only for request-based SLOs. It displays the
total number of failed requests that can be tolerated during the time
range between the start of the interval and the time stamp supplied in
the budget report request. It is based on the total number of requests
that occurred, and the percentage specified in the attainment goal. If
the number of failed requests matches this number or is higher, then
this SLO is currently breaching.

This number can go up and down between reports with different time
stamps, based on both how many total requests occur.


=head2 TotalBudgetSeconds => Int

The total number of seconds in the error budget for the interval. This
field is included only if the SLO is a period-based SLO.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationSignals>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

