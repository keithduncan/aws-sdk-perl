# Generated by default/object.tt
package Paws::AutoScaling::AutoScalingGroup;
  use Moose;
  has AutoScalingGroupARN => (is => 'ro', isa => 'Str');
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has AvailabilityZoneDistribution => (is => 'ro', isa => 'Paws::AutoScaling::AvailabilityZoneDistribution');
  has AvailabilityZoneImpairmentPolicy => (is => 'ro', isa => 'Paws::AutoScaling::AvailabilityZoneImpairmentPolicy');
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has CapacityRebalance => (is => 'ro', isa => 'Bool');
  has CapacityReservationSpecification => (is => 'ro', isa => 'Paws::AutoScaling::CapacityReservationSpecification');
  has Context => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str', required => 1);
  has DefaultCooldown => (is => 'ro', isa => 'Int', required => 1);
  has DefaultInstanceWarmup => (is => 'ro', isa => 'Int');
  has DesiredCapacity => (is => 'ro', isa => 'Int', required => 1);
  has DesiredCapacityType => (is => 'ro', isa => 'Str');
  has EnabledMetrics => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::EnabledMetric]');
  has HealthCheckGracePeriod => (is => 'ro', isa => 'Int');
  has HealthCheckType => (is => 'ro', isa => 'Str', required => 1);
  has InstanceMaintenancePolicy => (is => 'ro', isa => 'Paws::AutoScaling::InstanceMaintenancePolicy');
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::Instance]');
  has LaunchConfigurationName => (is => 'ro', isa => 'Str');
  has LaunchTemplate => (is => 'ro', isa => 'Paws::AutoScaling::LaunchTemplateSpecification');
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxInstanceLifetime => (is => 'ro', isa => 'Int');
  has MaxSize => (is => 'ro', isa => 'Int', required => 1);
  has MinSize => (is => 'ro', isa => 'Int', required => 1);
  has MixedInstancesPolicy => (is => 'ro', isa => 'Paws::AutoScaling::MixedInstancesPolicy');
  has NewInstancesProtectedFromScaleIn => (is => 'ro', isa => 'Bool');
  has PlacementGroup => (is => 'ro', isa => 'Str');
  has PredictedCapacity => (is => 'ro', isa => 'Int');
  has ServiceLinkedRoleARN => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SuspendedProcesses => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::SuspendedProcess]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::TagDescription]');
  has TargetGroupARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TerminationPolicies => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TrafficSources => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::TrafficSourceIdentifier]');
  has VPCZoneIdentifier => (is => 'ro', isa => 'Str');
  has WarmPoolConfiguration => (is => 'ro', isa => 'Paws::AutoScaling::WarmPoolConfiguration');
  has WarmPoolSize => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::AutoScalingGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::AutoScalingGroup object:

  $service_obj->Method(Att1 => { AutoScalingGroupARN => $value, ..., WarmPoolSize => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::AutoScalingGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoScalingGroupARN

=head1 DESCRIPTION

Describes an Auto Scaling group.

=head1 ATTRIBUTES


=head2 AutoScalingGroupARN => Str

The Amazon Resource Name (ARN) of the Auto Scaling group.


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.


=head2 AvailabilityZoneDistribution => L<Paws::AutoScaling::AvailabilityZoneDistribution>

The instance capacity distribution across Availability Zones.


=head2 AvailabilityZoneImpairmentPolicy => L<Paws::AutoScaling::AvailabilityZoneImpairmentPolicy>

The Availability Zone impairment policy.


=head2 B<REQUIRED> AvailabilityZones => ArrayRef[Str|Undef]

One or more Availability Zones for the group.


=head2 CapacityRebalance => Bool

Indicates whether Capacity Rebalancing is enabled.


=head2 CapacityReservationSpecification => L<Paws::AutoScaling::CapacityReservationSpecification>

The capacity reservation specification.


=head2 Context => Str

Reserved.


=head2 B<REQUIRED> CreatedTime => Str

The date and time the group was created.


=head2 B<REQUIRED> DefaultCooldown => Int

The duration of the default cooldown period, in seconds.


=head2 DefaultInstanceWarmup => Int

The duration of the default instance warmup, in seconds.


=head2 B<REQUIRED> DesiredCapacity => Int

The desired size of the group.


=head2 DesiredCapacityType => Str

The unit of measurement for the value specified for desired capacity.
Amazon EC2 Auto Scaling supports C<DesiredCapacityType> for
attribute-based instance type selection only.


=head2 EnabledMetrics => ArrayRef[L<Paws::AutoScaling::EnabledMetric>]

The metrics enabled for the group.


=head2 HealthCheckGracePeriod => Int

The duration of the health check grace period, in seconds.


=head2 B<REQUIRED> HealthCheckType => Str

A comma-separated value string of one or more health check types.


=head2 InstanceMaintenancePolicy => L<Paws::AutoScaling::InstanceMaintenancePolicy>

An instance maintenance policy.


=head2 Instances => ArrayRef[L<Paws::AutoScaling::Instance>]

The EC2 instances associated with the group.


=head2 LaunchConfigurationName => Str

The name of the associated launch configuration.


=head2 LaunchTemplate => L<Paws::AutoScaling::LaunchTemplateSpecification>

The launch template for the group.


=head2 LoadBalancerNames => ArrayRef[Str|Undef]

One or more load balancers associated with the group.


=head2 MaxInstanceLifetime => Int

The maximum amount of time, in seconds, that an instance can be in
service.

Valid Range: Minimum value of 0.


=head2 B<REQUIRED> MaxSize => Int

The maximum size of the group.


=head2 B<REQUIRED> MinSize => Int

The minimum size of the group.


=head2 MixedInstancesPolicy => L<Paws::AutoScaling::MixedInstancesPolicy>

The mixed instances policy for the group.


=head2 NewInstancesProtectedFromScaleIn => Bool

Indicates whether newly launched instances are protected from
termination by Amazon EC2 Auto Scaling when scaling in. For more
information about preventing instances from terminating on scale in,
see Use instance scale-in protection
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-instance-protection.html)
in the I<Amazon EC2 Auto Scaling User Guide>.


=head2 PlacementGroup => Str

The name of the placement group into which to launch your instances, if
any.


=head2 PredictedCapacity => Int

The predicted capacity of the group when it has a predictive scaling
policy.


=head2 ServiceLinkedRoleARN => Str

The Amazon Resource Name (ARN) of the service-linked role that the Auto
Scaling group uses to call other Amazon Web Services on your behalf.


=head2 Status => Str

The current state of the group when the DeleteAutoScalingGroup
(https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_DeleteAutoScalingGroup.html)
operation is in progress.


=head2 SuspendedProcesses => ArrayRef[L<Paws::AutoScaling::SuspendedProcess>]

The suspended processes associated with the group.


=head2 Tags => ArrayRef[L<Paws::AutoScaling::TagDescription>]

The tags for the group.


=head2 TargetGroupARNs => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of the target groups for your load
balancer.


=head2 TerminationPolicies => ArrayRef[Str|Undef]

The termination policies for the group.


=head2 TrafficSources => ArrayRef[L<Paws::AutoScaling::TrafficSourceIdentifier>]

The traffic sources associated with this Auto Scaling group.


=head2 VPCZoneIdentifier => Str

One or more subnet IDs, if applicable, separated by commas.


=head2 WarmPoolConfiguration => L<Paws::AutoScaling::WarmPoolConfiguration>

The warm pool for the group.


=head2 WarmPoolSize => Int

The current size of the warm pool.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

