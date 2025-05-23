
package Paws::EC2::CreateRoute;
  use Moose;
  has CarrierGatewayId => (is => 'ro', isa => 'Str');
  has CoreNetworkArn => (is => 'ro', isa => 'Str');
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationCidrBlock' );
  has DestinationIpv6CidrBlock => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationIpv6CidrBlock' );
  has DestinationPrefixListId => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has EgressOnlyInternetGatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'egressOnlyInternetGatewayId' );
  has GatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'gatewayId' );
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceId' );
  has LocalGatewayId => (is => 'ro', isa => 'Str');
  has NatGatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'natGatewayId' );
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkInterfaceId' );
  has RouteTableId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeTableId' , required => 1);
  has TransitGatewayId => (is => 'ro', isa => 'Str');
  has VpcEndpointId => (is => 'ro', isa => 'Str');
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcPeeringConnectionId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRoute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateRouteResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateRoute - Arguments for method CreateRoute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRoute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateRoute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRoute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
 # To create a route
 # This example creates a route for the specified route table. The route matches
 # all traffic (0.0.0.0/0) and routes it to the specified Internet gateway.
    my $CreateRouteResult = $ec2->CreateRoute(
      'DestinationCidrBlock' => '0.0.0.0/0',
      'GatewayId'            => 'igw-c0a643a9',
      'RouteTableId'         => 'rtb-22574640'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateRoute>

=head1 ATTRIBUTES


=head2 CarrierGatewayId => Str

The ID of the carrier gateway.

You can only use this option when the VPC contains a subnet which is
associated with a Wavelength Zone.



=head2 CoreNetworkArn => Str

The Amazon Resource Name (ARN) of the core network.



=head2 DestinationCidrBlock => Str

The IPv4 CIDR address block used for the destination match. Routing
decisions are based on the most specific match. We modify the specified
CIDR block to its canonical form; for example, if you specify
C<100.68.0.18/18>, we modify it to C<100.68.0.0/18>.



=head2 DestinationIpv6CidrBlock => Str

The IPv6 CIDR block used for the destination match. Routing decisions
are based on the most specific match.



=head2 DestinationPrefixListId => Str

The ID of a prefix list used for the destination match.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EgressOnlyInternetGatewayId => Str

[IPv6 traffic only] The ID of an egress-only internet gateway.



=head2 GatewayId => Str

The ID of an internet gateway or virtual private gateway attached to
your VPC.



=head2 InstanceId => Str

The ID of a NAT instance in your VPC. The operation fails if you
specify an instance ID unless exactly one network interface is
attached.



=head2 LocalGatewayId => Str

The ID of the local gateway.



=head2 NatGatewayId => Str

[IPv4 traffic only] The ID of a NAT gateway.



=head2 NetworkInterfaceId => Str

The ID of a network interface.



=head2 B<REQUIRED> RouteTableId => Str

The ID of the route table for the route.



=head2 TransitGatewayId => Str

The ID of a transit gateway.



=head2 VpcEndpointId => Str

The ID of a VPC endpoint. Supported for Gateway Load Balancer endpoints
only.



=head2 VpcPeeringConnectionId => Str

The ID of a VPC peering connection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRoute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

