
package Paws::WAFV2::UpdateWebACLResponse;
  use Moose;
  has NextLockToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::UpdateWebACLResponse

=head1 ATTRIBUTES


=head2 NextLockToken => Str

A token used for optimistic locking. WAF returns this token to your
C<update> requests. You use C<NextLockToken> in the same manner as you
use C<LockToken>.


=head2 _request_id => Str


=cut

1;