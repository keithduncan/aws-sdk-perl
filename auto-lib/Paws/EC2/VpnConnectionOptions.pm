package Paws::EC2::VpnConnectionOptions;
  use Moose;
  has EnableAcceleration => (is => 'ro', isa => 'Bool', request_name => 'enableAcceleration', traits => ['NameInRequest']);
  has LocalIpv4NetworkCidr => (is => 'ro', isa => 'Str', request_name => 'localIpv4NetworkCidr', traits => ['NameInRequest']);
  has LocalIpv6NetworkCidr => (is => 'ro', isa => 'Str', request_name => 'localIpv6NetworkCidr', traits => ['NameInRequest']);
  has OutsideIpAddressType => (is => 'ro', isa => 'Str', request_name => 'outsideIpAddressType', traits => ['NameInRequest']);
  has RemoteIpv4NetworkCidr => (is => 'ro', isa => 'Str', request_name => 'remoteIpv4NetworkCidr', traits => ['NameInRequest']);
  has RemoteIpv6NetworkCidr => (is => 'ro', isa => 'Str', request_name => 'remoteIpv6NetworkCidr', traits => ['NameInRequest']);
  has StaticRoutesOnly => (is => 'ro', isa => 'Bool', request_name => 'staticRoutesOnly', traits => ['NameInRequest']);
  has TransportTransitGatewayAttachmentId => (is => 'ro', isa => 'Str', request_name => 'transportTransitGatewayAttachmentId', traits => ['NameInRequest']);
  has TunnelInsideIpVersion => (is => 'ro', isa => 'Str', request_name => 'tunnelInsideIpVersion', traits => ['NameInRequest']);
  has TunnelOptions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TunnelOption]', request_name => 'tunnelOptionSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpnConnectionOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpnConnectionOptions object:

  $service_obj->Method(Att1 => { EnableAcceleration => $value, ..., TunnelOptions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpnConnectionOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->EnableAcceleration

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 EnableAcceleration => Bool

Indicates whether acceleration is enabled for the VPN connection.


=head2 LocalIpv4NetworkCidr => Str

The IPv4 CIDR on the customer gateway (on-premises) side of the VPN
connection.


=head2 LocalIpv6NetworkCidr => Str

The IPv6 CIDR on the customer gateway (on-premises) side of the VPN
connection.


=head2 OutsideIpAddressType => Str

The type of IPv4 address assigned to the outside interface of the
customer gateway.

Valid values: C<PrivateIpv4> | C<PublicIpv4>

Default: C<PublicIpv4>


=head2 RemoteIpv4NetworkCidr => Str

The IPv4 CIDR on the Amazon Web Services side of the VPN connection.


=head2 RemoteIpv6NetworkCidr => Str

The IPv6 CIDR on the Amazon Web Services side of the VPN connection.


=head2 StaticRoutesOnly => Bool

Indicates whether the VPN connection uses static routes only. Static
routes must be used for devices that don't support BGP.


=head2 TransportTransitGatewayAttachmentId => Str

The transit gateway attachment ID in use for the VPN tunnel.


=head2 TunnelInsideIpVersion => Str

Indicates whether the VPN tunnels process IPv4 or IPv6 traffic.


=head2 TunnelOptions => ArrayRef[L<Paws::EC2::TunnelOption>]

Indicates the VPN tunnel options.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
