
package Paws::ComprehendMedical::ListSNOMEDCTInferenceJobsResponse;
  use Moose;
  has ComprehendMedicalAsyncJobPropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::ComprehendMedical::ComprehendMedicalAsyncJobProperties]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::ListSNOMEDCTInferenceJobsResponse

=head1 ATTRIBUTES


=head2 ComprehendMedicalAsyncJobPropertiesList => ArrayRef[L<Paws::ComprehendMedical::ComprehendMedicalAsyncJobProperties>]

A list containing the properties of each job that is returned.


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 _request_id => Str


=cut

1;