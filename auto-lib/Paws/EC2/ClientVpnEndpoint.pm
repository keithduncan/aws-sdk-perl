package Paws::EC2::ClientVpnEndpoint;
  use Moose;
  has AssociatedTargetNetworks => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AssociatedTargetNetwork]', request_name => 'associatedTargetNetwork', traits => ['NameInRequest']);
  has AuthenticationOptions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ClientVpnAuthentication]', request_name => 'authenticationOptions', traits => ['NameInRequest']);
  has ClientCidrBlock => (is => 'ro', isa => 'Str', request_name => 'clientCidrBlock', traits => ['NameInRequest']);
  has ClientConnectOptions => (is => 'ro', isa => 'Paws::EC2::ClientConnectResponseOptions', request_name => 'clientConnectOptions', traits => ['NameInRequest']);
  has ClientLoginBannerOptions => (is => 'ro', isa => 'Paws::EC2::ClientLoginBannerResponseOptions', request_name => 'clientLoginBannerOptions', traits => ['NameInRequest']);
  has ClientRouteEnforcementOptions => (is => 'ro', isa => 'Paws::EC2::ClientRouteEnforcementResponseOptions', request_name => 'clientRouteEnforcementOptions', traits => ['NameInRequest']);
  has ClientVpnEndpointId => (is => 'ro', isa => 'Str', request_name => 'clientVpnEndpointId', traits => ['NameInRequest']);
  has ConnectionLogOptions => (is => 'ro', isa => 'Paws::EC2::ConnectionLogResponseOptions', request_name => 'connectionLogOptions', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has DeletionTime => (is => 'ro', isa => 'Str', request_name => 'deletionTime', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DisconnectOnSessionTimeout => (is => 'ro', isa => 'Bool', request_name => 'disconnectOnSessionTimeout', traits => ['NameInRequest']);
  has DnsName => (is => 'ro', isa => 'Str', request_name => 'dnsName', traits => ['NameInRequest']);
  has DnsServers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'dnsServer', traits => ['NameInRequest']);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'securityGroupIdSet', traits => ['NameInRequest']);
  has SelfServicePortalUrl => (is => 'ro', isa => 'Str', request_name => 'selfServicePortalUrl', traits => ['NameInRequest']);
  has ServerCertificateArn => (is => 'ro', isa => 'Str', request_name => 'serverCertificateArn', traits => ['NameInRequest']);
  has SessionTimeoutHours => (is => 'ro', isa => 'Int', request_name => 'sessionTimeoutHours', traits => ['NameInRequest']);
  has SplitTunnel => (is => 'ro', isa => 'Bool', request_name => 'splitTunnel', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Paws::EC2::ClientVpnEndpointStatus', request_name => 'status', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has TransportProtocol => (is => 'ro', isa => 'Str', request_name => 'transportProtocol', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
  has VpnPort => (is => 'ro', isa => 'Int', request_name => 'vpnPort', traits => ['NameInRequest']);
  has VpnProtocol => (is => 'ro', isa => 'Str', request_name => 'vpnProtocol', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ClientVpnEndpoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ClientVpnEndpoint object:

  $service_obj->Method(Att1 => { AssociatedTargetNetworks => $value, ..., VpnProtocol => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ClientVpnEndpoint object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociatedTargetNetworks

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssociatedTargetNetworks => ArrayRef[L<Paws::EC2::AssociatedTargetNetwork>]

Information about the associated target networks. A target network is a
subnet in a VPC.


=head2 AuthenticationOptions => ArrayRef[L<Paws::EC2::ClientVpnAuthentication>]

Information about the authentication method used by the Client VPN
endpoint.


=head2 ClientCidrBlock => Str

The IPv4 address range, in CIDR notation, from which client IP
addresses are assigned.


=head2 ClientConnectOptions => L<Paws::EC2::ClientConnectResponseOptions>

The options for managing connection authorization for new client
connections.


=head2 ClientLoginBannerOptions => L<Paws::EC2::ClientLoginBannerResponseOptions>

Options for enabling a customizable text banner that will be displayed
on Amazon Web Services provided clients when a VPN session is
established.


=head2 ClientRouteEnforcementOptions => L<Paws::EC2::ClientRouteEnforcementResponseOptions>

Client route enforcement is a feature of the Client VPN service that
helps enforce administrator defined routes on devices connected through
the VPN. T his feature helps improve your security posture by ensuring
that network traffic originating from a connected client is not
inadvertently sent outside the VPN tunnel.

Client route enforcement works by monitoring the route table of a
connected device for routing policy changes to the VPN connection. If
the feature detects any VPN routing policy modifications, it will
automatically force an update to the route table, reverting it back to
the expected route configurations.


=head2 ClientVpnEndpointId => Str

The ID of the Client VPN endpoint.


=head2 ConnectionLogOptions => L<Paws::EC2::ConnectionLogResponseOptions>

Information about the client connection logging options for the Client
VPN endpoint.


=head2 CreationTime => Str

The date and time the Client VPN endpoint was created.


=head2 DeletionTime => Str

The date and time the Client VPN endpoint was deleted, if applicable.


=head2 Description => Str

A brief description of the endpoint.


=head2 DisconnectOnSessionTimeout => Bool

Indicates whether the client VPN session is disconnected after the
maximum C<sessionTimeoutHours> is reached. If C<true>, users are
prompted to reconnect client VPN. If C<false>, client VPN attempts to
reconnect automatically. The default value is C<true>.


=head2 DnsName => Str

The DNS name to be used by clients when connecting to the Client VPN
endpoint.


=head2 DnsServers => ArrayRef[Str|Undef]

Information about the DNS servers to be used for DNS resolution.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The IDs of the security groups for the target network.


=head2 SelfServicePortalUrl => Str

The URL of the self-service portal.


=head2 ServerCertificateArn => Str

The ARN of the server certificate.


=head2 SessionTimeoutHours => Int

The maximum VPN session duration time in hours.

Valid values: C<8 | 10 | 12 | 24>

Default value: C<24>


=head2 SplitTunnel => Bool

Indicates whether split-tunnel is enabled in the Client VPN endpoint.

For information about split-tunnel VPN endpoints, see Split-Tunnel
Client VPN endpoint
(https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/split-tunnel-vpn.html)
in the I<Client VPN Administrator Guide>.


=head2 Status => L<Paws::EC2::ClientVpnEndpointStatus>

The current state of the Client VPN endpoint.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Any tags assigned to the Client VPN endpoint.


=head2 TransportProtocol => Str

The transport protocol used by the Client VPN endpoint.


=head2 VpcId => Str

The ID of the VPC.


=head2 VpnPort => Int

The port number for the Client VPN endpoint.


=head2 VpnProtocol => Str

The protocol used by the VPN session.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
