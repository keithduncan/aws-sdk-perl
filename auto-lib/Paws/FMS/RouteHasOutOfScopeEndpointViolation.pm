# Generated by default/object.tt
package Paws::FMS::RouteHasOutOfScopeEndpointViolation;
  use Moose;
  has CurrentFirewallSubnetRouteTable => (is => 'ro', isa => 'Str');
  has CurrentInternetGatewayRouteTable => (is => 'ro', isa => 'Str');
  has FirewallSubnetId => (is => 'ro', isa => 'Str');
  has FirewallSubnetRoutes => (is => 'ro', isa => 'ArrayRef[Paws::FMS::Route]');
  has InternetGatewayId => (is => 'ro', isa => 'Str');
  has InternetGatewayRoutes => (is => 'ro', isa => 'ArrayRef[Paws::FMS::Route]');
  has RouteTableId => (is => 'ro', isa => 'Str');
  has SubnetAvailabilityZone => (is => 'ro', isa => 'Str');
  has SubnetAvailabilityZoneId => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');
  has ViolatingRoutes => (is => 'ro', isa => 'ArrayRef[Paws::FMS::Route]');
  has VpcId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::RouteHasOutOfScopeEndpointViolation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FMS::RouteHasOutOfScopeEndpointViolation object:

  $service_obj->Method(Att1 => { CurrentFirewallSubnetRouteTable => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FMS::RouteHasOutOfScopeEndpointViolation object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrentFirewallSubnetRouteTable

=head1 DESCRIPTION

Contains details about the route endpoint that violates the policy
scope.

=head1 ATTRIBUTES


=head2 CurrentFirewallSubnetRouteTable => Str

The route table associated with the current firewall subnet.


=head2 CurrentInternetGatewayRouteTable => Str

The current route table associated with the Internet Gateway.


=head2 FirewallSubnetId => Str

The ID of the firewall subnet.


=head2 FirewallSubnetRoutes => ArrayRef[L<Paws::FMS::Route>]

The list of firewall subnet routes.


=head2 InternetGatewayId => Str

The ID of the Internet Gateway.


=head2 InternetGatewayRoutes => ArrayRef[L<Paws::FMS::Route>]

The routes in the route table associated with the Internet Gateway.


=head2 RouteTableId => Str

The ID of the route table.


=head2 SubnetAvailabilityZone => Str

The subnet's Availability Zone.


=head2 SubnetAvailabilityZoneId => Str

The ID of the subnet's Availability Zone.


=head2 SubnetId => Str

The ID of the subnet associated with the route that violates the policy
scope.


=head2 ViolatingRoutes => ArrayRef[L<Paws::FMS::Route>]

The list of routes that violate the route table.


=head2 VpcId => Str

The VPC ID of the route that violates the policy scope.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

