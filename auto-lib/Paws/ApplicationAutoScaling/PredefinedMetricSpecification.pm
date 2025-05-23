# Generated by default/object.tt
package Paws::ApplicationAutoScaling::PredefinedMetricSpecification;
  use Moose;
  has PredefinedMetricType => (is => 'ro', isa => 'Str', required => 1);
  has ResourceLabel => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::PredefinedMetricSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationAutoScaling::PredefinedMetricSpecification object:

  $service_obj->Method(Att1 => { PredefinedMetricType => $value, ..., ResourceLabel => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationAutoScaling::PredefinedMetricSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->PredefinedMetricType

=head1 DESCRIPTION

Represents a predefined metric for a target tracking scaling policy to
use with Application Auto Scaling.

For more information, Predefined metrics for target tracking scaling
policies
(https://docs.aws.amazon.com/autoscaling/application/userguide/monitoring-cloudwatch.html#predefined-metrics)
in the I<Application Auto Scaling User Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PredefinedMetricType => Str

The metric type. The C<ALBRequestCountPerTarget> metric type applies
only to Spot Fleets and ECS services.


=head2 ResourceLabel => Str

Identifies the resource associated with the metric type. You can't
specify a resource label unless the metric type is
C<ALBRequestCountPerTarget> and there is a target group attached to the
Spot Fleet or ECS service.

You create the resource label by appending the final portion of the
load balancer ARN and the final portion of the target group ARN into a
single value, separated by a forward slash (/). The format of the
resource label is:

C<app/my-alb/778d41231b141a0f/targetgroup/my-alb-target-group/943f017f100becff>.

Where:

=over

=item *

app/E<lt>load-balancer-nameE<gt>/E<lt>load-balancer-idE<gt> is the
final portion of the load balancer ARN

=item *

targetgroup/E<lt>target-group-nameE<gt>/E<lt>target-group-idE<gt> is
the final portion of the target group ARN.

=back

To find the ARN for an Application Load Balancer, use the
DescribeLoadBalancers
(https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeLoadBalancers.html)
API operation. To find the ARN for the target group, use the
DescribeTargetGroups
(https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_DescribeTargetGroups.html)
API operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

