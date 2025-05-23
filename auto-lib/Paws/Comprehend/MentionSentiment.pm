# Generated by default/object.tt
package Paws::Comprehend::MentionSentiment;
  use Moose;
  has Sentiment => (is => 'ro', isa => 'Str');
  has SentimentScore => (is => 'ro', isa => 'Paws::Comprehend::SentimentScore');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::MentionSentiment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::MentionSentiment object:

  $service_obj->Method(Att1 => { Sentiment => $value, ..., SentimentScore => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::MentionSentiment object:

  $result = $service_obj->Method(...);
  $result->Att1->Sentiment

=head1 DESCRIPTION

Contains the sentiment and sentiment score for one mention of an
entity.

For more information about targeted sentiment, see Targeted sentiment
(https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html)
in the I<Amazon Comprehend Developer Guide>.

=head1 ATTRIBUTES


=head2 Sentiment => Str

The sentiment of the mention.


=head2 SentimentScore => L<Paws::Comprehend::SentimentScore>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

