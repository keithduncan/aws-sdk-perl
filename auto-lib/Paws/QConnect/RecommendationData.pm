# Generated by default/object.tt
package Paws::QConnect::RecommendationData;
  use Moose;
  has Data => (is => 'ro', isa => 'Paws::QConnect::DataSummary', request_name => 'data', traits => ['NameInRequest']);
  has Document => (is => 'ro', isa => 'Paws::QConnect::Document', request_name => 'document', traits => ['NameInRequest']);
  has RecommendationId => (is => 'ro', isa => 'Str', request_name => 'recommendationId', traits => ['NameInRequest'], required => 1);
  has RelevanceLevel => (is => 'ro', isa => 'Str', request_name => 'relevanceLevel', traits => ['NameInRequest']);
  has RelevanceScore => (is => 'ro', isa => 'Num', request_name => 'relevanceScore', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::RecommendationData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QConnect::RecommendationData object:

  $service_obj->Method(Att1 => { Data => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QConnect::RecommendationData object:

  $result = $service_obj->Method(...);
  $result->Att1->Data

=head1 DESCRIPTION

Information about the recommendation.

=head1 ATTRIBUTES


=head2 Data => L<Paws::QConnect::DataSummary>

Summary of the recommended content.


=head2 Document => L<Paws::QConnect::Document>

The recommended document.


=head2 B<REQUIRED> RecommendationId => Str

The identifier of the recommendation.


=head2 RelevanceLevel => Str

The relevance level of the recommendation.


=head2 RelevanceScore => Num

The relevance score of the recommendation.


=head2 Type => Str

The type of recommendation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

