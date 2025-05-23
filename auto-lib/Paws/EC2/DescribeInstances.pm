
package Paws::EC2::DescribeInstances;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'InstanceId' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeInstances - Arguments for method DescribeInstances on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInstances on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInstances.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To describe an Amazon EC2 instance
    # This example describes the specified instance.
    my $DescribeInstancesResult =
      $ec2->DescribeInstances( 'InstanceIds' => ['i-1234567890abcdef0'] );

    # To describe the instances with a specific instance type
    # This example describes the instances with the t2.micro instance type.
    my $DescribeInstancesResult = $ec2->DescribeInstances(
      'Filters' => [

        {
          'Name'   => 'instance-type',
          'Values' => ['t2.micro']
        }
      ]
    );

    # To describe the instances with a specific tag
    # This example describes the instances with the Purpose=test tag.
    my $DescribeInstancesResult = $ec2->DescribeInstances(
      'Filters' => [

        {
          'Name'   => 'tag:Purpose',
          'Values' => ['test']
        }
      ]
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeInstances>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the operation,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

The filters.

=over

=item *

C<affinity> - The affinity setting for an instance running on a
Dedicated Host (C<default> | C<host>).

=item *

C<architecture> - The instance architecture (C<i386> | C<x86_64> |
C<arm64>).

=item *

C<availability-zone> - The Availability Zone of the instance.

=item *

C<block-device-mapping.attach-time> - The attach time for an EBS volume
mapped to the instance, for example, C<2022-09-15T17:15:20.000Z>.

=item *

C<block-device-mapping.delete-on-termination> - A Boolean that
indicates whether the EBS volume is deleted on instance termination.

=item *

C<block-device-mapping.device-name> - The device name specified in the
block device mapping (for example, C</dev/sdh> or C<xvdh>).

=item *

C<block-device-mapping.status> - The status for the EBS volume
(C<attaching> | C<attached> | C<detaching> | C<detached>).

=item *

C<block-device-mapping.volume-id> - The volume ID of the EBS volume.

=item *

C<boot-mode> - The boot mode that was specified by the AMI
(C<legacy-bios> | C<uefi> | C<uefi-preferred>).

=item *

C<capacity-reservation-id> - The ID of the Capacity Reservation into
which the instance was launched.

=item *

C<capacity-reservation-specification.capacity-reservation-preference> -
The instance's Capacity Reservation preference (C<open> | C<none>).

=item *

C<capacity-reservation-specification.capacity-reservation-target.capacity-reservation-id>
- The ID of the targeted Capacity Reservation.

=item *

C<capacity-reservation-specification.capacity-reservation-target.capacity-reservation-resource-group-arn>
- The ARN of the targeted Capacity Reservation group.

=item *

C<client-token> - The idempotency token you provided when you launched
the instance.

=item *

C<current-instance-boot-mode> - The boot mode that is used to launch
the instance at launch or start (C<legacy-bios> | C<uefi>).

=item *

C<dns-name> - The public DNS name of the instance.

=item *

C<ebs-optimized> - A Boolean that indicates whether the instance is
optimized for Amazon EBS I/O.

=item *

C<ena-support> - A Boolean that indicates whether the instance is
enabled for enhanced networking with ENA.

=item *

C<enclave-options.enabled> - A Boolean that indicates whether the
instance is enabled for Amazon Web Services Nitro Enclaves.

=item *

C<hibernation-options.configured> - A Boolean that indicates whether
the instance is enabled for hibernation. A value of C<true> means that
the instance is enabled for hibernation.

=item *

C<host-id> - The ID of the Dedicated Host on which the instance is
running, if applicable.

=item *

C<hypervisor> - The hypervisor type of the instance (C<ovm> | C<xen>).
The value C<xen> is used for both Xen and Nitro hypervisors.

=item *

C<iam-instance-profile.arn> - The instance profile associated with the
instance. Specified as an ARN.

=item *

C<iam-instance-profile.id> - The instance profile associated with the
instance. Specified as an ID.

=item *

C<image-id> - The ID of the image used to launch the instance.

=item *

C<instance-id> - The ID of the instance.

=item *

C<instance-lifecycle> - Indicates whether this is a Spot Instance, a
Scheduled Instance, or a Capacity Block (C<spot> | C<scheduled> |
C<capacity-block>).

=item *

C<instance-state-code> - The state of the instance, as a 16-bit
unsigned integer. The high byte is used for internal purposes and
should be ignored. The low byte is set based on the state represented.
The valid values are: 0 (pending), 16 (running), 32 (shutting-down), 48
(terminated), 64 (stopping), and 80 (stopped).

=item *

C<instance-state-name> - The state of the instance (C<pending> |
C<running> | C<shutting-down> | C<terminated> | C<stopping> |
C<stopped>).

=item *

C<instance-type> - The type of instance (for example, C<t2.micro>).

=item *

C<instance.group-id> - The ID of the security group for the instance.

=item *

C<instance.group-name> - The name of the security group for the
instance.

=item *

C<ip-address> - The public IPv4 address of the instance.

=item *

C<ipv6-address> - The IPv6 address of the instance.

=item *

C<kernel-id> - The kernel ID.

=item *

C<key-name> - The name of the key pair used when the instance was
launched.

=item *

C<launch-index> - When launching multiple instances, this is the index
for the instance in the launch group (for example, 0, 1, 2, and so on).

=item *

C<launch-time> - The time when the instance was launched, in the ISO
8601 format in the UTC time zone (YYYY-MM-DDThh:mm:ss.sssZ), for
example, C<2021-09-29T11:04:43.305Z>. You can use a wildcard (C<*>),
for example, C<2021-09-29T*>, which matches an entire day.

=item *

C<maintenance-options.auto-recovery> - The current automatic recovery
behavior of the instance (C<disabled> | C<default>).

=item *

C<metadata-options.http-endpoint> - The status of access to the HTTP
metadata endpoint on your instance (C<enabled> | C<disabled>)

=item *

C<metadata-options.http-protocol-ipv4> - Indicates whether the IPv4
endpoint is enabled (C<disabled> | C<enabled>).

=item *

C<metadata-options.http-protocol-ipv6> - Indicates whether the IPv6
endpoint is enabled (C<disabled> | C<enabled>).

=item *

C<metadata-options.http-put-response-hop-limit> - The HTTP metadata
request put response hop limit (integer, possible values C<1> to C<64>)

=item *

C<metadata-options.http-tokens> - The metadata request authorization
state (C<optional> | C<required>)

=item *

C<metadata-options.instance-metadata-tags> - The status of access to
instance tags from the instance metadata (C<enabled> | C<disabled>)

=item *

C<metadata-options.state> - The state of the metadata option changes
(C<pending> | C<applied>).

=item *

C<monitoring-state> - Indicates whether detailed monitoring is enabled
(C<disabled> | C<enabled>).

=item *

C<network-interface.addresses.association.allocation-id> - The
allocation ID.

=item *

C<network-interface.addresses.association.association-id> - The
association ID.

=item *

C<network-interface.addresses.association.carrier-ip> - The carrier IP
address.

=item *

C<network-interface.addresses.association.customer-owned-ip> - The
customer-owned IP address.

=item *

C<network-interface.addresses.association.ip-owner-id> - The owner ID
of the private IPv4 address associated with the network interface.

=item *

C<network-interface.addresses.association.public-dns-name> - The public
DNS name.

=item *

C<network-interface.addresses.association.public-ip> - The ID of the
association of an Elastic IP address (IPv4) with a network interface.

=item *

C<network-interface.addresses.primary> - Specifies whether the IPv4
address of the network interface is the primary private IPv4 address.

=item *

C<network-interface.addresses.private-dns-name> - The private DNS name.

=item *

C<network-interface.addresses.private-ip-address> - The private IPv4
address associated with the network interface.

=item *

C<network-interface.association.allocation-id> - The allocation ID
returned when you allocated the Elastic IP address (IPv4) for your
network interface.

=item *

C<network-interface.association.association-id> - The association ID
returned when the network interface was associated with an IPv4
address.

=item *

C<network-interface.association.carrier-ip> - The customer-owned IP
address.

=item *

C<network-interface.association.customer-owned-ip> - The customer-owned
IP address.

=item *

C<network-interface.association.ip-owner-id> - The owner of the Elastic
IP address (IPv4) associated with the network interface.

=item *

C<network-interface.association.public-dns-name> - The public DNS name.

=item *

C<network-interface.association.public-ip> - The address of the Elastic
IP address (IPv4) bound to the network interface.

=item *

C<network-interface.attachment.attach-time> - The time that the network
interface was attached to an instance.

=item *

C<network-interface.attachment.attachment-id> - The ID of the interface
attachment.

=item *

C<network-interface.attachment.delete-on-termination> - Specifies
whether the attachment is deleted when an instance is terminated.

=item *

C<network-interface.attachment.device-index> - The device index to
which the network interface is attached.

=item *

C<network-interface.attachment.instance-id> - The ID of the instance to
which the network interface is attached.

=item *

C<network-interface.attachment.instance-owner-id> - The owner ID of the
instance to which the network interface is attached.

=item *

C<network-interface.attachment.network-card-index> - The index of the
network card.

=item *

C<network-interface.attachment.status> - The status of the attachment
(C<attaching> | C<attached> | C<detaching> | C<detached>).

=item *

C<network-interface.availability-zone> - The Availability Zone for the
network interface.

=item *

C<network-interface.deny-all-igw-traffic> - A Boolean that indicates
whether a network interface with an IPv6 address is unreachable from
the public internet.

=item *

C<network-interface.description> - The description of the network
interface.

=item *

C<network-interface.group-id> - The ID of a security group associated
with the network interface.

=item *

C<network-interface.group-name> - The name of a security group
associated with the network interface.

=item *

C<network-interface.ipv4-prefixes.ipv4-prefix> - The IPv4 prefixes that
are assigned to the network interface.

=item *

C<network-interface.ipv6-address> - The IPv6 address associated with
the network interface.

=item *

C<network-interface.ipv6-addresses.ipv6-address> - The IPv6 address
associated with the network interface.

=item *

C<network-interface.ipv6-addresses.is-primary-ipv6> - A Boolean that
indicates whether this is the primary IPv6 address.

=item *

C<network-interface.ipv6-native> - A Boolean that indicates whether
this is an IPv6 only network interface.

=item *

C<network-interface.ipv6-prefixes.ipv6-prefix> - The IPv6 prefix
assigned to the network interface.

=item *

C<network-interface.mac-address> - The MAC address of the network
interface.

=item *

C<network-interface.network-interface-id> - The ID of the network
interface.

=item *

C<network-interface.operator.managed> - A Boolean that indicates
whether the instance has a managed network interface.

=item *

C<network-interface.operator.principal> - The principal that manages
the network interface. Only valid for instances with managed network
interfaces, where C<managed> is C<true>.

=item *

C<network-interface.outpost-arn> - The ARN of the Outpost.

=item *

C<network-interface.owner-id> - The ID of the owner of the network
interface.

=item *

C<network-interface.private-dns-name> - The private DNS name of the
network interface.

=item *

C<network-interface.private-ip-address> - The private IPv4 address.

=item *

C<network-interface.public-dns-name> - The public DNS name.

=item *

C<network-interface.requester-id> - The requester ID for the network
interface.

=item *

C<network-interface.requester-managed> - Indicates whether the network
interface is being managed by Amazon Web Services.

=item *

C<network-interface.status> - The status of the network interface
(C<available>) | C<in-use>).

