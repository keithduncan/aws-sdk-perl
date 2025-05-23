# Generated by default/object.tt
package Paws::NetworkManager::ConnectPeer;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::NetworkManager::ConnectPeerConfiguration');
  has ConnectAttachmentId => (is => 'ro', isa => 'Str');
  has ConnectPeerId => (is => 'ro', isa => 'Str');
  has CoreNetworkId => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has EdgeLocation => (is => 'ro', isa => 'Str');
  has LastModificationErrors => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::ConnectPeerError]');
  has State => (is => 'ro', isa => 'Str');
  has SubnetArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Tag]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::ConnectPeer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NetworkManager::ConnectPeer object:

  $service_obj->Method(Att1 => { Configuration => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NetworkManager::ConnectPeer object:

  $result = $service_obj->Method(...);
  $result->Att1->Configuration

=head1 DESCRIPTION

Describes a core network Connect peer.

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::NetworkManager::ConnectPeerConfiguration>

The configuration of the Connect peer.


=head2 ConnectAttachmentId => Str

The ID of the attachment to connect.


=head2 ConnectPeerId => Str

The ID of the Connect peer.


=head2 CoreNetworkId => Str

The ID of a core network.


=head2 CreatedAt => Str

The timestamp when the Connect peer was created.


=head2 EdgeLocation => Str

The Connect peer Regions where edges are located.


=head2 LastModificationErrors => ArrayRef[L<Paws::NetworkManager::ConnectPeerError>]

Describes the error associated with the attachment request.


=head2 State => Str

The state of the Connect peer.


=head2 SubnetArn => Str

The subnet ARN for the Connect peer. This only applies only when the
protocol is NO_ENCAP.


=head2 Tags => ArrayRef[L<Paws::NetworkManager::Tag>]

The list of key-value tags associated with the Connect peer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

