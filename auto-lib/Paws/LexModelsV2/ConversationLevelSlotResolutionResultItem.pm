# Generated by default/object.tt
package Paws::LexModelsV2::ConversationLevelSlotResolutionResultItem;
  use Moose;
  has IntentName => (is => 'ro', isa => 'Str', request_name => 'intentName', traits => ['NameInRequest'], required => 1);
  has MatchResult => (is => 'ro', isa => 'Str', request_name => 'matchResult', traits => ['NameInRequest'], required => 1);
  has SlotName => (is => 'ro', isa => 'Str', request_name => 'slotName', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ConversationLevelSlotResolutionResultItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModelsV2::ConversationLevelSlotResolutionResultItem object:

  $service_obj->Method(Att1 => { IntentName => $value, ..., SlotName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModelsV2::ConversationLevelSlotResolutionResultItem object:

  $result = $service_obj->Method(...);
  $result->Att1->IntentName

=head1 DESCRIPTION

The slots used for the slot resolution in the conversation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> IntentName => Str

The intents used in the slots list for the slot resolution details.


=head2 B<REQUIRED> MatchResult => Str

The number of matching slots used in the slots listings for the slot
resolution evaluation.


=head2 B<REQUIRED> SlotName => Str

The slot name in the slots list for the slot resolution details.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

