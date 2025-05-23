# Generated by default/object.tt
package Paws::LexModelsV2::BotRecommendationResults;
  use Moose;
  has AssociatedTranscriptsUrl => (is => 'ro', isa => 'Str', request_name => 'associatedTranscriptsUrl', traits => ['NameInRequest']);
  has BotLocaleExportUrl => (is => 'ro', isa => 'Str', request_name => 'botLocaleExportUrl', traits => ['NameInRequest']);
  has Statistics => (is => 'ro', isa => 'Paws::LexModelsV2::BotRecommendationResultStatistics', request_name => 'statistics', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::BotRecommendationResults

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModelsV2::BotRecommendationResults object:

  $service_obj->Method(Att1 => { AssociatedTranscriptsUrl => $value, ..., Statistics => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModelsV2::BotRecommendationResults object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociatedTranscriptsUrl

=head1 DESCRIPTION

The object representing the URL of the bot definition, the URL of the
associated transcript, and a statistical summary of the bot
recommendation results.

=head1 ATTRIBUTES


=head2 AssociatedTranscriptsUrl => Str

The presigned url link of the associated transcript.


=head2 BotLocaleExportUrl => Str

The presigned URL link of the recommended bot definition.


=head2 Statistics => L<Paws::LexModelsV2::BotRecommendationResultStatistics>

The statistical summary of the bot recommendation results.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

