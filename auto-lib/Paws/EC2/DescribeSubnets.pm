
package Paws::EC2::DescribeSubnets;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SubnetId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSubnets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeSubnetsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSubnets - Arguments for method DescribeSubnets on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSubnets on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeSubnets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSubnets.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To describe the subnets for a VPC
    # This example describes the subnets for the specified VPC.
    my $DescribeSubnetsResult = $ec2->DescribeSubnets(
      'Filters' => [

        {
          'Name'   => 'vpc-id',
          'Values' => ['vpc-a01106c2']
        }
      ]
    );

    # Results:
    my $Subnets = $DescribeSubnetsResult->Subnets;

    # Returns a L<Paws::EC2::DescribeSubnetsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeSubnets>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

The filters.

=over

=item *

C<availability-zone> - The Availability Zone for the subnet. You can
also use C<availabilityZone> as the filter name.

=item *

C<availability-zone-id> - The ID of the Availability Zone for the
subnet. You can also use C<availabilityZoneId> as the filter name.

=item *

C<available-ip-address-count> - The number of IPv4 addresses in the
subnet that are available.

=item *

C<cidr-block> - The IPv4 CIDR block of the subnet. The CIDR block you
specify must exactly match the subnet's CIDR block for information to
be returned for the subnet. You can also use C<cidr> or C<cidrBlock> as
the filter names.

=item *

C<customer-owned-ipv4-pool> - The customer-owned IPv4 address pool
associated with the subnet.

=item *

C<default-for-az> - Indicates whether this is the default subnet for
the Availability Zone (C<true> | C<false>). You can also use
C<defaultForAz> as the filter name.

=item *

C<enable-dns64> - Indicates whether DNS queries made to the
Amazon-provided DNS Resolver in this subnet should return synthetic
IPv6 addresses for IPv4-only destinations.

=item *

C<enable-lni-at-device-index> - Indicates the device position for local
network interfaces in this subnet. For example, C<1> indicates local
network interfaces in this subnet are the secondary network interface
(eth1).

=item *

C<ipv6-cidr-block-association.ipv6-cidr-block> - An IPv6 CIDR block
associated with the subnet.

=item *

C<ipv6-cidr-block-association.association-id> - An association ID for
an IPv6 CIDR block associated with the subnet.

=item *

C<ipv6-cidr-block-association.state> - The state of an IPv6 CIDR block
associated with the subnet.

=item *

C<ipv6-native> - Indicates whether this is an IPv6 only subnet (C<true>
| C<false>).

=item *

C<map-customer-owned-ip-on-launch> - Indicates whether a network
interface created in this subnet (including a network interface created
by RunInstances) receives a customer-owned IPv4 address.

=item *

C<map-public-ip-on-launch> - Indicates whether instances launched in
this subnet receive a public IPv4 address.

=item *

C<outpost-arn> - The Amazon Resource Name (ARN) of the Outpost.

=item *

C<owner-id> - The ID of the Amazon Web Services account that owns the
subnet.

=item *

C<private-dns-name-options-on-launch.hostname-type> - The type of
hostname to assign to instances in the subnet at launch. For IPv4-only
and dual-stack (IPv4 and IPv6) subnets, an instance DNS name can be
based on the instance IPv4 address (ip-name) or the instance ID
(resource-name). For IPv6 only subnets, an instance DNS name must be
based on the instance ID (resource-name).

=item *

C<private-dns-name-options-on-launch.enable-resource-name-dns-a-record>
- Indicates whether to respond to DNS queries for instance hostnames
with DNS A records.

=item *

C<private-dns-name-options-on-launch.enable-resource-name-dns-aaaa-record>
- Indicates whether to respond to DNS queries for instance hostnames
with DNS AAAA records.

=item *

C<state> - The state of the subnet (C<pending> | C<available>).

=item *

C<subnet-arn> - The Amazon Resource Name (ARN) of the subnet.

=item *

C<subnet-id> - The ID of the subnet.

=item *

C<tag> - The key/value combination of a tag assigned to the resource.
Use the tag key in the filter name and the tag value as the filter
value. For example, to find all resources that have a tag with the key
C<Owner> and the value C<TeamA>, specify C<tag:Owner> for the filter
name and C<TeamA> for the filter value.

=item *

C<tag-key> - The key of a tag assigned to the resource. Use this filter
to find all resources assigned a tag with a specific key, regardless of
the tag value.

=item *

C<vpc-id> - The ID of the VPC for the subnet.

=back




=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.



=head2 SubnetIds => ArrayRef[Str|Undef]

The IDs of the subnets.

Default: Describes all your subnets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSubnets in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