=item *

C<network-interface.source-dest-check> - Whether the network interface
performs source/destination checking. A value of C<true> means that
checking is enabled, and C<false> means that checking is disabled. The
value must be C<false> for the network interface to perform network
address translation (NAT) in your VPC.

=item *

C<network-interface.subnet-id> - The ID of the subnet for the network
interface.

=item *

C<network-interface.tag-key> - The key of a tag assigned to the network
interface.

=item *

C<network-interface.tag-value> - The value of a tag assigned to the
network interface.

=item *

C<network-interface.vpc-id> - The ID of the VPC for the network
interface.

=item *

C<network-performance-options.bandwidth-weighting> - Where the
performance boost is applied, if applicable. Valid values: C<default>,
C<vpc-1>, C<ebs-1>.

=item *

C<operator.managed> - A Boolean that indicates whether this is a
managed instance.

=item *

C<operator.principal> - The principal that manages the instance. Only
valid for managed instances, where C<managed> is C<true>.

=item *

C<outpost-arn> - The Amazon Resource Name (ARN) of the Outpost.

=item *

C<owner-id> - The Amazon Web Services account ID of the instance owner.

=item *

C<placement-group-name> - The name of the placement group for the
instance.

=item *

C<placement-partition-number> - The partition in which the instance is
located.

