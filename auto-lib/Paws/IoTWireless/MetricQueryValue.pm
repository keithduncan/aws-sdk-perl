# Generated by default/object.tt
package Paws::IoTWireless::MetricQueryValue;
  use Moose;
  has Avg => (is => 'ro', isa => 'Num');
  has Max => (is => 'ro', isa => 'Num');
  has Min => (is => 'ro', isa => 'Num');
  has P90 => (is => 'ro', isa => 'Num');
  has Std => (is => 'ro', isa => 'Num');
  has Sum => (is => 'ro', isa => 'Num');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::MetricQueryValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTWireless::MetricQueryValue object:

  $service_obj->Method(Att1 => { Avg => $value, ..., Sum => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTWireless::MetricQueryValue object:

  $result = $service_obj->Method(...);
  $result->Att1->Avg

=head1 DESCRIPTION

The aggregated values of the metric.

=head1 ATTRIBUTES


=head2 Avg => Num

The average of the values of all data points collected during the
aggregation period.


=head2 Max => Num

The maximum of the values of all the data points collected during the
aggregation period.


=head2 Min => Num

The minimum of the values of all data points collected during the
aggregation period.


=head2 P90 => Num

The 90th percentile of the values of all data points collected during
the aggregation period.


=head2 Std => Num

The standard deviation of the values of all data points collected
during the aggregation period.


=head2 Sum => Num

The sum of the values of all data points collected during the
aggregation period.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

