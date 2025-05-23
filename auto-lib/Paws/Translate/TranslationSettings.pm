# Generated by default/object.tt
package Paws::Translate::TranslationSettings;
  use Moose;
  has Brevity => (is => 'ro', isa => 'Str');
  has Formality => (is => 'ro', isa => 'Str');
  has Profanity => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::TranslationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Translate::TranslationSettings object:

  $service_obj->Method(Att1 => { Brevity => $value, ..., Profanity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Translate::TranslationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Brevity

=head1 DESCRIPTION

Settings to configure your translation output. You can configure the
following options:

=over

=item *

Brevity: reduces the length of the translation output for most
translations. Available for C<TranslateText> only.

=item *

Formality: sets the formality level of the translation output.

=item *

Profanity: masks profane words and phrases in the translation output.

=back


=head1 ATTRIBUTES


=head2 Brevity => Str

When you turn on brevity, Amazon Translate reduces the length of the
translation output for most translations (when compared with the same
translation with brevity turned off). By default, brevity is turned
off.

If you turn on brevity for a translation request with an unsupported
language pair, the translation proceeds with the brevity setting turned
off.

For the language pairs that brevity supports, see Using brevity
(https://docs.aws.amazon.com/translate/latest/dg/customizing-translations-brevity)
in the Amazon Translate Developer Guide.


=head2 Formality => Str

You can specify the desired level of formality for translations to
supported target languages. The formality setting controls the level of
formal language usage (also known as register
(https://en.wikipedia.org/wiki/Register_(sociolinguistics))) in the
translation output. You can set the value to informal or formal. If you
don't specify a value for formality, or if the target language doesn't
support formality, the translation will ignore the formality setting.

If you specify multiple target languages for the job, translate ignores
the formality setting for any unsupported target language.

For a list of target languages that support formality, see Supported
languages
(https://docs.aws.amazon.com/translate/latest/dg/customizing-translations-formality.html#customizing-translations-formality-languages)
in the Amazon Translate Developer Guide.


=head2 Profanity => Str

You can enable the profanity setting if you want to mask profane words
and phrases in your translation output.

To mask profane words and phrases, Amazon Translate replaces them with
the grawlix string E<ldquo>?$#@$E<ldquo>. This 5-character sequence is
used for each profane word or phrase, regardless of the length or
number of words.

Amazon Translate doesn't detect profanity in all of its supported
languages. For languages that don't support profanity detection, see
Unsupported languages
(https://docs.aws.amazon.com/translate/latest/dg/customizing-translations-profanity.html#customizing-translations-profanity-languages)
in the Amazon Translate Developer Guide.

If you specify multiple target languages for the job, all the target
languages must support profanity masking. If any of the target
languages don't support profanity masking, the translation job won't
mask profanity for any target language.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

