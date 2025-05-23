# Generated by default/object.tt
package Paws::AutoScaling::LoadForecast;
  use Moose;
  has MetricSpecification => (is => 'ro', isa => 'Paws::AutoScaling::PredictiveScalingMetricSpecification', required => 1);
  has Timestamps => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Values => (is => 'ro', isa => 'ArrayRef[Num]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::LoadForecast

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::LoadForecast object:

  $service_obj->Method(Att1 => { MetricSpecification => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::LoadForecast object:

  $result = $service_obj->Method(...);
  $result->Att1->MetricSpecification

=head1 DESCRIPTION

A C<GetPredictiveScalingForecast> call returns the load forecast for a
predictive scaling policy. This structure includes the data points for
that load forecast, along with the timestamps of those data points and
the metric specification.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MetricSpecification => L<Paws::AutoScaling::PredictiveScalingMetricSpecification>

The metric specification for the load forecast.


=head2 B<REQUIRED> Timestamps => ArrayRef[Str|Undef]

The timestamps for the data points, in UTC format.


=head2 B<REQUIRED> Values => ArrayRef[Num]

The values of the data points.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

