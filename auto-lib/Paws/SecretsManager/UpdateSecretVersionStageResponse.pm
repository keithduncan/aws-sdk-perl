
package Paws::SecretsManager::UpdateSecretVersionStageResponse;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::UpdateSecretVersionStageResponse

=head1 ATTRIBUTES


=head2 ARN => Str

The ARN of the secret that was updated.


=head2 Name => Str

The name of the secret that was updated.


=head2 _request_id => Str


=cut

1;