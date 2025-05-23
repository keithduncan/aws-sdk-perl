# Generated by default/object.tt
package Paws::LexModelsV2::ConversationLevelTestResultItem;
  use Moose;
  has ConversationId => (is => 'ro', isa => 'Str', request_name => 'conversationId', traits => ['NameInRequest'], required => 1);
  has EndToEndResult => (is => 'ro', isa => 'Str', request_name => 'endToEndResult', traits => ['NameInRequest'], required => 1);
  has IntentClassificationResults => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::ConversationLevelIntentClassificationResultItem]', request_name => 'intentClassificationResults', traits => ['NameInRequest'], required => 1);
  has SlotResolutionResults => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::ConversationLevelSlotResolutionResultItem]', request_name => 'slotResolutionResults', traits => ['NameInRequest'], required => 1);
  has SpeechTranscriptionResult => (is => 'ro', isa => 'Str', request_name => 'speechTranscriptionResult', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ConversationLevelTestResultItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModelsV2::ConversationLevelTestResultItem object:

  $service_obj->Method(Att1 => { ConversationId => $value, ..., SpeechTranscriptionResult => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModelsV2::ConversationLevelTestResultItem object:

  $result = $service_obj->Method(...);
  $result->Att1->ConversationId

=head1 DESCRIPTION

The test result evaluation item at the conversation level.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConversationId => Str

The conversation Id of the test result evaluation item.


=head2 B<REQUIRED> EndToEndResult => Str

The end-to-end success or failure of the test result evaluation item.


=head2 B<REQUIRED> IntentClassificationResults => ArrayRef[L<Paws::LexModelsV2::ConversationLevelIntentClassificationResultItem>]

The intent classification of the test result evaluation item.


=head2 B<REQUIRED> SlotResolutionResults => ArrayRef[L<Paws::LexModelsV2::ConversationLevelSlotResolutionResultItem>]

The slot success or failure of the test result evaluation item.


=head2 SpeechTranscriptionResult => Str

The speech transcription success or failure of the test result
evaluation item.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

