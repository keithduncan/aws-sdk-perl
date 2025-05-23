
package Paws::Translate::TranslateTextResponse;
  use Moose;
  has AppliedSettings => (is => 'ro', isa => 'Paws::Translate::TranslationSettings');
  has AppliedTerminologies => (is => 'ro', isa => 'ArrayRef[Paws::Translate::AppliedTerminology]');
  has SourceLanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has TargetLanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has TranslatedText => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Translate::TranslateTextResponse

=head1 ATTRIBUTES


=head2 AppliedSettings => L<Paws::Translate::TranslationSettings>

Optional settings that modify the translation output.


=head2 AppliedTerminologies => ArrayRef[L<Paws::Translate::AppliedTerminology>]

The names of the custom terminologies applied to the input text by
Amazon Translate for the translated text response.


=head2 B<REQUIRED> SourceLanguageCode => Str

The language code for the language of the source text.


=head2 B<REQUIRED> TargetLanguageCode => Str

The language code for the language of the target text.


=head2 B<REQUIRED> TranslatedText => Str

The translated text.


=head2 _request_id => Str


=cut

1;