
package Paws::EC2::DescribeVpcEndpoints;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has VpcEndpointIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'VpcEndpointId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpcEndpoints');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeVpcEndpointsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcEndpoints - Arguments for method DescribeVpcEndpoints on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVpcEndpoints on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeVpcEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVpcEndpoints.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeVpcEndpointsResult = $ec2->DescribeVpcEndpoints(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults     => 1,                             # OPTIONAL
      NextToken      => 'MyString',                    # OPTIONAL
      VpcEndpointIds => [ 'MyVpcEndpointId', ... ],    # OPTIONAL
    );

    # Results:
    my $NextToken    = $DescribeVpcEndpointsResult->NextToken;
    my $VpcEndpoints = $DescribeVpcEndpointsResult->VpcEndpoints;

    # Returns a L<Paws::EC2::DescribeVpcEndpointsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeVpcEndpoints>

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

C<ip-address-type> - The IP address type (C<ipv4> | C<ipv6>).

=item *

C<service-name> - The name of the service.

=item *

C<service-region> - The Region of the service.

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

C<vpc-id> - The ID of the VPC in which the endpoint resides.

=item *

C<vpc-endpoint-id> - The ID of the endpoint.

=item *

C<vpc-endpoint-state> - The state of the endpoint (C<pendingAcceptance>
| C<pending> | C<available> | C<deleting> | C<deleted> | C<rejected> |
C<failed>).

=item *

C<vpc-endpoint-type> - The type of VPC endpoint (C<Interface> |
C<Gateway> | C<GatewayLoadBalancer> | C<Resource> | C<ServiceNetwork>).

=back




=head2 MaxResults => Int

The maximum number of items to return for this request. The request
returns a token that you can specify in a subsequent call to get the
next set of results.

Constraint: If the value is greater than 1,000, we return only 1,000
items.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a prior call.)



=head2 VpcEndpointIds => ArrayRef[Str|Undef]

The IDs of the VPC endpoints.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVpcEndpoints in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

