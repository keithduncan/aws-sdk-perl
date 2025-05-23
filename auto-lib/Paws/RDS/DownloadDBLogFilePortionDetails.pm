
package Paws::RDS::DownloadDBLogFilePortionDetails;
  use Moose;
  has AdditionalDataPending => (is => 'ro', isa => 'Bool');
  has LogFileData => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DownloadDBLogFilePortionDetails

=head1 ATTRIBUTES


=head2 AdditionalDataPending => Bool

A Boolean value that, if true, indicates there is more data to be
downloaded.


=head2 LogFileData => Str

Entries from the specified log file.


=head2 Marker => Str

A pagination token that can be used in a later
C<DownloadDBLogFilePortion> request.


=head2 _request_id => Str


=cut

