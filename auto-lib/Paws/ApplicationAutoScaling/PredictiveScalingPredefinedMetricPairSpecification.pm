# Generated by default/object.tt
package Paws::ApplicationAutoScaling::PredictiveScalingPredefinedMetricPairSpecification;
  use Moose;
  has PredefinedMetricType => (is => 'ro', isa => 'Str', required => 1);
  has ResourceLabel => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::PredictiveScalingPredefinedMetricPairSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationAutoScaling::PredictiveScalingPredefinedMetricPairSpecification object:

  $service_obj->Method(Att1 => { PredefinedMetricType => $value, ..., ResourceLabel => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationAutoScaling::PredictiveScalingPredefinedMetricPairSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->PredefinedMetricType

=head1 DESCRIPTION

Represents a metric pair for a predictive scaling policy.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PredefinedMetricType => Str

Indicates which metrics to use. There are two different types of
metrics for each metric type: one is a load metric and one is a scaling
metric.


=head2 ResourceLabel => Str

A label that uniquely identifies a specific target group from which to
determine the total and average request count.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

