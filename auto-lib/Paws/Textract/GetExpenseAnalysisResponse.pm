
package Paws::Textract::GetExpenseAnalysisResponse;
  use Moose;
  has AnalyzeExpenseModelVersion => (is => 'ro', isa => 'Str');
  has DocumentMetadata => (is => 'ro', isa => 'Paws::Textract::DocumentMetadata');
  has ExpenseDocuments => (is => 'ro', isa => 'ArrayRef[Paws::Textract::ExpenseDocument]');
  has JobStatus => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has Warnings => (is => 'ro', isa => 'ArrayRef[Paws::Textract::Warning]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Textract::GetExpenseAnalysisResponse

=head1 ATTRIBUTES


=head2 AnalyzeExpenseModelVersion => Str

The current model version of AnalyzeExpense.


=head2 DocumentMetadata => L<Paws::Textract::DocumentMetadata>

Information about a document that Amazon Textract processed.
C<DocumentMetadata> is returned in every page of paginated responses
from an Amazon Textract operation.


=head2 ExpenseDocuments => ArrayRef[L<Paws::Textract::ExpenseDocument>]

The expenses detected by Amazon Textract.


=head2 JobStatus => Str

The current status of the text detection job.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">, C<"PARTIAL_SUCCESS">
=head2 NextToken => Str

If the response is truncated, Amazon Textract returns this token. You
can use this token in the subsequent request to retrieve the next set
of text-detection results.


=head2 StatusMessage => Str

Returns if the detection job could not be completed. Contains
explanation for what error occured.


=head2 Warnings => ArrayRef[L<Paws::Textract::Warning>]

A list of warnings that occurred during the text-detection operation
for the document.


=head2 _request_id => Str


=cut

1;