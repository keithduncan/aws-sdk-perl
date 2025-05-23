package Paws::EC2::SpotFleetRequestConfigData;
  use Moose;
  has AllocationStrategy => (is => 'ro', isa => 'Str', request_name => 'allocationStrategy', traits => ['NameInRequest']);
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest']);
  has Context => (is => 'ro', isa => 'Str', request_name => 'context', traits => ['NameInRequest']);
  has ExcessCapacityTerminationPolicy => (is => 'ro', isa => 'Str', request_name => 'excessCapacityTerminationPolicy', traits => ['NameInRequest']);
  has FulfilledCapacity => (is => 'ro', isa => 'Num', request_name => 'fulfilledCapacity', traits => ['NameInRequest']);
  has IamFleetRole => (is => 'ro', isa => 'Str', request_name => 'iamFleetRole', traits => ['NameInRequest'], required => 1);
  has InstanceInterruptionBehavior => (is => 'ro', isa => 'Str', request_name => 'instanceInterruptionBehavior', traits => ['NameInRequest']);
  has InstancePoolsToUseCount => (is => 'ro', isa => 'Int', request_name => 'instancePoolsToUseCount', traits => ['NameInRequest']);
  has LaunchSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SpotFleetLaunchSpecification]', request_name => 'launchSpecifications', traits => ['NameInRequest']);
  has LaunchTemplateConfigs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LaunchTemplateConfig]', request_name => 'launchTemplateConfigs', traits => ['NameInRequest']);
  has LoadBalancersConfig => (is => 'ro', isa => 'Paws::EC2::LoadBalancersConfig', request_name => 'loadBalancersConfig', traits => ['NameInRequest']);
  has OnDemandAllocationStrategy => (is => 'ro', isa => 'Str', request_name => 'onDemandAllocationStrategy', traits => ['NameInRequest']);
  has OnDemandFulfilledCapacity => (is => 'ro', isa => 'Num', request_name => 'onDemandFulfilledCapacity', traits => ['NameInRequest']);
  has OnDemandMaxTotalPrice => (is => 'ro', isa => 'Str', request_name => 'onDemandMaxTotalPrice', traits => ['NameInRequest']);
  has OnDemandTargetCapacity => (is => 'ro', isa => 'Int', request_name => 'onDemandTargetCapacity', traits => ['NameInRequest']);
  has ReplaceUnhealthyInstances => (is => 'ro', isa => 'Bool', request_name => 'replaceUnhealthyInstances', traits => ['NameInRequest']);
  has SpotMaintenanceStrategies => (is => 'ro', isa => 'Paws::EC2::SpotMaintenanceStrategies', request_name => 'spotMaintenanceStrategies', traits => ['NameInRequest']);
  has SpotMaxTotalPrice => (is => 'ro', isa => 'Str', request_name => 'spotMaxTotalPrice', traits => ['NameInRequest']);
  has SpotPrice => (is => 'ro', isa => 'Str', request_name => 'spotPrice', traits => ['NameInRequest']);
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', request_name => 'TagSpecification', traits => ['NameInRequest']);
  has TargetCapacity => (is => 'ro', isa => 'Int', request_name => 'targetCapacity', traits => ['NameInRequest'], required => 1);
  has TargetCapacityUnitType => (is => 'ro', isa => 'Str', request_name => 'targetCapacityUnitType', traits => ['NameInRequest']);
  has TerminateInstancesWithExpiration => (is => 'ro', isa => 'Bool', request_name => 'terminateInstancesWithExpiration', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
  has ValidFrom => (is => 'ro', isa => 'Str', request_name => 'validFrom', traits => ['NameInRequest']);
  has ValidUntil => (is => 'ro', isa => 'Str', request_name => 'validUntil', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SpotFleetRequestConfigData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SpotFleetRequestConfigData object:

  $service_obj->Method(Att1 => { AllocationStrategy => $value, ..., ValidUntil => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SpotFleetRequestConfigData object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocationStrategy

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AllocationStrategy => Str

The strategy that determines how to allocate the target Spot Instance
capacity across the Spot Instance pools specified by the Spot Fleet
launch configuration. For more information, see Allocation strategies
for Spot Instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-allocation-strategy.html)
in the I<Amazon EC2 User Guide>.

=over

=item priceCapacityOptimized (recommended)

Spot Fleet identifies the pools with the highest capacity availability
for the number of instances that are launching. This means that we will
request Spot Instances from the pools that we believe have the lowest
chance of interruption in the near term. Spot Fleet then requests Spot
Instances from the lowest priced of these pools.

=item capacityOptimized

Spot Fleet identifies the pools with the highest capacity availability
for the number of instances that are launching. This means that we will
request Spot Instances from the pools that we believe have the lowest
chance of interruption in the near term. To give certain instance types
a higher chance of launching first, use
C<capacityOptimizedPrioritized>. Set a priority for each instance type
by using the C<Priority> parameter for C<LaunchTemplateOverrides>. You
can assign the same priority to different C<LaunchTemplateOverrides>.
EC2 implements the priorities on a best-effort basis, but optimizes for
capacity first. C<capacityOptimizedPrioritized> is supported only if
your Spot Fleet uses a launch template. Note that if the
C<OnDemandAllocationStrategy> is set to C<prioritized>, the same
priority is applied when fulfilling On-Demand capacity.

=item diversified

Spot Fleet requests instances from all of the Spot Instance pools that
you specify.

=item lowestPrice (not recommended)

We don't recommend the C<lowestPrice> allocation strategy because it
has the highest risk of interruption for your Spot Instances.

Spot Fleet requests instances from the lowest priced Spot Instance pool
that has available capacity. If the lowest priced pool doesn't have
available capacity, the Spot Instances come from the next lowest priced
pool that has available capacity. If a pool runs out of capacity before
fulfilling your desired capacity, Spot Fleet will continue to fulfill
your request by drawing from the next lowest priced pool. To ensure
that your desired capacity is met, you might receive Spot Instances
from several pools. Because this strategy only considers instance price
and not capacity availability, it might lead to high interruption
rates.

=back

Default: C<lowestPrice>


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of your listings. This helps to avoid duplicate listings.
For more information, see Ensuring Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


=head2 Context => Str

Reserved.


=head2 ExcessCapacityTerminationPolicy => Str

Indicates whether running instances should be terminated if you
decrease the target capacity of the Spot Fleet request below the
current size of the Spot Fleet.

Supported only for fleets of type C<maintain>.


=head2 FulfilledCapacity => Num

The number of units fulfilled by this request compared to the set
target capacity. You cannot set this value.


=head2 B<REQUIRED> IamFleetRole => Str

The Amazon Resource Name (ARN) of an Identity and Access Management
(IAM) role that grants the Spot Fleet the permission to request,
launch, terminate, and tag instances on your behalf. For more
information, see Spot Fleet prerequisites
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-requests.html#spot-fleet-prerequisites)
in the I<Amazon EC2 User Guide>. Spot Fleet can terminate Spot
Instances on your behalf when you cancel its Spot Fleet request using
CancelSpotFleetRequests
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CancelSpotFleetRequests)
or when the Spot Fleet request expires, if you set
C<TerminateInstancesWithExpiration>.


=head2 InstanceInterruptionBehavior => Str

The behavior when a Spot Instance is interrupted. The default is
C<terminate>.


=head2 InstancePoolsToUseCount => Int

The number of Spot pools across which to allocate your target Spot
capacity. Valid only when Spot B<AllocationStrategy> is set to
C<lowest-price>. Spot Fleet selects the cheapest Spot pools and evenly
allocates your target Spot capacity across the number of Spot pools
that you specify.

Note that Spot Fleet attempts to draw Spot Instances from the number of
pools that you specify on a best effort basis. If a pool runs out of
Spot capacity before fulfilling your target capacity, Spot Fleet will
continue to fulfill your request by drawing from the next cheapest
pool. To ensure that your target capacity is met, you might receive
Spot Instances from more than the number of pools that you specified.
Similarly, if most of the pools have no Spot capacity, you might
receive your full target capacity from fewer than the number of pools
that you specified.


=head2 LaunchSpecifications => ArrayRef[L<Paws::EC2::SpotFleetLaunchSpecification>]

The launch specifications for the Spot Fleet request. If you specify
C<LaunchSpecifications>, you can't specify C<LaunchTemplateConfigs>. If
you include On-Demand capacity in your request, you must use
C<LaunchTemplateConfigs>.

If an AMI specified in a launch specification is deregistered or
disabled, no new instances can be launched from the AMI. For fleets of
type C<maintain>, the target capacity will not be maintained.


=head2 LaunchTemplateConfigs => ArrayRef[L<Paws::EC2::LaunchTemplateConfig>]

The launch template and overrides. If you specify
C<LaunchTemplateConfigs>, you can't specify C<LaunchSpecifications>. If
you include On-Demand capacity in your request, you must use
C<LaunchTemplateConfigs>.


=head2 LoadBalancersConfig => L<Paws::EC2::LoadBalancersConfig>

One or more Classic Load Balancers and target groups to attach to the
Spot Fleet request. Spot Fleet registers the running Spot Instances
with the specified Classic Load Balancers and target groups.

With Network Load Balancers, Spot Fleet cannot register instances that
have the following instance types: C1, CC1, CC2, CG1, CG2, CR1, CS1,
G1, G2, HI1, HS1, M1, M2, M3, and T1.


=head2 OnDemandAllocationStrategy => Str

The order of the launch template overrides to use in fulfilling
On-Demand capacity. If you specify C<lowestPrice>, Spot Fleet uses
price to determine the order, launching the lowest price first. If you
specify C<prioritized>, Spot Fleet uses the priority that you assign to
each Spot Fleet launch template override, launching the highest
priority first. If you do not specify a value, Spot Fleet defaults to
C<lowestPrice>.


=head2 OnDemandFulfilledCapacity => Num

The number of On-Demand units fulfilled by this request compared to the
set target On-Demand capacity.


=head2 OnDemandMaxTotalPrice => Str

The maximum amount per hour for On-Demand Instances that you're willing
to pay. You can use the C<onDemandMaxTotalPrice> parameter, the
C<spotMaxTotalPrice> parameter, or both parameters to ensure that your
fleet cost does not exceed your budget. If you set a maximum price per
hour for the On-Demand Instances and Spot Instances in your request,
Spot Fleet will launch instances until it reaches the maximum amount
you're willing to pay. When the maximum amount you're willing to pay is
reached, the fleet stops launching instances even if it hasnE<rsquo>t
met the target capacity.

If your fleet includes T instances that are configured as C<unlimited>,
and if their average CPU usage exceeds the baseline utilization, you
will incur a charge for surplus credits. The C<onDemandMaxTotalPrice>
does not account for surplus credits, and, if you use surplus credits,
your final cost might be higher than what you specified for
C<onDemandMaxTotalPrice>. For more information, see Surplus credits can
incur charges
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances-unlimited-mode-concepts.html#unlimited-mode-surplus-credits)
in the I<Amazon EC2 User Guide>.


=head2 OnDemandTargetCapacity => Int

The number of On-Demand units to request. You can choose to set the
target capacity in terms of instances or a performance characteristic
that is important to your application workload, such as vCPUs, memory,
or I/O. If the request type is C<maintain>, you can specify a target
capacity of 0 and add capacity later.


=head2 ReplaceUnhealthyInstances => Bool

Indicates whether Spot Fleet should replace unhealthy instances.


=head2 SpotMaintenanceStrategies => L<Paws::EC2::SpotMaintenanceStrategies>

The strategies for managing your Spot Instances that are at an elevated
risk of being interrupted.


=head2 SpotMaxTotalPrice => Str

The maximum amount per hour for Spot Instances that you're willing to
pay. You can use the C<spotMaxTotalPrice> parameter, the
C<onDemandMaxTotalPrice> parameter, or both parameters to ensure that
your fleet cost does not exceed your budget. If you set a maximum price
per hour for the On-Demand Instances and Spot Instances in your
request, Spot Fleet will launch instances until it reaches the maximum
amount you're willing to pay. When the maximum amount you're willing to
pay is reached, the fleet stops launching instances even if it
hasnE<rsquo>t met the target capacity.

If your fleet includes T instances that are configured as C<unlimited>,
and if their average CPU usage exceeds the baseline utilization, you
will incur a charge for surplus credits. The C<spotMaxTotalPrice> does
not account for surplus credits, and, if you use surplus credits, your
final cost might be higher than what you specified for
C<spotMaxTotalPrice>. For more information, see Surplus credits can
incur charges
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances-unlimited-mode-concepts.html#unlimited-mode-surplus-credits)
in the I<Amazon EC2 User Guide>.


=head2 SpotPrice => Str

The maximum price per unit hour that you are willing to pay for a Spot
Instance. We do not recommend using this parameter because it can lead
to increased interruptions. If you do not specify this parameter, you
will pay the current Spot price.

If you specify a maximum price, your instances will be interrupted more
frequently than if you do not specify this parameter.


=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The key-value pair for tagging the Spot Fleet request on creation. The
value for C<ResourceType> must be C<spot-fleet-request>, otherwise the
Spot Fleet request fails. To tag instances at launch, specify the tags
in the launch template
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#create-launch-template)
(valid only if you use C<LaunchTemplateConfigs>) or in the C<
SpotFleetTagSpecification
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SpotFleetTagSpecification.html)
> (valid only if you use C<LaunchSpecifications>). For information
about tagging after launch, see Tag your resources
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-resources).


