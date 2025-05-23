
package Paws::SecurityHub::DeleteInvitationsResponse;
  use Moose;
  has UnprocessedAccounts => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::Result]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DeleteInvitationsResponse

=head1 ATTRIBUTES


=head2 UnprocessedAccounts => ArrayRef[L<Paws::SecurityHub::Result>]

The list of Amazon Web Services accounts for which the invitations were
not deleted. For each account, the list includes the account ID and the
email address.


=head2 _request_id => Str


=cut

