
package Paws::AccessAnalyzer::ListFindingsV2Response;
  use Moose;
  has Findings => (is => 'ro', isa => 'ArrayRef[Paws::AccessAnalyzer::FindingSummaryV2]', traits => ['NameInRequest'], request_name => 'findings', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::ListFindingsV2Response

=head1 ATTRIBUTES


=head2 B<REQUIRED> Findings => ArrayRef[L<Paws::AccessAnalyzer::FindingSummaryV2>]

A list of findings retrieved from the analyzer that match the filter
criteria specified, if any.


=head2 NextToken => Str

A token used for pagination of results returned.


=head2 _request_id => Str


=cut

