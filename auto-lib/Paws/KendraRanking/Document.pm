# Generated by default/object.tt
package Paws::KendraRanking::Document;
  use Moose;
  has Body => (is => 'ro', isa => 'Str');
  has GroupId => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has OriginalScore => (is => 'ro', isa => 'Num', required => 1);
  has Title => (is => 'ro', isa => 'Str');
  has TokenizedBody => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TokenizedTitle => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::KendraRanking::Document

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KendraRanking::Document object:

  $service_obj->Method(Att1 => { Body => $value, ..., TokenizedTitle => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KendraRanking::Document object:

  $result = $service_obj->Method(...);
  $result->Att1->Body

=head1 DESCRIPTION

Information about a document from a search service such as OpenSearch
(self managed). Amazon Kendra Intelligent Ranking uses this information
to rank and score on.

=head1 ATTRIBUTES


=head2 Body => Str

The body text of the search service's document.


=head2 GroupId => Str

The optional group identifier of the document from the search service.
Documents with the same group identifier are grouped together and
processed as one document within the service.


=head2 B<REQUIRED> Id => Str

The identifier of the document from the search service.


=head2 B<REQUIRED> OriginalScore => Num

The original document score or rank from the search service. Amazon
Kendra Intelligent Ranking gives the document a new score or rank based
on its intelligent search algorithms.


=head2 Title => Str

The title of the search service's document.


=head2 TokenizedBody => ArrayRef[Str|Undef]

The body text of the search service's document represented as a list of
tokens or words. You must choose to provide C<Body> or
C<TokenizedBody>. You cannot provide both.


=head2 TokenizedTitle => ArrayRef[Str|Undef]

The title of the search service's document represented as a list of
tokens or words. You must choose to provide C<Title> or
C<TokenizedTitle>. You cannot provide both.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KendraRanking>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

