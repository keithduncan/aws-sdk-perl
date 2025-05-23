# Generated by default/object.tt
package Paws::AutoScaling::EnabledMetric;
  use Moose;
  has Granularity => (is => 'ro', isa => 'Str');
  has Metric => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::EnabledMetric

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::EnabledMetric object:

  $service_obj->Method(Att1 => { Granularity => $value, ..., Metric => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::EnabledMetric object:

  $result = $service_obj->Method(...);
  $result->Att1->Granularity

=head1 DESCRIPTION

Describes an enabled Auto Scaling group metric.

=head1 ATTRIBUTES


=head2 Granularity => Str

The granularity of the metric. The only valid value is C<1Minute>.


=head2 Metric => Str

One of the following metrics:

=over

=item *

C<GroupMinSize>

=item *

C<GroupMaxSize>

=item *

C<GroupDesiredCapacity>

=item *

C<GroupInServiceInstances>

=item *

C<GroupPendingInstances>

=item *

C<GroupStandbyInstances>

=item *

C<GroupTerminatingInstances>

=item *

C<GroupTotalInstances>

=item *

C<GroupInServiceCapacity>

=item *

C<GroupPendingCapacity>

=item *

C<GroupStandbyCapacity>

=item *

C<GroupTerminatingCapacity>

=item *

C<GroupTotalCapacity>

=item *

C<WarmPoolDesiredCapacity>

=item *

C<WarmPoolWarmedCapacity>

=item *

C<WarmPoolPendingCapacity>

=item *

C<WarmPoolTerminatingCapacity>

=item *

C<WarmPoolTotalCapacity>

=item *

C<GroupAndWarmPoolDesiredCapacity>

=item *

C<GroupAndWarmPoolTotalCapacity>

=back

For more information, see Amazon CloudWatch metrics for Amazon EC2 Auto
Scaling
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-metrics.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

