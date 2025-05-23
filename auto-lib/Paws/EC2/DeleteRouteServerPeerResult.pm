
package Paws::EC2::DeleteRouteServerPeerResult;
  use Moose;
  has RouteServerPeer => (is => 'ro', isa => 'Paws::EC2::RouteServerPeer', request_name => 'routeServerPeer', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteRouteServerPeerResult

=head1 ATTRIBUTES


=head2 RouteServerPeer => L<Paws::EC2::RouteServerPeer>

Information about the deleted route server peer.


=head2 _request_id => Str


=cut

