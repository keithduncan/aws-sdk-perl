
package Paws::Polly::StartSpeechSynthesisTask;
  use Moose;
  has Engine => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has LexiconNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OutputFormat => (is => 'ro', isa => 'Str', required => 1);
  has OutputS3BucketName => (is => 'ro', isa => 'Str', required => 1);
  has OutputS3KeyPrefix => (is => 'ro', isa => 'Str');
  has SampleRate => (is => 'ro', isa => 'Str');
  has SnsTopicArn => (is => 'ro', isa => 'Str');
  has SpeechMarkTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Text => (is => 'ro', isa => 'Str', required => 1);
  has TextType => (is => 'ro', isa => 'Str');
  has VoiceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartSpeechSynthesisTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/synthesisTasks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Polly::StartSpeechSynthesisTaskOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::StartSpeechSynthesisTask - Arguments for method StartSpeechSynthesisTask on L<Paws::Polly>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartSpeechSynthesisTask on the
L<Amazon Polly|Paws::Polly> service. Use the attributes of this class
as arguments to method StartSpeechSynthesisTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartSpeechSynthesisTask.

=head1 SYNOPSIS

    my $polly = Paws->service('Polly');
    my $StartSpeechSynthesisTaskOutput = $polly->StartSpeechSynthesisTask(
      OutputFormat       => 'json',
      OutputS3BucketName => 'MyOutputS3BucketName',
      Text               => 'MyText',
      VoiceId            => 'Aditi',
      Engine             => 'standard',                  # OPTIONAL
      LanguageCode       => 'arb',                       # OPTIONAL
      LexiconNames       => [ 'MyLexiconName', ... ],    # OPTIONAL
      OutputS3KeyPrefix  => 'MyOutputS3KeyPrefix',       # OPTIONAL
      SampleRate         => 'MySampleRate',              # OPTIONAL
      SnsTopicArn        => 'MySnsTopicArn',             # OPTIONAL
      SpeechMarkTypes    => [
        'sentence', ...    # values: sentence, ssml, viseme, word
      ],    # OPTIONAL
      TextType => 'ssml',    # OPTIONAL
    );

    # Results:
    my $SynthesisTask = $StartSpeechSynthesisTaskOutput->SynthesisTask;

    # Returns a L<Paws::Polly::StartSpeechSynthesisTaskOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/polly/StartSpeechSynthesisTask>

=head1 ATTRIBUTES


=head2 Engine => Str

Specifies the engine (C<standard>, C<neural>, C<long-form> or
C<generative>) for Amazon Polly to use when processing input text for
speech synthesis. Using a voice that is not supported for the engine
selected will result in an error.

Valid values are: C<"standard">, C<"neural">, C<"long-form">, C<"generative">

=head2 LanguageCode => Str

Optional language code for the Speech Synthesis request. This is only
necessary if using a bilingual voice, such as Aditi, which can be used
for either Indian English (en-IN) or Hindi (hi-IN).

If a bilingual voice is used and no language code is specified, Amazon
Polly uses the default language of the bilingual voice. The default
language for any voice is the one returned by the DescribeVoices
(https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html)
operation for the C<LanguageCode> parameter. For example, if no
language code is specified, Aditi will use Indian English rather than
Hindi.

Valid values are: C<"arb">, C<"cmn-CN">, C<"cy-GB">, C<"da-DK">, C<"de-DE">, C<"en-AU">, C<"en-GB">, C<"en-GB-WLS">, C<"en-IN">, C<"en-US">, C<"es-ES">, C<"es-MX">, C<"es-US">, C<"fr-CA">, C<"fr-FR">, C<"is-IS">, C<"it-IT">, C<"ja-JP">, C<"hi-IN">, C<"ko-KR">, C<"nb-NO">, C<"nl-NL">, C<"pl-PL">, C<"pt-BR">, C<"pt-PT">, C<"ro-RO">, C<"ru-RU">, C<"sv-SE">, C<"tr-TR">, C<"en-NZ">, C<"en-ZA">, C<"ca-ES">, C<"de-AT">, C<"yue-CN">, C<"ar-AE">, C<"fi-FI">, C<"en-IE">, C<"nl-BE">, C<"fr-BE">, C<"cs-CZ">, C<"de-CH">, C<"en-SG">

