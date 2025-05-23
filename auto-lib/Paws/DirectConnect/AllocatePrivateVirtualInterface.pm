
package Paws::DirectConnect::AllocatePrivateVirtualInterface;
  use Moose;
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId' , required => 1);
  has NewPrivateVirtualInterfaceAllocation => (is => 'ro', isa => 'Paws::DirectConnect::NewPrivateVirtualInterfaceAllocation', traits => ['NameInRequest'], request_name => 'newPrivateVirtualInterfaceAllocation' , required => 1);
  has OwnerAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerAccount' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AllocatePrivateVirtualInterface');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::VirtualInterface');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::AllocatePrivateVirtualInterface - Arguments for method AllocatePrivateVirtualInterface on L<Paws::DirectConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AllocatePrivateVirtualInterface on the
L<AWS Direct Connect|Paws::DirectConnect> service. Use the attributes of this class
as arguments to method AllocatePrivateVirtualInterface.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AllocatePrivateVirtualInterface.

=head1 SYNOPSIS

    my $directconnect = Paws->service('DirectConnect');
    my $VirtualInterface = $directconnect->AllocatePrivateVirtualInterface(
      ConnectionId                         => 'MyConnectionId',
      NewPrivateVirtualInterfaceAllocation => {
        Asn                  => 1,
        VirtualInterfaceName => 'MyVirtualInterfaceName',
        Vlan                 => 1,
        AddressFamily   => 'ipv4',                # values: ipv4, ipv6; OPTIONAL
        AmazonAddress   => 'MyAmazonAddress',     # OPTIONAL
        AuthKey         => 'MyBGPAuthKey',        # OPTIONAL
        CustomerAddress => 'MyCustomerAddress',   # OPTIONAL
        Mtu             => 1,                     # OPTIONAL
        Tags            => [
          {
            Key   => 'MyTagKey',      # min: 1, max: 128
            Value => 'MyTagValue',    # max: 256; OPTIONAL
          },
          ...
        ],    # min: 1; OPTIONAL
      },
      OwnerAccount => 'MyOwnerAccount',

    );

    # Results:
    my $AddressFamily          = $VirtualInterface->AddressFamily;
    my $AmazonAddress          = $VirtualInterface->AmazonAddress;
    my $AmazonSideAsn          = $VirtualInterface->AmazonSideAsn;
    my $Asn                    = $VirtualInterface->Asn;
    my $AuthKey                = $VirtualInterface->AuthKey;
    my $AwsDeviceV2            = $VirtualInterface->AwsDeviceV2;
    my $AwsLogicalDeviceId     = $VirtualInterface->AwsLogicalDeviceId;
    my $BgpPeers               = $VirtualInterface->BgpPeers;
    my $ConnectionId           = $VirtualInterface->ConnectionId;
    my $CustomerAddress        = $VirtualInterface->CustomerAddress;
    my $CustomerRouterConfig   = $VirtualInterface->CustomerRouterConfig;
    my $DirectConnectGatewayId = $VirtualInterface->DirectConnectGatewayId;
    my $JumboFrameCapable      = $VirtualInterface->JumboFrameCapable;
    my $Location               = $VirtualInterface->Location;
    my $Mtu                    = $VirtualInterface->Mtu;
    my $OwnerAccount           = $VirtualInterface->OwnerAccount;
    my $Region                 = $VirtualInterface->Region;
    my $RouteFilterPrefixes    = $VirtualInterface->RouteFilterPrefixes;
    my $SiteLinkEnabled        = $VirtualInterface->SiteLinkEnabled;
    my $Tags                   = $VirtualInterface->Tags;
    my $VirtualGatewayId       = $VirtualInterface->VirtualGatewayId;
    my $VirtualInterfaceId     = $VirtualInterface->VirtualInterfaceId;
    my $VirtualInterfaceName   = $VirtualInterface->VirtualInterfaceName;
    my $VirtualInterfaceState  = $VirtualInterface->VirtualInterfaceState;
    my $VirtualInterfaceType   = $VirtualInterface->VirtualInterfaceType;
    my $Vlan                   = $VirtualInterface->Vlan;

    # Returns a L<Paws::DirectConnect::VirtualInterface> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/directconnect/AllocatePrivateVirtualInterface>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionId => Str

The ID of the connection on which the private virtual interface is
provisioned.



=head2 B<REQUIRED> NewPrivateVirtualInterfaceAllocation => L<Paws::DirectConnect::NewPrivateVirtualInterfaceAllocation>

Information about the private virtual interface.



=head2 B<REQUIRED> OwnerAccount => Str

The ID of the Amazon Web Services account that owns the virtual private
interface.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AllocatePrivateVirtualInterface in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

