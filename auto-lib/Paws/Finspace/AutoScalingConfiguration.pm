# Generated by default/object.tt
package Paws::Finspace::AutoScalingConfiguration;
  use Moose;
  has AutoScalingMetric => (is => 'ro', isa => 'Str', request_name => 'autoScalingMetric', traits => ['NameInRequest']);
  has MaxNodeCount => (is => 'ro', isa => 'Int', request_name => 'maxNodeCount', traits => ['NameInRequest']);
  has MetricTarget => (is => 'ro', isa => 'Num', request_name => 'metricTarget', traits => ['NameInRequest']);
  has MinNodeCount => (is => 'ro', isa => 'Int', request_name => 'minNodeCount', traits => ['NameInRequest']);
  has ScaleInCooldownSeconds => (is => 'ro', isa => 'Num', request_name => 'scaleInCooldownSeconds', traits => ['NameInRequest']);
  has ScaleOutCooldownSeconds => (is => 'ro', isa => 'Num', request_name => 'scaleOutCooldownSeconds', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::AutoScalingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Finspace::AutoScalingConfiguration object:

  $service_obj->Method(Att1 => { AutoScalingMetric => $value, ..., ScaleOutCooldownSeconds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Finspace::AutoScalingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoScalingMetric

=head1 DESCRIPTION

The configuration based on which FinSpace will scale in or scale out
nodes in your cluster.

=head1 ATTRIBUTES


=head2 AutoScalingMetric => Str

The metric your cluster will track in order to scale in and out. For
example, C<CPU_UTILIZATION_PERCENTAGE> is the average CPU usage across
all the nodes in a cluster.


=head2 MaxNodeCount => Int

The highest number of nodes to scale. This value cannot be greater than
5.


=head2 MetricTarget => Num

The desired value of the chosen C<autoScalingMetric>. When the metric
drops below this value, the cluster will scale in. When the metric goes
above this value, the cluster will scale out. You can set the target
value between 1 and 100 percent.


=head2 MinNodeCount => Int

The lowest number of nodes to scale. This value must be at least 1 and
less than the C<maxNodeCount>. If the nodes in a cluster belong to
multiple availability zones, then C<minNodeCount> must be at least 3.


=head2 ScaleInCooldownSeconds => Num

The duration in seconds that FinSpace will wait after a scale in event
before initiating another scaling event.


=head2 ScaleOutCooldownSeconds => Num

The duration in seconds that FinSpace will wait after a scale out event
before initiating another scaling event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