=item *

C<platform> - The platform. To list only Windows instances, use
C<windows>.

=item *

C<platform-details> - The platform (C<Linux/UNIX> | C<Red Hat BYOL
Linux> | C< Red Hat Enterprise Linux> | C<Red Hat Enterprise Linux with
HA> | C<Red Hat Enterprise Linux with SQL Server Standard and HA> |
C<Red Hat Enterprise Linux with SQL Server Enterprise and HA> | C<Red
Hat Enterprise Linux with SQL Server Standard> | C<Red Hat Enterprise
Linux with SQL Server Web> | C<Red Hat Enterprise Linux with SQL Server
Enterprise> | C<SQL Server Enterprise> | C<SQL Server Standard> | C<SQL
Server Web> | C<SUSE Linux> | C<Ubuntu Pro> | C<Windows> | C<Windows
BYOL> | C<Windows with SQL Server Enterprise> | C<Windows with SQL
Server Standard> | C<Windows with SQL Server Web>).

=item *

C<private-dns-name> - The private IPv4 DNS name of the instance.

=item *

C<private-dns-name-options.enable-resource-name-dns-a-record> - A
Boolean that indicates whether to respond to DNS queries for instance
hostnames with DNS A records.

=item *

C<private-dns-name-options.enable-resource-name-dns-aaaa-record> - A
Boolean that indicates whether to respond to DNS queries for instance
hostnames with DNS AAAA records.

