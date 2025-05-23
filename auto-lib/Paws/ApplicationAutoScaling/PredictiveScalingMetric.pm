# Generated by default/object.tt
package Paws::ApplicationAutoScaling::PredictiveScalingMetric;
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationAutoScaling::PredictiveScalingMetricDimension]');
  has MetricName => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::PredictiveScalingMetric

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationAutoScaling::PredictiveScalingMetric object:

  $service_obj->Method(Att1 => { Dimensions => $value, ..., Namespace => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationAutoScaling::PredictiveScalingMetric object:

  $result = $service_obj->Method(...);
  $result->Att1->Dimensions

=head1 DESCRIPTION

Describes the scaling metric.

=head1 ATTRIBUTES


=head2 Dimensions => ArrayRef[L<Paws::ApplicationAutoScaling::PredictiveScalingMetricDimension>]

Describes the dimensions of the metric.


=head2 MetricName => Str

The name of the metric.


=head2 Namespace => Str

The namespace of the metric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

