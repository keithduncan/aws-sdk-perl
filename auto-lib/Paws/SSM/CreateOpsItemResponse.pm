
package Paws::SSM::CreateOpsItemResponse;
  use Moose;
  has OpsItemArn => (is => 'ro', isa => 'Str');
  has OpsItemId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CreateOpsItemResponse

=head1 ATTRIBUTES


=head2 OpsItemArn => Str

The OpsItem Amazon Resource Name (ARN).


=head2 OpsItemId => Str

The ID of the OpsItem.


=head2 _request_id => Str


=cut

1;