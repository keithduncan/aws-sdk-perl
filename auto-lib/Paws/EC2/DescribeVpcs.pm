
package Paws::EC2::DescribeVpcs;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has VpcIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'VpcId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpcs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeVpcsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcs - Arguments for method DescribeVpcs on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVpcs on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeVpcs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVpcs.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To describe a VPC
    # This example describes the specified VPC.
    my $DescribeVpcsResult = $ec2->DescribeVpcs( 'VpcIds' => ['vpc-a01106c2'] );

    # Results:
    my $Vpcs = $DescribeVpcsResult->Vpcs;

    # Returns a L<Paws::EC2::DescribeVpcsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeVpcs>

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

C<cidr> - The primary IPv4 CIDR block of the VPC. The CIDR block you
specify must exactly match the VPC's CIDR block for information to be
returned for the VPC. Must contain the slash followed by one or two
digits (for example, C</28>).

=item *

C<cidr-block-association.cidr-block> - An IPv4 CIDR block associated
with the VPC.

=item *

C<cidr-block-association.association-id> - The association ID for an
IPv4 CIDR block associated with the VPC.

=item *

C<cidr-block-association.state> - The state of an IPv4 CIDR block
associated with the VPC.

=item *

C<dhcp-options-id> - The ID of a set of DHCP options.

=item *

C<ipv6-cidr-block-association.ipv6-cidr-block> - An IPv6 CIDR block
associated with the VPC.

=item *

C<ipv6-cidr-block-association.ipv6-pool> - The ID of the IPv6 address
pool from which the IPv6 CIDR block is allocated.

=item *

C<ipv6-cidr-block-association.association-id> - The association ID for
an IPv6 CIDR block associated with the VPC.

=item *

C<ipv6-cidr-block-association.state> - The state of an IPv6 CIDR block
associated with the VPC.

=item *

C<is-default> - Indicates whether the VPC is the default VPC.

=item *

C<owner-id> - The ID of the Amazon Web Services account that owns the
VPC.

=item *

C<state> - The state of the VPC (C<pending> | C<available>).

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

C<vpc-id> - The ID of the VPC.

=back




=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.



=head2 VpcIds => ArrayRef[Str|Undef]

The IDs of the VPCs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVpcs in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

