
package Paws::Athena::ListCapacityReservationsOutput;
  use Moose;
  has CapacityReservations => (is => 'ro', isa => 'ArrayRef[Paws::Athena::CapacityReservation]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::ListCapacityReservationsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapacityReservations => ArrayRef[L<Paws::Athena::CapacityReservation>]

The capacity reservations for the current account.


=head2 NextToken => Str

A token generated by the Athena service that specifies where to
continue pagination if a previous request was truncated. To obtain the
next set of pages, pass in the NextToken from the response object of
the previous page call.


=head2 _request_id => Str


=cut

1;