
package Paws::EC2::ConfirmProductInstanceResult;
  use Moose;
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest',]);
  has Return => (is => 'ro', isa => 'Bool', request_name => 'return', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ConfirmProductInstanceResult

=head1 ATTRIBUTES


=head2 OwnerId => Str

The Amazon Web Services account ID of the instance owner. This is only
present if the product code is attached to the instance.


=head2 Return => Bool

The return value of the request. Returns C<true> if the specified
product code is owned by the requester and associated with the
specified instance.


=head2 _request_id => Str


=cut

