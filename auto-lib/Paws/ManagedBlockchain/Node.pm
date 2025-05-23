# Generated by default/object.tt
package Paws::ManagedBlockchain::Node;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has FrameworkAttributes => (is => 'ro', isa => 'Paws::ManagedBlockchain::NodeFrameworkAttributes');
  has Id => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has KmsKeyArn => (is => 'ro', isa => 'Str');
  has LogPublishingConfiguration => (is => 'ro', isa => 'Paws::ManagedBlockchain::NodeLogPublishingConfiguration');
  has MemberId => (is => 'ro', isa => 'Str');
  has NetworkId => (is => 'ro', isa => 'Str');
  has StateDB => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::ManagedBlockchain::OutputTagMap');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::Node

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchain::Node object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchain::Node object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Configuration properties of a node.

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the node. For more information about
ARNs and their format, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference>.


=head2 AvailabilityZone => Str

The Availability Zone in which the node exists. Required for Ethereum
nodes.


=head2 CreationDate => Str

The date and time that the node was created.


=head2 FrameworkAttributes => L<Paws::ManagedBlockchain::NodeFrameworkAttributes>

Attributes of the blockchain framework being used.


=head2 Id => Str

The unique identifier of the node.


=head2 InstanceType => Str

The instance type of the node.


=head2 KmsKeyArn => Str

The Amazon Resource Name (ARN) of the customer managed key in Key
Management Service (KMS) that the node uses for encryption at rest. If
the value of this parameter is C<"AWS Owned KMS Key">, the node uses an
Amazon Web Services owned KMS key for encryption. The node inherits
this parameter from the member that it belongs to.

For more information, see Encryption at Rest
(https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/managed-blockchain-encryption-at-rest.html)
in the I<Amazon Managed Blockchain Hyperledger Fabric Developer Guide>.

Applies only to Hyperledger Fabric.


=head2 LogPublishingConfiguration => L<Paws::ManagedBlockchain::NodeLogPublishingConfiguration>

Configuration properties for logging events associated with a peer node
on a Hyperledger Fabric network on Managed Blockchain.


=head2 MemberId => Str

The unique identifier of the member to which the node belongs.

Applies only to Hyperledger Fabric.


=head2 NetworkId => Str

The unique identifier of the network that the node is on.


=head2 StateDB => Str

The state database that the node uses. Values are C<LevelDB> or
C<CouchDB>.

Applies only to Hyperledger Fabric.


=head2 Status => Str

The status of the node.

=over

=item *

C<CREATING> - The Amazon Web Services account is in the process of
creating a node.

=item *

C<AVAILABLE> - The node has been created and can participate in the
network.

=item *

C<UNHEALTHY> - The node is impaired and might not function as expected.
Amazon Managed Blockchain automatically finds nodes in this state and
tries to recover them. If a node is recoverable, it returns to
C<AVAILABLE>. Otherwise, it moves to C<FAILED> status.

=item *

C<CREATE_FAILED> - The Amazon Web Services account attempted to create
a node and creation failed.

=item *

C<UPDATING> - The node is in the process of being updated.

=item *

C<DELETING> - The node is in the process of being deleted.

=item *

C<DELETED> - The node can no longer participate on the network.

=item *

C<FAILED> - The node is no longer functional, cannot be recovered, and
must be deleted.

=item *

C<INACCESSIBLE_ENCRYPTION_KEY> - The node is impaired and might not
function as expected because it cannot access the specified customer
managed key in KMS for encryption at rest. Either the KMS key was
disabled or deleted, or the grants on the key were revoked.

The effect of disabling or deleting a key or of revoking a grant isn't
immediate. It might take some time for the node resource to discover
that the key is inaccessible. When a resource is in this state, we
recommend deleting and recreating the resource.

=back



=head2 Tags => L<Paws::ManagedBlockchain::OutputTagMap>

Tags assigned to the node. Each tag consists of a key and optional
value.

For more information about tags, see Tagging Resources
(https://docs.aws.amazon.com/managed-blockchain/latest/ethereum-dev/tagging-resources.html)
in the I<Amazon Managed Blockchain Ethereum Developer Guide>, or
Tagging Resources
(https://docs.aws.amazon.com/managed-blockchain/latest/hyperledger-fabric-dev/tagging-resources.html)
in the I<Amazon Managed Blockchain Hyperledger Fabric Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

