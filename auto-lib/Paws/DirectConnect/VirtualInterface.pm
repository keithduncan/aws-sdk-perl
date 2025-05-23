
package Paws::DirectConnect::VirtualInterface;
  use Moose;
  has AddressFamily => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'addressFamily' );
  has AmazonAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'amazonAddress' );
  has AmazonSideAsn => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'amazonSideAsn' );
  has Asn => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'asn' );
  has AuthKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authKey' );
  has AwsDeviceV2 => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsDeviceV2' );
  has AwsLogicalDeviceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsLogicalDeviceId' );
  has BgpPeers => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::BGPPeer]', traits => ['NameInRequest'], request_name => 'bgpPeers' );
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId' );
  has CustomerAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerAddress' );
  has CustomerRouterConfig => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customerRouterConfig' );
  has DirectConnectGatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'directConnectGatewayId' );
  has JumboFrameCapable => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'jumboFrameCapable' );
  has Location => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'location' );
  has Mtu => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'mtu' );
  has OwnerAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerAccount' );
  has Region => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'region' );
  has RouteFilterPrefixes => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::RouteFilterPrefix]', traits => ['NameInRequest'], request_name => 'routeFilterPrefixes' );
  has SiteLinkEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'siteLinkEnabled' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has VirtualGatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualGatewayId' );
  has VirtualInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceId' );
  has VirtualInterfaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceName' );
  has VirtualInterfaceState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceState' );
  has VirtualInterfaceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualInterfaceType' );
  has Vlan => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'vlan' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::VirtualInterface

=head1 ATTRIBUTES


=head2 AddressFamily => Str

The address family for the BGP peer.

Valid values are: C<"ipv4">, C<"ipv6">
=head2 AmazonAddress => Str

The IP address assigned to the Amazon interface.


=head2 AmazonSideAsn => Int

The autonomous system number (ASN) for the Amazon side of the
connection.


=head2 Asn => Int

The autonomous system (AS) number for Border Gateway Protocol (BGP)
configuration.

The valid values are 1-2147483647.


=head2 AuthKey => Str

The authentication key for BGP configuration. This string has a minimum
length of 6 characters and and a maximun lenth of 80 characters.


=head2 AwsDeviceV2 => Str

The Direct Connect endpoint that terminates the physical connection.


=head2 AwsLogicalDeviceId => Str

The Direct Connect endpoint that terminates the logical connection.
This device might be different than the device that terminates the
physical connection.


=head2 BgpPeers => ArrayRef[L<Paws::DirectConnect::BGPPeer>]

The BGP peers configured on this virtual interface.


=head2 ConnectionId => Str

The ID of the connection.


=head2 CustomerAddress => Str

The IP address assigned to the customer interface.


=head2 CustomerRouterConfig => Str

The customer router configuration.


=head2 DirectConnectGatewayId => Str

The ID of the Direct Connect gateway.


=head2 JumboFrameCapable => Bool

Indicates whether jumbo frames are supported.


=head2 Location => Str

The location of the connection.


=head2 Mtu => Int

The maximum transmission unit (MTU), in bytes. The supported values are
1500 and 8500. The default value is 1500


=head2 OwnerAccount => Str

The ID of the Amazon Web Services account that owns the virtual
interface.


=head2 Region => Str

The Amazon Web Services Region where the virtual interface is located.


=head2 RouteFilterPrefixes => ArrayRef[L<Paws::DirectConnect::RouteFilterPrefix>]

The routes to be advertised to the Amazon Web Services network in this
Region. Applies to public virtual interfaces.


=head2 SiteLinkEnabled => Bool

Indicates whether SiteLink is enabled.


=head2 Tags => ArrayRef[L<Paws::DirectConnect::Tag>]

The tags associated with the virtual interface.


=head2 VirtualGatewayId => Str

The ID of the virtual private gateway. Applies only to private virtual
interfaces.


=head2 VirtualInterfaceId => Str

The ID of the virtual interface.


=head2 VirtualInterfaceName => Str

The name of the virtual interface assigned by the customer network. The
name has a maximum of 100 characters. The following are valid
characters: a-z, 0-9 and a hyphen (-).


=head2 VirtualInterfaceState => Str

The state of the virtual interface. The following are the possible
values:

=over

=item *

C<confirming>: The creation of the virtual interface is pending
confirmation from the virtual interface owner. If the owner of the
virtual interface is different from the owner of the connection on
which it is provisioned, then the virtual interface will remain in this
state until it is confirmed by the virtual interface owner.

=item *

C<verifying>: This state only applies to public virtual interfaces.
Each public virtual interface needs validation before the virtual
interface can be created.

=item *

C<pending>: A virtual interface is in this state from the time that it
is created until the virtual interface is ready to forward traffic.

=item *

C<available>: A virtual interface that is able to forward traffic.

=item *

C<down>: A virtual interface that is BGP down.

=item *

C<testing>: A virtual interface is in this state immediately after
calling StartBgpFailoverTest and remains in this state during the
duration of the test.

=item *

C<deleting>: A virtual interface is in this state immediately after
calling DeleteVirtualInterface until it can no longer forward traffic.

=item *

C<deleted>: A virtual interface that cannot forward traffic.

=item *

C<rejected>: The virtual interface owner has declined creation of the
virtual interface. If a virtual interface in the C<Confirming> state is
deleted by the virtual interface owner, the virtual interface enters
the C<Rejected> state.

=item *

C<unknown>: The state of the virtual interface is not available.

=back


Valid values are: C<"confirming">, C<"verifying">, C<"pending">, C<"available">, C<"down">, C<"deleting">, C<"deleted">, C<"rejected">, C<"unknown">
=head2 VirtualInterfaceType => Str

The type of virtual interface. The possible values are C<private>,
C<public> and C<transit>.


=head2 Vlan => Int

The ID of the VLAN.


=head2 _request_id => Str


=cut

1;