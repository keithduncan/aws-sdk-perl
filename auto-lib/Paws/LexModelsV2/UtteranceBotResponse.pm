# Generated by default/object.tt
package Paws::LexModelsV2::UtteranceBotResponse;
  use Moose;
  has Content => (is => 'ro', isa => 'Str', request_name => 'content', traits => ['NameInRequest']);
  has ContentType => (is => 'ro', isa => 'Str', request_name => 'contentType', traits => ['NameInRequest']);
  has ImageResponseCard => (is => 'ro', isa => 'Paws::LexModelsV2::ImageResponseCard', request_name => 'imageResponseCard', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::UtteranceBotResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModelsV2::UtteranceBotResponse object:

  $service_obj->Method(Att1 => { Content => $value, ..., ImageResponseCard => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModelsV2::UtteranceBotResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Content

=head1 DESCRIPTION

An object that contains a response to the utterance from the bot.

=head1 ATTRIBUTES


=head2 Content => Str

The text of the response to the utterance from the bot.


=head2 ContentType => Str

The type of the response. The following values are possible:

=over

=item *

C<PlainText> E<ndash> A plain text string.

=item *

C<CustomPayload> E<ndash> A response string that you can customize to
include data or metadata for your application.

=item *

C<SSML> E<ndash> A string that includes Speech Synthesis Markup
Language to customize the audio response.

=item *

C<ImageResponseCard> E<ndash> An image with buttons that the customer
can select. See ImageResponseCard
(https://docs.aws.amazon.com/lexv2/latest/APIReference/API_runtime_ImageResponseCard.html)
for more information.

=back



=head2 ImageResponseCard => L<Paws::LexModelsV2::ImageResponseCard>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