=head2 B<REQUIRED> TargetCapacity => Int

The number of units to request for the Spot Fleet. You can choose to
set the target capacity in terms of instances or a performance
characteristic that is important to your application workload, such as
vCPUs, memory, or I/O. If the request type is C<maintain>, you can
specify a target capacity of 0 and add capacity later.


=head2 TargetCapacityUnitType => Str

The unit for the target capacity. You can specify this parameter only
when using attribute-based instance type selection.

Default: C<units> (the number of instances)


=head2 TerminateInstancesWithExpiration => Bool

Indicates whether running Spot Instances are terminated when the Spot
Fleet request expires.


=head2 Type => Str

The type of request. Indicates whether the Spot Fleet only requests the
target capacity or also attempts to maintain it. When this value is
C<request>, the Spot Fleet only places the required requests. It does
not attempt to replenish Spot Instances if capacity is diminished, nor
does it submit requests in alternative Spot pools if capacity is not
available. When this value is C<maintain>, the Spot Fleet maintains the
target capacity. The Spot Fleet places the required requests to meet
capacity and automatically replenishes any interrupted instances.
Default: C<maintain>. C<instant> is listed but is not used by Spot
Fleet.


=head2 ValidFrom => Str

The start date and time of the request, in UTC format
(I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z). By default, Amazon EC2 starts
fulfilling the request immediately.


=head2 ValidUntil => Str

The end date and time of the request, in UTC format
(I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z). After the end date and time,
no new Spot Instance requests are placed or able to fulfill the
request. If no value is specified, the Spot Fleet request remains until
you cancel it.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
