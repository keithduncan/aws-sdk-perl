
package Paws::AutoScaling::DisableMetricsCollection;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Metrics => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableMetricsCollection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DisableMetricsCollection - Arguments for method DisableMetricsCollection on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisableMetricsCollection on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method DisableMetricsCollection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisableMetricsCollection.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
 # To disable metrics collection for an Auto Scaling group
 # This example disables collecting data for the GroupDesiredCapacity metric for
 # the specified Auto Scaling group.
    $autoscaling->DisableMetricsCollection(
      'AutoScalingGroupName' => 'my-auto-scaling-group',
      'Metrics'              => ['GroupDesiredCapacity']
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/DisableMetricsCollection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 Metrics => ArrayRef[Str|Undef]

Identifies the metrics to disable.

You can specify one or more of the following metrics:

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

If you omit this property, all metrics are disabled.

For more information, see Amazon CloudWatch metrics for Amazon EC2 Auto
Scaling
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-metrics.html)
in the I<Amazon EC2 Auto Scaling User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisableMetricsCollection in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

