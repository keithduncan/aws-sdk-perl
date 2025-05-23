
package Paws::DS::UpdateSettingsResult;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::UpdateSettingsResult

=head1 ATTRIBUTES


=head2 DirectoryId => Str

The identifier of the directory.


=head2 _request_id => Str


=cut

1;