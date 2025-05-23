# Generated by default/object.tt
package Paws::FMS::NetworkFirewallUnexpectedGatewayRoutesViolation;
  use Moose;
  has GatewayId => (is => 'ro', isa => 'Str');
  has RouteTableId => (is => 'ro', isa => 'Str');
  has ViolatingRoutes => (is => 'ro', isa => 'ArrayRef[Paws::FMS::Route]');
  has VpcId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::NetworkFirewallUnexpectedGatewayRoutesViolation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FMS::NetworkFirewallUnexpectedGatewayRoutesViolation object:

  $service_obj->Method(Att1 => { GatewayId => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FMS::NetworkFirewallUnexpectedGatewayRoutesViolation object:

  $result = $service_obj->Method(...);
  $result->Att1->GatewayId

=head1 DESCRIPTION

Violation detail for an unexpected gateway route thatE<rsquo>s present
in a route table.

=head1 ATTRIBUTES


=head2 GatewayId => Str

Information about the gateway ID.


=head2 RouteTableId => Str

Information about the route table.


=head2 ViolatingRoutes => ArrayRef[L<Paws::FMS::Route>]

The routes that are in violation.


=head2 VpcId => Str

Information about the VPC ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

