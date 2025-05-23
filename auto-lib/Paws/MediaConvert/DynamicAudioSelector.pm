# Generated by default/object.tt
package Paws::MediaConvert::DynamicAudioSelector;
  use Moose;
  has AudioDurationCorrection => (is => 'ro', isa => 'Str', request_name => 'audioDurationCorrection', traits => ['NameInRequest']);
  has ExternalAudioFileInput => (is => 'ro', isa => 'Str', request_name => 'externalAudioFileInput', traits => ['NameInRequest']);
  has LanguageCode => (is => 'ro', isa => 'Str', request_name => 'languageCode', traits => ['NameInRequest']);
  has Offset => (is => 'ro', isa => 'Int', request_name => 'offset', traits => ['NameInRequest']);
  has SelectorType => (is => 'ro', isa => 'Str', request_name => 'selectorType', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::DynamicAudioSelector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::DynamicAudioSelector object:

  $service_obj->Method(Att1 => { AudioDurationCorrection => $value, ..., SelectorType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::DynamicAudioSelector object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioDurationCorrection

=head1 DESCRIPTION

Use Dynamic audio selectors when you do not know the track layout of
your source when you submit your job, but want to select multiple audio
tracks. When you include an audio track in your output and specify this
Dynamic audio selector as the Audio source, MediaConvert creates an
audio track within that output for each dynamically selected track.
Note that when you include a Dynamic audio selector for two or more
inputs, each input must have the same number of audio tracks and audio
channels.

=head1 ATTRIBUTES


=head2 AudioDurationCorrection => Str

Apply audio timing corrections to help synchronize audio and video in
your output. To apply timing corrections, your input must meet the
following requirements: * Container: MP4, or MOV, with an accurate
time-to-sample (STTS) table. * Audio track: AAC. Choose from the
following audio timing correction settings: * Disabled (Default): Apply
no correction. * Auto: Recommended for most inputs. MediaConvert
analyzes the audio timing in your input and determines which correction
setting to use, if needed. * Track: Adjust the duration of each audio
frame by a constant amount to align the audio track length with STTS
duration. Track-level correction does not affect pitch, and is
recommended for tonal audio content such as music. * Frame: Adjust the
duration of each audio frame by a variable amount to align audio frames
with STTS timestamps. No corrections are made to already-aligned
frames. Frame-level correction may affect the pitch of corrected
frames, and is recommended for atonal audio content such as speech or
percussion. * Force: Apply audio duration correction, either Track or
Frame depending on your input, regardless of the accuracy of your
input's STTS table. Your output audio and video may not be aligned or
it may contain audio artifacts.


=head2 ExternalAudioFileInput => Str

Specify the S3, HTTP, or HTTPS URL for your external audio file input.


=head2 LanguageCode => Str

Specify the language to select from your audio input. In the
MediaConvert console choose from a list of languages. In your JSON job
settings choose from an ISO 639-2 three-letter code listed at
https://www.loc.gov/standards/iso639-2/php/code_list.php


=head2 Offset => Int

Specify a time delta, in milliseconds, to offset the audio from the
input video. To specify no offset: Keep the default value, 0. To
specify an offset: Enter an integer from -2147483648 to 2147483647


=head2 SelectorType => Str

Specify which audio tracks to dynamically select from your source. To
select all audio tracks: Keep the default value, All tracks. To select
all audio tracks with a specific language code: Choose Language code.
When you do, you must also specify a language code under the Language
code setting. If there is no matching Language code in your source,
then no track will be selected.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

