
package Paws::EC2::AssociateNatGatewayAddressResult;
  use Moose;
  has NatGatewayAddresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::NatGatewayAddress]', request_name => 'natGatewayAddressSet', traits => ['NameInRequest',]);
  has NatGatewayId => (is => 'ro', isa => 'Str', request_name => 'natGatewayId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateNatGatewayAddressResult

=head1 ATTRIBUTES


=head2 NatGatewayAddresses => ArrayRef[L<Paws::EC2::NatGatewayAddress>]

The IP addresses.


=head2 NatGatewayId => Str

The ID of the NAT gateway.


=head2 _request_id => Str


=cut

