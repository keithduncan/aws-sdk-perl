
package Paws::WAFV2::GetIPSetResponse;
  use Moose;
  has IPSet => (is => 'ro', isa => 'Paws::WAFV2::IPSet');
  has LockToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::GetIPSetResponse

=head1 ATTRIBUTES


=head2 IPSet => L<Paws::WAFV2::IPSet>




=head2 LockToken => Str

A token used for optimistic locking. WAF returns a token to your C<get>
and C<list> requests, to mark the state of the entity at the time of
the request. To make changes to the entity associated with the token,
you provide the token to operations like C<update> and C<delete>. WAF
uses the token to ensure that no changes have been made to the entity
since you last retrieved it. If a change has been made, the update
fails with a C<WAFOptimisticLockException>. If this happens, perform
another C<get>, and use the new token returned by that operation.


=head2 _request_id => Str


=cut

1;