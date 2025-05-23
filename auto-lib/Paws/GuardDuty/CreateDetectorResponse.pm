
package Paws::GuardDuty::CreateDetectorResponse;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorId');
  has UnprocessedDataSources => (is => 'ro', isa => 'Paws::GuardDuty::UnprocessedDataSourcesResult', traits => ['NameInRequest'], request_name => 'unprocessedDataSources');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreateDetectorResponse

=head1 ATTRIBUTES


=head2 DetectorId => Str

The unique ID of the created detector.


=head2 UnprocessedDataSources => L<Paws::GuardDuty::UnprocessedDataSourcesResult>

Specifies the data sources that couldn't be enabled when GuardDuty was
enabled for the first time.


=head2 _request_id => Str


=cut

