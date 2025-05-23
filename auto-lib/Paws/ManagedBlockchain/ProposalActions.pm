# Generated by default/object.tt
package Paws::ManagedBlockchain::ProposalActions;
  use Moose;
  has Invitations => (is => 'ro', isa => 'ArrayRef[Paws::ManagedBlockchain::InviteAction]');
  has Removals => (is => 'ro', isa => 'ArrayRef[Paws::ManagedBlockchain::RemoveAction]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::ProposalActions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ManagedBlockchain::ProposalActions object:

  $service_obj->Method(Att1 => { Invitations => $value, ..., Removals => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ManagedBlockchain::ProposalActions object:

  $result = $service_obj->Method(...);
  $result->Att1->Invitations

=head1 DESCRIPTION

The actions to carry out if a proposal is C<APPROVED>.

Applies only to Hyperledger Fabric.

=head1 ATTRIBUTES


=head2 Invitations => ArrayRef[L<Paws::ManagedBlockchain::InviteAction>]

The actions to perform for an C<APPROVED> proposal to invite an Amazon
Web Services account to create a member and join the network.


=head2 Removals => ArrayRef[L<Paws::ManagedBlockchain::RemoveAction>]

The actions to perform for an C<APPROVED> proposal to remove a member
from the network, which deletes the member and all associated member
resources from the network.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

