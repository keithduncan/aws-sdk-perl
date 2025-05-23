# Generated by default/object.tt
package Paws::CloudTrail::SearchSampleQueriesSearchResult;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Relevance => (is => 'ro', isa => 'Num');
  has SQL => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::SearchSampleQueriesSearchResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudTrail::SearchSampleQueriesSearchResult object:

  $service_obj->Method(Att1 => { Description => $value, ..., SQL => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudTrail::SearchSampleQueriesSearchResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

A search result returned by the C<SearchSampleQueries> operation.

=head1 ATTRIBUTES


=head2 Description => Str

A longer description of a sample query.


=head2 Name => Str

The name of a sample query.


=head2 Relevance => Num

A value between 0 and 1 indicating the similarity between the search
phrase and result.


=head2 SQL => Str

The SQL code of the sample query.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

