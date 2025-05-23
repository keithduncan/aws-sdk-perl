# Generated by default/object.tt
package Paws::MWAA::MetricDatum;
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Paws::MWAA::Dimension]');
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has StatisticValues => (is => 'ro', isa => 'Paws::MWAA::StatisticSet');
  has Timestamp => (is => 'ro', isa => 'Str', required => 1);
  has Unit => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Num');

1;

### main pod documentation begin ###

=head1 NAME

Paws::MWAA::MetricDatum

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MWAA::MetricDatum object:

  $service_obj->Method(Att1 => { Dimensions => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MWAA::MetricDatum object:

  $result = $service_obj->Method(...);
  $result->Att1->Dimensions

=head1 DESCRIPTION

B<Internal only>. Collects Apache Airflow metrics. To learn more about
the metrics published to Amazon CloudWatch, see Amazon MWAA performance
metrics in Amazon CloudWatch
(https://docs.aws.amazon.com/mwaa/latest/userguide/cw-metrics.html).

=head1 ATTRIBUTES


=head2 Dimensions => ArrayRef[L<Paws::MWAA::Dimension>]

B<Internal only>. The dimensions associated with the metric.


=head2 B<REQUIRED> MetricName => Str

B<Internal only>. The name of the metric.


=head2 StatisticValues => L<Paws::MWAA::StatisticSet>

B<Internal only>. The statistical values for the metric.


=head2 B<REQUIRED> Timestamp => Str

B<Internal only>. The time the metric data was received.


=head2 Unit => Str

B<Internal only>. The unit used to store the metric.


=head2 Value => Num

B<Internal only>. The value for the metric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MWAA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

