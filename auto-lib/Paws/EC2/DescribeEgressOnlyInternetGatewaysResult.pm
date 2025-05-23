
package Paws::EC2::DescribeEgressOnlyInternetGatewaysResult;
  use Moose;
  has EgressOnlyInternetGateways => (is => 'ro', isa => 'ArrayRef[Paws::EC2::EgressOnlyInternetGateway]', request_name => 'egressOnlyInternetGatewaySet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeEgressOnlyInternetGatewaysResult

=head1 ATTRIBUTES


=head2 EgressOnlyInternetGateways => ArrayRef[L<Paws::EC2::EgressOnlyInternetGateway>]

Information about the egress-only internet gateways.


=head2 NextToken => Str

The token to include in another request to get the next page of items.
This value is C<null> when there are no more items to return.


=head2 _request_id => Str


=cut

