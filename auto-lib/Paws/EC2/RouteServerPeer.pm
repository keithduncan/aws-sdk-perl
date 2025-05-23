package Paws::EC2::RouteServerPeer;
  use Moose;
  has BfdStatus => (is => 'ro', isa => 'Paws::EC2::RouteServerBfdStatus', request_name => 'bfdStatus', traits => ['NameInRequest']);
  has BgpOptions => (is => 'ro', isa => 'Paws::EC2::RouteServerBgpOptions', request_name => 'bgpOptions', traits => ['NameInRequest']);
  has BgpStatus => (is => 'ro', isa => 'Paws::EC2::RouteServerBgpStatus', request_name => 'bgpStatus', traits => ['NameInRequest']);
  has EndpointEniAddress => (is => 'ro', isa => 'Str', request_name => 'endpointEniAddress', traits => ['NameInRequest']);
  has EndpointEniId => (is => 'ro', isa => 'Str', request_name => 'endpointEniId', traits => ['NameInRequest']);
  has FailureReason => (is => 'ro', isa => 'Str', request_name => 'failureReason', traits => ['NameInRequest']);
  has PeerAddress => (is => 'ro', isa => 'Str', request_name => 'peerAddress', traits => ['NameInRequest']);
  has RouteServerEndpointId => (is => 'ro', isa => 'Str', request_name => 'routeServerEndpointId', traits => ['NameInRequest']);
  has RouteServerId => (is => 'ro', isa => 'Str', request_name => 'routeServerId', traits => ['NameInRequest']);
  has RouteServerPeerId => (is => 'ro', isa => 'Str', request_name => 'routeServerPeerId', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RouteServerPeer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::RouteServerPeer object:

  $service_obj->Method(Att1 => { BfdStatus => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::RouteServerPeer object:

  $result = $service_obj->Method(...);
  $result->Att1->BfdStatus

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BfdStatus => L<Paws::EC2::RouteServerBfdStatus>

The current status of the BFD session with this peer.


=head2 BgpOptions => L<Paws::EC2::RouteServerBgpOptions>

The BGP configuration options for this peer, including ASN (Autonomous
System Number) and BFD (Bidrectional Forwarding Detection) settings.


=head2 BgpStatus => L<Paws::EC2::RouteServerBgpStatus>

The current status of the BGP session with this peer.


=head2 EndpointEniAddress => Str

The IP address of the Elastic network interface for the route server
endpoint.


=head2 EndpointEniId => Str

The ID of the Elastic network interface for the route server endpoint.


=head2 FailureReason => Str

The reason for any failure in peer creation or operation.


=head2 PeerAddress => Str

The IPv4 address of the peer device.


=head2 RouteServerEndpointId => Str

The ID of the route server endpoint associated with this peer.


=head2 RouteServerId => Str

The ID of the route server associated with this peer.


=head2 RouteServerPeerId => Str

The unique identifier of the route server peer.


=head2 State => Str

The current state of the route server peer.


=head2 SubnetId => Str

The ID of the subnet containing the route server peer.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Any tags assigned to the route server peer.


=head2 VpcId => Str

The ID of the VPC containing the route server peer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