=head2 LexiconNames => ArrayRef[Str|Undef]

List of one or more pronunciation lexicon names you want the service to
apply during synthesis. Lexicons are applied only if the language of
the lexicon is the same as the language of the voice.



=head2 B<REQUIRED> OutputFormat => Str

The format in which the returned output will be encoded. For audio
stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this
will be json.

Valid values are: C<"json">, C<"mp3">, C<"ogg_vorbis">, C<"pcm">

=head2 B<REQUIRED> OutputS3BucketName => Str

Amazon S3 bucket name to which the output file will be saved.



=head2 OutputS3KeyPrefix => Str

The Amazon S3 key prefix for the output speech file.



=head2 SampleRate => Str

The audio frequency specified in Hz.

The valid values for mp3 and ogg_vorbis are "8000", "16000", "22050",
and "24000". The default value for standard voices is "22050". The
default value for neural voices is "24000". The default value for
long-form voices is "24000". The default value for generative voices is
"24000".

Valid values for pcm are "8000" and "16000" The default value is
"16000".



=head2 SnsTopicArn => Str

ARN for the SNS topic optionally used for providing status notification
for a speech synthesis task.



=head2 SpeechMarkTypes => ArrayRef[Str|Undef]

The type of speech marks returned for the input text.



=head2 B<REQUIRED> Text => Str

The input text to synthesize. If you specify ssml as the TextType,
follow the SSML format for the input text.



=head2 TextType => Str

Specifies whether the input text is plain text or SSML. The default
value is plain text.

Valid values are: C<"ssml">, C<"text">

=head2 B<REQUIRED> VoiceId => Str

Voice ID to use for the synthesis.

Valid values are: C<"Aditi">, C<"Amy">, C<"Astrid">, C<"Bianca">, C<"Brian">, C<"Camila">, C<"Carla">, C<"Carmen">, C<"Celine">, C<"Chantal">, C<"Conchita">, C<"Cristiano">, C<"Dora">, C<"Emma">, C<"Enrique">, C<"Ewa">, C<"Filiz">, C<"Gabrielle">, C<"Geraint">, C<"Giorgio">, C<"Gwyneth">, C<"Hans">, C<"Ines">, C<"Ivy">, C<"Jacek">, C<"Jan">, C<"Joanna">, C<"Joey">, C<"Justin">, C<"Karl">, C<"Kendra">, C<"Kevin">, C<"Kimberly">, C<"Lea">, C<"Liv">, C<"Lotte">, C<"Lucia">, C<"Lupe">, C<"Mads">, C<"Maja">, C<"Marlene">, C<"Mathieu">, C<"Matthew">, C<"Maxim">, C<"Mia">, C<"Miguel">, C<"Mizuki">, C<"Naja">, C<"Nicole">, C<"Olivia">, C<"Penelope">, C<"Raveena">, C<"Ricardo">, C<"Ruben">, C<"Russell">, C<"Salli">, C<"Seoyeon">, C<"Takumi">, C<"Tatyana">, C<"Vicki">, C<"Vitoria">, C<"Zeina">, C<"Zhiyu">, C<"Aria">, C<"Ayanda">, C<"Arlet">, C<"Hannah">, C<"Arthur">, C<"Daniel">, C<"Liam">, C<"Pedro">, C<"Kajal">, C<"Hiujin">, C<"Laura">, C<"Elin">, C<"Ida">, C<"Suvi">, C<"Ola">, C<"Hala">, C<"Andres">, C<"Sergio">, C<"Remi">, C<"Adriano">, C<"Thiago">, C<"Ruth">, C<"Stephen">, C<"Kazuha">, C<"Tomoko">, C<"Niamh">, C<"Sofie">, C<"Lisa">, C<"Isabelle">, C<"Zayd">, C<"Danielle">, C<"Gregory">, C<"Burcu">, C<"Jitka">, C<"Sabrina">, C<"Jasmine">, C<"Jihye">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartSpeechSynthesisTask in L<Paws::Polly>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

