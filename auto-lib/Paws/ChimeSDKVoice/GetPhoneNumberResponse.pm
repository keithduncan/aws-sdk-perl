
package Paws::ChimeSDKVoice::GetPhoneNumberResponse;
  use Moose;
  has PhoneNumber => (is => 'ro', isa => 'Paws::ChimeSDKVoice::PhoneNumber');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::GetPhoneNumberResponse

=head1 ATTRIBUTES


=head2 PhoneNumber => L<Paws::ChimeSDKVoice::PhoneNumber>

The phone number details.


=head2 _request_id => Str


=cut

