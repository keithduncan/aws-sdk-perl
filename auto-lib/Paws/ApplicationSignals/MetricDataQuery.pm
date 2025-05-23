# Generated by default/object.tt
package Paws::ApplicationSignals::MetricDataQuery;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has Expression => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Label => (is => 'ro', isa => 'Str');
  has MetricStat => (is => 'ro', isa => 'Paws::ApplicationSignals::MetricStat');
  has Period => (is => 'ro', isa => 'Int');
  has ReturnData => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals::MetricDataQuery

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationSignals::MetricDataQuery object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., ReturnData => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationSignals::MetricDataQuery object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Use this structure to define a metric or metric math expression that
you want to use as for a service level objective.

Each C<MetricDataQuery> in the C<MetricDataQueries> array specifies
either a metric to retrieve, or a metric math expression to be
performed on retrieved metrics. A single C<MetricDataQueries> array can
include as many as 20 C<MetricDataQuery> structures in the array. The
20 structures can include as many as 10 structures that contain a
C<MetricStat> parameter to retrieve a metric, and as many as 10
structures that contain the C<Expression> parameter to perform a math
expression. Of those C<Expression> structures, exactly one must have
true as the value for C<ReturnData>. The result of this expression used
for the SLO.

For more information about metric math expressions, see CloudWatchUse
metric math
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html).

Within each C<MetricDataQuery> object, you must specify either
C<Expression> or C<MetricStat> but not both.

=head1 ATTRIBUTES


=head2 AccountId => Str

The ID of the account where this metric is located. If you are
performing this operation in a monitoring account, use this to specify
which source account to retrieve this metric from.


=head2 Expression => Str

This field can contain a metric math expression to be performed on the
other metrics that you are retrieving within this C<MetricDataQueries>
structure.

A math expression can use the C<Id> of the other metrics or queries to
refer to those metrics, and can also use the C<Id> of other expressions
to use the result of those expressions. For more information about
metric math expressions, see Metric Math Syntax and Functions
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax)
in the I<Amazon CloudWatch User Guide>.

Within each C<MetricDataQuery> object, you must specify either
C<Expression> or C<MetricStat> but not both.


=head2 B<REQUIRED> Id => Str

A short name used to tie this object to the results in the response.
This C<Id> must be unique within a C<MetricDataQueries> array. If you
are performing math expressions on this set of data, this name
represents that data and can serve as a variable in the metric math
expression. The valid characters are letters, numbers, and underscore.
The first character must be a lowercase letter.


=head2 Label => Str

A human-readable label for this metric or expression. This is
especially useful if this is an expression, so that you know what the
value represents. If the metric or expression is shown in a CloudWatch
dashboard widget, the label is shown. If C<Label> is omitted,
CloudWatch generates a default.

You can put dynamic expressions into a label, so that it is more
descriptive. For more information, see Using Dynamic Labels
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/graph-dynamic-labels.html).


=head2 MetricStat => L<Paws::ApplicationSignals::MetricStat>

A metric to be used directly for the SLO, or to be used in the math
expression that will be used for the SLO.

Within one C<MetricDataQuery> object, you must specify either
C<Expression> or C<MetricStat> but not both.


=head2 Period => Int

The granularity, in seconds, of the returned data points for this
metric. For metrics with regular resolution, a period can be as short
as one minute (60 seconds) and must be a multiple of 60. For
high-resolution metrics that are collected at intervals of less than
one minute, the period can be 1, 5, 10, 30, 60, or any multiple of 60.
High-resolution metrics are those metrics stored by a C<PutMetricData>
call that includes a C<StorageResolution> of 1 second.

If the C<StartTime> parameter specifies a time stamp that is greater
than 3 hours ago, you must specify the period as follows or no data
points in that time range is returned:

=over

=item *

Start time between 3 hours and 15 days ago - Use a multiple of 60
seconds (1 minute).

=item *

Start time between 15 and 63 days ago - Use a multiple of 300 seconds
(5 minutes).

=item *

Start time greater than 63 days ago - Use a multiple of 3600 seconds (1
hour).

=back



=head2 ReturnData => Bool

Use this only if you are using a metric math expression for the SLO.
Specify C<true> for C<ReturnData> for only the one expression result to
use as the alarm. For all other metrics and expressions in the same
C<CreateServiceLevelObjective> operation, specify C<ReturnData> as
C<false>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationSignals>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

