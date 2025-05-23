
package Paws::EC2::Reservation;
  use Moose;
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::EC2::GroupIdentifier]', request_name => 'groupSet', traits => ['NameInRequest',]);
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Instance]', request_name => 'instancesSet', traits => ['NameInRequest',]);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest',]);
  has RequesterId => (is => 'ro', isa => 'Str', request_name => 'requesterId', traits => ['NameInRequest',]);
  has ReservationId => (is => 'ro', isa => 'Str', request_name => 'reservationId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Reservation

=head1 ATTRIBUTES


=head2 Groups => ArrayRef[L<Paws::EC2::GroupIdentifier>]

Not supported.


=head2 Instances => ArrayRef[L<Paws::EC2::Instance>]

The instances.


=head2 OwnerId => Str

The ID of the Amazon Web Services account that owns the reservation.


=head2 RequesterId => Str

The ID of the requester that launched the instances on your behalf (for
example, Amazon Web Services Management Console or Auto Scaling).


=head2 ReservationId => Str

The ID of the reservation.


=head2 _request_id => Str


=cut

