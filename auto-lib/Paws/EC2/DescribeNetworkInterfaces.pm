
package Paws::EC2::DescribeNetworkInterfaces;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NetworkInterfaceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'NetworkInterfaceId' );
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNetworkInterfaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeNetworkInterfacesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeNetworkInterfaces - Arguments for method DescribeNetworkInterfaces on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNetworkInterfaces on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeNetworkInterfaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNetworkInterfaces.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To describe a network interface
    my $DescribeNetworkInterfacesResult = $ec2->DescribeNetworkInterfaces(
      'NetworkInterfaceIds' => ['eni-e5aa89a3'] );

    # Results:
    my $NetworkInterfaces = $DescribeNetworkInterfacesResult->NetworkInterfaces;

    # Returns a L<Paws::EC2::DescribeNetworkInterfacesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeNetworkInterfaces>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<association.allocation-id> - The allocation ID returned when you
allocated the Elastic IP address (IPv4) for your network interface.

=item *

C<association.association-id> - The association ID returned when the
network interface was associated with an IPv4 address.

=item *

C<addresses.association.owner-id> - The owner ID of the addresses
associated with the network interface.

=item *

C<addresses.association.public-ip> - The association ID returned when
the network interface was associated with the Elastic IP address
(IPv4).

=item *

C<addresses.primary> - Whether the private IPv4 address is the primary
IP address associated with the network interface.

=item *

C<addresses.private-ip-address> - The private IPv4 addresses associated
with the network interface.

=item *

C<association.ip-owner-id> - The owner of the Elastic IP address (IPv4)
associated with the network interface.

=item *

C<association.public-ip> - The address of the Elastic IP address (IPv4)
bound to the network interface.

=item *

C<association.public-dns-name> - The public DNS name for the network
interface (IPv4).

=item *

C<attachment.attach-time> - The time that the network interface was
attached to an instance.

=item *

C<attachment.attachment-id> - The ID of the interface attachment.

=item *

C<attachment.delete-on-termination> - Indicates whether the attachment
is deleted when an instance is terminated.

=item *

C<attachment.device-index> - The device index to which the network
interface is attached.

=item *

C<attachment.instance-id> - The ID of the instance to which the network
interface is attached.

=item *

C<attachment.instance-owner-id> - The owner ID of the instance to which
the network interface is attached.

=item *

C<attachment.status> - The status of the attachment (C<attaching> |
C<attached> | C<detaching> | C<detached>).

=item *

C<availability-zone> - The Availability Zone of the network interface.

=item *

C<description> - The description of the network interface.

=item *

C<group-id> - The ID of a security group associated with the network
interface.

=item *

C<ipv6-addresses.ipv6-address> - An IPv6 address associated with the
network interface.

=item *

C<interface-type> - The type of network interface
(C<api_gateway_managed> | C<aws_codestar_connections_managed> |
C<branch> | C<ec2_instance_connect_endpoint> | C<efa> | C<efa-only> |
C<efs> | C<gateway_load_balancer> | C<gateway_load_balancer_endpoint> |
C<global_accelerator_managed> | C<interface> | C<iot_rules_managed> |
C<lambda> | C<load_balancer> | C<nat_gateway> |
C<network_load_balancer> | C<quicksight> | C<transit_gateway> |
C<trunk> | C<vpc_endpoint>).

=item *

C<mac-address> - The MAC address of the network interface.

=item *

C<network-interface-id> - The ID of the network interface.

=item *

C<operator.managed> - A Boolean that indicates whether this is a
managed network interface.

=item *

C<operator.principal> - The principal that manages the network
interface. Only valid for managed network interfaces, where C<managed>
is C<true>.

=item *

C<owner-id> - The Amazon Web Services account ID of the network
interface owner.

=item *

C<private-dns-name> - The private DNS name of the network interface
(IPv4).

=item *

C<private-ip-address> - The private IPv4 address or addresses of the
network interface.

=item *

C<requester-id> - The alias or Amazon Web Services account ID of the
principal or service that created the network interface.

=item *

C<requester-managed> - Indicates whether the network interface is being
managed by an Amazon Web Services service (for example, Amazon Web
Services Management Console, Auto Scaling, and so on).

=item *

C<source-dest-check> - Indicates whether the network interface performs
source/destination checking. A value of C<true> means checking is
enabled, and C<false> means checking is disabled. The value must be
C<false> for the network interface to perform network address
translation (NAT) in your VPC.

=item *

C<status> - The status of the network interface. If the network
interface is not attached to an instance, the status is C<available>;
if a network interface is attached to an instance the status is
C<in-use>.

=item *

C<subnet-id> - The ID of the subnet for the network interface.

=item *

C<tag>:E<lt>keyE<gt> - The key/value combination of a tag assigned to
the resource. Use the tag key in the filter name and the tag value as
the filter value. For example, to find all resources that have a tag
with the key C<Owner> and the value C<TeamA>, specify C<tag:Owner> for
the filter name and C<TeamA> for the filter value.

=item *

C<tag-key> - The key of a tag assigned to the resource. Use this filter
to find all resources assigned a tag with a specific key, regardless of
the tag value.

=item *

C<vpc-id> - The ID of the VPC for the network interface.

=back




=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. You cannot specify this parameter and the network interface IDs
parameter in the same request. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NetworkInterfaceIds => ArrayRef[Str|Undef]

The network interface IDs.

Default: Describes all your network interfaces.



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNetworkInterfaces in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

