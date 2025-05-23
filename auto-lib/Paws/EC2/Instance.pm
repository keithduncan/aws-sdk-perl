package Paws::EC2::Instance;
  use Moose;
  has AmiLaunchIndex => (is => 'ro', isa => 'Int', request_name => 'amiLaunchIndex', traits => ['NameInRequest']);
  has Architecture => (is => 'ro', isa => 'Str', request_name => 'architecture', traits => ['NameInRequest']);
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceBlockDeviceMapping]', request_name => 'blockDeviceMapping', traits => ['NameInRequest']);
  has BootMode => (is => 'ro', isa => 'Str', request_name => 'bootMode', traits => ['NameInRequest']);
  has CapacityReservationId => (is => 'ro', isa => 'Str', request_name => 'capacityReservationId', traits => ['NameInRequest']);
  has CapacityReservationSpecification => (is => 'ro', isa => 'Paws::EC2::CapacityReservationSpecificationResponse', request_name => 'capacityReservationSpecification', traits => ['NameInRequest']);
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest']);
  has CpuOptions => (is => 'ro', isa => 'Paws::EC2::CpuOptions', request_name => 'cpuOptions', traits => ['NameInRequest']);
  has CurrentInstanceBootMode => (is => 'ro', isa => 'Str', request_name => 'currentInstanceBootMode', traits => ['NameInRequest']);
  has EbsOptimized => (is => 'ro', isa => 'Bool', request_name => 'ebsOptimized', traits => ['NameInRequest']);
  has ElasticGpuAssociations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ElasticGpuAssociation]', request_name => 'elasticGpuAssociationSet', traits => ['NameInRequest']);
  has ElasticInferenceAcceleratorAssociations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ElasticInferenceAcceleratorAssociation]', request_name => 'elasticInferenceAcceleratorAssociationSet', traits => ['NameInRequest']);
  has EnaSupport => (is => 'ro', isa => 'Bool', request_name => 'enaSupport', traits => ['NameInRequest']);
  has EnclaveOptions => (is => 'ro', isa => 'Paws::EC2::EnclaveOptions', request_name => 'enclaveOptions', traits => ['NameInRequest']);
  has HibernationOptions => (is => 'ro', isa => 'Paws::EC2::HibernationOptions', request_name => 'hibernationOptions', traits => ['NameInRequest']);
  has Hypervisor => (is => 'ro', isa => 'Str', request_name => 'hypervisor', traits => ['NameInRequest']);
  has IamInstanceProfile => (is => 'ro', isa => 'Paws::EC2::IamInstanceProfile', request_name => 'iamInstanceProfile', traits => ['NameInRequest']);
  has ImageId => (is => 'ro', isa => 'Str', request_name => 'imageId', traits => ['NameInRequest']);
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest']);
  has InstanceLifecycle => (is => 'ro', isa => 'Str', request_name => 'instanceLifecycle', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has Ipv6Address => (is => 'ro', isa => 'Str', request_name => 'ipv6Address', traits => ['NameInRequest']);
  has KernelId => (is => 'ro', isa => 'Str', request_name => 'kernelId', traits => ['NameInRequest']);
  has KeyName => (is => 'ro', isa => 'Str', request_name => 'keyName', traits => ['NameInRequest']);
  has LaunchTime => (is => 'ro', isa => 'Str', request_name => 'launchTime', traits => ['NameInRequest']);
  has Licenses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::LicenseConfiguration]', request_name => 'licenseSet', traits => ['NameInRequest']);
  has MaintenanceOptions => (is => 'ro', isa => 'Paws::EC2::InstanceMaintenanceOptions', request_name => 'maintenanceOptions', traits => ['NameInRequest']);
  has MetadataOptions => (is => 'ro', isa => 'Paws::EC2::InstanceMetadataOptionsResponse', request_name => 'metadataOptions', traits => ['NameInRequest']);
  has Monitoring => (is => 'ro', isa => 'Paws::EC2::Monitoring', request_name => 'monitoring', traits => ['NameInRequest']);
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceNetworkInterface]', request_name => 'networkInterfaceSet', traits => ['NameInRequest']);
  has NetworkPerformanceOptions => (is => 'ro', isa => 'Paws::EC2::InstanceNetworkPerformanceOptions', request_name => 'networkPerformanceOptions', traits => ['NameInRequest']);
  has Operator => (is => 'ro', isa => 'Paws::EC2::OperatorResponse', request_name => 'operator', traits => ['NameInRequest']);
  has OutpostArn => (is => 'ro', isa => 'Str', request_name => 'outpostArn', traits => ['NameInRequest']);
  has Placement => (is => 'ro', isa => 'Paws::EC2::Placement', request_name => 'placement', traits => ['NameInRequest']);
  has Platform => (is => 'ro', isa => 'Str', request_name => 'platform', traits => ['NameInRequest']);
  has PlatformDetails => (is => 'ro', isa => 'Str', request_name => 'platformDetails', traits => ['NameInRequest']);
  has PrivateDnsName => (is => 'ro', isa => 'Str', request_name => 'privateDnsName', traits => ['NameInRequest']);
  has PrivateDnsNameOptions => (is => 'ro', isa => 'Paws::EC2::PrivateDnsNameOptionsResponse', request_name => 'privateDnsNameOptions', traits => ['NameInRequest']);
  has PrivateIpAddress => (is => 'ro', isa => 'Str', request_name => 'privateIpAddress', traits => ['NameInRequest']);
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ProductCode]', request_name => 'productCodes', traits => ['NameInRequest']);
  has PublicDnsName => (is => 'ro', isa => 'Str', request_name => 'dnsName', traits => ['NameInRequest']);
  has PublicIpAddress => (is => 'ro', isa => 'Str', request_name => 'ipAddress', traits => ['NameInRequest']);
  has RamdiskId => (is => 'ro', isa => 'Str', request_name => 'ramdiskId', traits => ['NameInRequest']);
  has RootDeviceName => (is => 'ro', isa => 'Str', request_name => 'rootDeviceName', traits => ['NameInRequest']);
  has RootDeviceType => (is => 'ro', isa => 'Str', request_name => 'rootDeviceType', traits => ['NameInRequest']);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::GroupIdentifier]', request_name => 'groupSet', traits => ['NameInRequest']);
  has SourceDestCheck => (is => 'ro', isa => 'Bool', request_name => 'sourceDestCheck', traits => ['NameInRequest']);
  has SpotInstanceRequestId => (is => 'ro', isa => 'Str', request_name => 'spotInstanceRequestId', traits => ['NameInRequest']);
  has SriovNetSupport => (is => 'ro', isa => 'Str', request_name => 'sriovNetSupport', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Paws::EC2::InstanceState', request_name => 'instanceState', traits => ['NameInRequest']);
  has StateReason => (is => 'ro', isa => 'Paws::EC2::StateReason', request_name => 'stateReason', traits => ['NameInRequest']);
  has StateTransitionReason => (is => 'ro', isa => 'Str', request_name => 'reason', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has TpmSupport => (is => 'ro', isa => 'Str', request_name => 'tpmSupport', traits => ['NameInRequest']);
  has UsageOperation => (is => 'ro', isa => 'Str', request_name => 'usageOperation', traits => ['NameInRequest']);
  has UsageOperationUpdateTime => (is => 'ro', isa => 'Str', request_name => 'usageOperationUpdateTime', traits => ['NameInRequest']);
  has VirtualizationType => (is => 'ro', isa => 'Str', request_name => 'virtualizationType', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Instance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Instance object:

  $service_obj->Method(Att1 => { AmiLaunchIndex => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Instance object:

  $result = $service_obj->Method(...);
  $result->Att1->AmiLaunchIndex

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AmiLaunchIndex => Int

The AMI launch index, which can be used to find this instance in the
launch group.


=head2 Architecture => Str

The architecture of the image.


=head2 BlockDeviceMappings => ArrayRef[L<Paws::EC2::InstanceBlockDeviceMapping>]

Any block device mapping entries for the instance.


=head2 BootMode => Str

The boot mode that was specified by the AMI. If the value is
C<uefi-preferred>, the AMI supports both UEFI and Legacy BIOS. The
C<currentInstanceBootMode> parameter is the boot mode that is used to
boot the instance at launch or start.

The operating system contained in the AMI must be configured to support
the specified boot mode.

For more information, see Boot modes
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in
the I<Amazon EC2 User Guide>.


=head2 CapacityReservationId => Str

The ID of the Capacity Reservation.


=head2 CapacityReservationSpecification => L<Paws::EC2::CapacityReservationSpecificationResponse>

Information about the Capacity Reservation targeting option.


=head2 ClientToken => Str

The idempotency token you provided when you launched the instance, if
applicable.


=head2 CpuOptions => L<Paws::EC2::CpuOptions>

The CPU options for the instance.


=head2 CurrentInstanceBootMode => Str

The boot mode that is used to boot the instance at launch or start. For
more information, see Boot modes
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in
the I<Amazon EC2 User Guide>.


=head2 EbsOptimized => Bool

Indicates whether the instance is optimized for Amazon EBS I/O. This
optimization provides dedicated throughput to Amazon EBS and an
optimized configuration stack to provide optimal I/O performance. This
optimization isn't available with all instance types. Additional usage
charges apply when using an EBS Optimized instance.


=head2 ElasticGpuAssociations => ArrayRef[L<Paws::EC2::ElasticGpuAssociation>]

Deprecated.

Amazon Elastic Graphics reached end of life on January 8, 2024.


=head2 ElasticInferenceAcceleratorAssociations => ArrayRef[L<Paws::EC2::ElasticInferenceAcceleratorAssociation>]

Deprecated

Amazon Elastic Inference is no longer available.


=head2 EnaSupport => Bool

Specifies whether enhanced networking with ENA is enabled.


=head2 EnclaveOptions => L<Paws::EC2::EnclaveOptions>

Indicates whether the instance is enabled for Amazon Web Services Nitro
Enclaves.


=head2 HibernationOptions => L<Paws::EC2::HibernationOptions>

Indicates whether the instance is enabled for hibernation.


=head2 Hypervisor => Str

The hypervisor type of the instance. The value C<xen> is used for both
Xen and Nitro hypervisors.


=head2 IamInstanceProfile => L<Paws::EC2::IamInstanceProfile>

The IAM instance profile associated with the instance, if applicable.


=head2 ImageId => Str

The ID of the AMI used to launch the instance.


=head2 InstanceId => Str

The ID of the instance.


=head2 InstanceLifecycle => Str

Indicates whether this is a Spot Instance or a Scheduled Instance.


=head2 InstanceType => Str

The instance type.


=head2 Ipv6Address => Str

The IPv6 address assigned to the instance.


=head2 KernelId => Str

The kernel associated with this instance, if applicable.


=head2 KeyName => Str

The name of the key pair, if this instance was launched with an
associated key pair.


=head2 LaunchTime => Str

The time that the instance was last launched. To determine the time
that instance was first launched, see the attachment time for the
primary network interface.


=head2 Licenses => ArrayRef[L<Paws::EC2::LicenseConfiguration>]

The license configurations for the instance.


=head2 MaintenanceOptions => L<Paws::EC2::InstanceMaintenanceOptions>

Provides information on the recovery and maintenance options of your
instance.


=head2 MetadataOptions => L<Paws::EC2::InstanceMetadataOptionsResponse>

The metadata options for the instance.


=head2 Monitoring => L<Paws::EC2::Monitoring>

The monitoring for the instance.


=head2 NetworkInterfaces => ArrayRef[L<Paws::EC2::InstanceNetworkInterface>]

The network interfaces for the instance.


=head2 NetworkPerformanceOptions => L<Paws::EC2::InstanceNetworkPerformanceOptions>

Contains settings for the network performance options for your
instance.


=head2 Operator => L<Paws::EC2::OperatorResponse>

The service provider that manages the instance.


=head2 OutpostArn => Str

The Amazon Resource Name (ARN) of the Outpost.


=head2 Placement => L<Paws::EC2::Placement>

The location where the instance launched, if applicable.


=head2 Platform => Str

The platform. This value is C<windows> for Windows instances;
otherwise, it is empty.


=head2 PlatformDetails => Str

The platform details value for the instance. For more information, see
AMI billing information fields
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/billing-info-fields.html)
in the I<Amazon EC2 User Guide>.


=head2 PrivateDnsName => Str

[IPv4 only] The private DNS hostname name assigned to the instance.
This DNS hostname can only be used inside the Amazon EC2 network. This
name is not available until the instance enters the C<running> state.

The Amazon-provided DNS server resolves Amazon-provided private DNS
hostnames if you've enabled DNS resolution and DNS hostnames in your
VPC. If you are not using the Amazon-provided DNS server in your VPC,
your custom domain name servers must resolve the hostname as
appropriate.


=head2 PrivateDnsNameOptions => L<Paws::EC2::PrivateDnsNameOptionsResponse>

The options for the instance hostname.


=head2 PrivateIpAddress => Str

The private IPv4 address assigned to the instance.


=head2 ProductCodes => ArrayRef[L<Paws::EC2::ProductCode>]

The product codes attached to this instance, if applicable.


=head2 PublicDnsName => Str

[IPv4 only] The public DNS name assigned to the instance. This name is
not available until the instance enters the C<running> state. This name
is only available if you've enabled DNS hostnames for your VPC.


=head2 PublicIpAddress => Str

The public IPv4 address, or the Carrier IP address assigned to the
instance, if applicable.

A Carrier IP address only applies to an instance launched in a subnet
associated with a Wavelength Zone.


=head2 RamdiskId => Str

The RAM disk associated with this instance, if applicable.


=head2 RootDeviceName => Str

The device name of the root device volume (for example, C</dev/sda1>).


=head2 RootDeviceType => Str

The root device type used by the AMI. The AMI can use an EBS volume or
an instance store volume.


=head2 SecurityGroups => ArrayRef[L<Paws::EC2::GroupIdentifier>]

The security groups for the instance.


=head2 SourceDestCheck => Bool

Indicates whether source/destination checking is enabled.


=head2 SpotInstanceRequestId => Str

If the request is a Spot Instance request, the ID of the request.


=head2 SriovNetSupport => Str

Specifies whether enhanced networking with the Intel 82599 Virtual
Function interface is enabled.


=head2 State => L<Paws::EC2::InstanceState>

The current state of the instance.


=head2 StateReason => L<Paws::EC2::StateReason>

The reason for the most recent state transition.


=head2 StateTransitionReason => Str

The reason for the most recent state transition. This might be an empty
string.


=head2 SubnetId => Str

The ID of the subnet in which the instance is running.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Any tags assigned to the instance.


=head2 TpmSupport => Str

If the instance is configured for NitroTPM support, the value is
C<v2.0>. For more information, see NitroTPM
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html) in
the I<Amazon EC2 User Guide>.


=head2 UsageOperation => Str

The usage operation value for the instance. For more information, see
AMI billing information fields
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/billing-info-fields.html)
in the I<Amazon EC2 User Guide>.


=head2 UsageOperationUpdateTime => Str

The time that the usage operation was last updated.


=head2 VirtualizationType => Str

The virtualization type of the instance.


=head2 VpcId => Str

The ID of the VPC in which the instance is running.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
