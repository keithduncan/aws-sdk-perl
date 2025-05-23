
package Paws::STS::DecodeAuthorizationMessageResponse;
  use Moose;
  has DecodedMessage => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::DecodeAuthorizationMessageResponse

=head1 ATTRIBUTES


=head2 DecodedMessage => Str

The API returns a response with the decoded message.


=head2 _request_id => Str


=cut

