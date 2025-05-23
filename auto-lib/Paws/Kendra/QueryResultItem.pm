# Generated by default/object.tt
package Paws::Kendra::QueryResultItem;
  use Moose;
  has AdditionalAttributes => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::AdditionalResultAttribute]');
  has CollapsedResultDetail => (is => 'ro', isa => 'Paws::Kendra::CollapsedResultDetail');
  has DocumentAttributes => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::DocumentAttribute]');
  has DocumentExcerpt => (is => 'ro', isa => 'Paws::Kendra::TextWithHighlights');
  has DocumentId => (is => 'ro', isa => 'Str');
  has DocumentTitle => (is => 'ro', isa => 'Paws::Kendra::TextWithHighlights');
  has DocumentURI => (is => 'ro', isa => 'Str');
  has FeedbackToken => (is => 'ro', isa => 'Str');
  has Format => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has ScoreAttributes => (is => 'ro', isa => 'Paws::Kendra::ScoreAttributes');
  has TableExcerpt => (is => 'ro', isa => 'Paws::Kendra::TableExcerpt');
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::QueryResultItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::QueryResultItem object:

  $service_obj->Method(Att1 => { AdditionalAttributes => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::QueryResultItem object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalAttributes

=head1 DESCRIPTION

A single query result.

A query result contains information about a document returned by the
query. This includes the original location of the document, a list of
attributes assigned to the document, and relevant text from the
document that satisfies the query.

=head1 ATTRIBUTES


=head2 AdditionalAttributes => ArrayRef[L<Paws::Kendra::AdditionalResultAttribute>]

One or more additional fields/attributes associated with the query
result.


=head2 CollapsedResultDetail => L<Paws::Kendra::CollapsedResultDetail>

Provides details about a collapsed group of search results.


=head2 DocumentAttributes => ArrayRef[L<Paws::Kendra::DocumentAttribute>]

An array of document fields/attributes assigned to a document in the
search results. For example, the document author (C<_author>) or the
source URI (C<_source_uri>) of the document.


=head2 DocumentExcerpt => L<Paws::Kendra::TextWithHighlights>

An extract of the text in the document. Contains information about
highlighting the relevant terms in the excerpt.


=head2 DocumentId => Str

The identifier for the document.


=head2 DocumentTitle => L<Paws::Kendra::TextWithHighlights>

The title of the document. Contains the text of the title and
information for highlighting the relevant terms in the title.


=head2 DocumentURI => Str

The URI of the original location of the document.


=head2 FeedbackToken => Str

A token that identifies a particular result from a particular query.
Use this token to provide click-through feedback for the result. For
more information, see Submitting feedback
(https://docs.aws.amazon.com/kendra/latest/dg/submitting-feedback.html).


=head2 Format => Str

If the C<Type> of document within the response is C<ANSWER>, then it is
either a C<TABLE> answer or C<TEXT> answer. If it's a table answer, a
table excerpt is returned in C<TableExcerpt>. If it's a text answer, a
text excerpt is returned in C<DocumentExcerpt>.


=head2 Id => Str

The unique identifier for the query result item id (C<Id>) and the
query result item document id (C<DocumentId>) combined. The value of
this field changes with every request, even when you have the same
documents.


=head2 ScoreAttributes => L<Paws::Kendra::ScoreAttributes>

Indicates the confidence level of Amazon Kendra providing a relevant
result for the query. Each result is placed into a bin that indicates
the confidence, C<VERY_HIGH>, C<HIGH>, C<MEDIUM> and C<LOW>. You can
use the score to determine if a response meets the confidence needed
for your application.

The field is only set to C<LOW> when the C<Type> field is set to
C<DOCUMENT> and Amazon Kendra is not confident that the result is
relevant to the query.


=head2 TableExcerpt => L<Paws::Kendra::TableExcerpt>

An excerpt from a table within a document.


=head2 Type => Str

The type of document within the response. For example, a response could
include a question-answer that's relevant to the query.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