=item *

C<private-dns-name-options.hostname-type> - The type of hostname
(C<ip-name> | C<resource-name>).

=item *

C<private-ip-address> - The private IPv4 address of the instance. This
can only be used to filter by the primary IP address of the network
interface attached to the instance. To filter by additional IP
addresses assigned to the network interface, use the filter
C<network-interface.addresses.private-ip-address>.

=item *

C<product-code> - The product code associated with the AMI used to
launch the instance.

=item *

C<product-code.type> - The type of product code (C<devpay> |
C<marketplace>).

=item *

C<ramdisk-id> - The RAM disk ID.

=item *

C<reason> - The reason for the current state of the instance (for
example, shows "User Initiated [date]" when you stop or terminate the
instance). Similar to the state-reason-code filter.

=item *

C<requester-id> - The ID of the entity that launched the instance on
your behalf (for example, Amazon Web Services Management Console, Auto
Scaling, and so on).

=item *

C<reservation-id> - The ID of the instance's reservation. A reservation
ID is created any time you launch an instance. A reservation ID has a
one-to-one relationship with an instance launch request, but can be
associated with more than one instance if you launch multiple instances
using the same launch request. For example, if you launch one instance,
you get one reservation ID. If you launch ten instances using the same
launch request, you also get one reservation ID.

=item *

C<root-device-name> - The device name of the root device volume (for
example, C</dev/sda1>).

=item *

C<root-device-type> - The type of the root device volume (C<ebs> |
C<instance-store>).

=item *

C<source-dest-check> - Indicates whether the instance performs
source/destination checking. A value of C<true> means that checking is
enabled, and C<false> means that checking is disabled. The value must
be C<false> for the instance to perform network address translation
(NAT) in your VPC.

=item *

C<spot-instance-request-id> - The ID of the Spot Instance request.

=item *

C<state-reason-code> - The reason code for the state change.

=item *

C<state-reason-message> - A message that describes the state change.

=item *

C<subnet-id> - The ID of the subnet for the instance.

=item *

C<tag:E<lt>keyE<gt>> - The key/value combination of a tag assigned to
the resource. Use the tag key in the filter name and the tag value as
the filter value. For example, to find all resources that have a tag
with the key C<Owner> and the value C<TeamA>, specify C<tag:Owner> for
the filter name and C<TeamA> for the filter value.

=item *

C<tag-key> - The key of a tag assigned to the resource. Use this filter
to find all resources that have a tag with a specific key, regardless
of the tag value.

=item *

C<tenancy> - The tenancy of an instance (C<dedicated> | C<default> |
C<host>).

=item *

C<tpm-support> - Indicates if the instance is configured for NitroTPM
support (C<v2.0>).

=item *

C<usage-operation> - The usage operation value for the instance
(C<RunInstances> | C<RunInstances:00g0> | C<RunInstances:0010> |
C<RunInstances:1010> | C<RunInstances:1014> | C<RunInstances:1110> |
C<RunInstances:0014> | C<RunInstances:0210> | C<RunInstances:0110> |
C<RunInstances:0100> | C<RunInstances:0004> | C<RunInstances:0200> |
C<RunInstances:000g> | C<RunInstances:0g00> | C<RunInstances:0002> |
C<RunInstances:0800> | C<RunInstances:0102> | C<RunInstances:0006> |
C<RunInstances:0202>).

=item *

C<usage-operation-update-time> - The time that the usage operation was
last updated, for example, C<2022-09-15T17:15:20.000Z>.

=item *

C<virtualization-type> - The virtualization type of the instance
(C<paravirtual> | C<hvm>).

=item *

C<vpc-id> - The ID of the VPC that the instance is running in.

=back




=head2 InstanceIds => ArrayRef[Str|Undef]

The instance IDs.

Default: Describes all your instances.



=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).

You cannot specify this parameter and the instance IDs parameter in the
same request.



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInstances in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

