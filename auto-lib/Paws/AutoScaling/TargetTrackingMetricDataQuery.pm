# Generated by default/object.tt
package Paws::AutoScaling::TargetTrackingMetricDataQuery;
  use Moose;
  has Expression => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Label => (is => 'ro', isa => 'Str');
  has MetricStat => (is => 'ro', isa => 'Paws::AutoScaling::TargetTrackingMetricStat');
  has Period => (is => 'ro', isa => 'Int');
  has ReturnData => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::TargetTrackingMetricDataQuery

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::TargetTrackingMetricDataQuery object:

  $service_obj->Method(Att1 => { Expression => $value, ..., ReturnData => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::TargetTrackingMetricDataQuery object:

  $result = $service_obj->Method(...);
  $result->Att1->Expression

=head1 DESCRIPTION

The metric data to return. Also defines whether this call is returning
data for one metric only, or whether it is performing a math expression
on the values of returned metric statistics to create a new time
series. A time series is a series of data points, each of which is
associated with a timestamp.

=head1 ATTRIBUTES


=head2 Expression => Str

The math expression to perform on the returned data, if this object is
performing a math expression. This expression can use the C<Id> of the
other metrics to refer to those metrics, and can also use the C<Id> of
other expressions to use the result of those expressions.

Conditional: Within each C<TargetTrackingMetricDataQuery> object, you
must specify either C<Expression> or C<MetricStat>, but not both.


=head2 B<REQUIRED> Id => Str

A short name that identifies the object's results in the response. This
name must be unique among all C<TargetTrackingMetricDataQuery> objects
specified for a single scaling policy. If you are performing math
expressions on this set of data, this name represents that data and can
serve as a variable in the mathematical expression. The valid
characters are letters, numbers, and underscores. The first character
must be a lowercase letter.


=head2 Label => Str

A human-readable label for this metric or expression. This is
especially useful if this is a math expression, so that you know what
the value represents.


=head2 MetricStat => L<Paws::AutoScaling::TargetTrackingMetricStat>

Information about the metric data to return.

Conditional: Within each C<TargetTrackingMetricDataQuery> object, you
must specify either C<Expression> or C<MetricStat>, but not both.


=head2 Period => Int

The period of the metric in seconds. The default value is 60. Accepted
values are 10, 30, and 60. For high resolution metric, set the value to
less than 60. For more information, see Create a target tracking policy
using high-resolution metrics for faster response
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/policy-creating-high-resolution-metrics.html).


=head2 ReturnData => Bool

Indicates whether to return the timestamps and raw data values of this
metric.

If you use any math expressions, specify C<true> for this value for
only the final math expression that the metric specification is based
on. You must specify C<false> for C<ReturnData> for all the other
metrics and expressions used in the metric specification.

If you are only retrieving metrics and not performing any math
expressions, do not specify anything for C<ReturnData>. This sets it to
its default (C<true>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

