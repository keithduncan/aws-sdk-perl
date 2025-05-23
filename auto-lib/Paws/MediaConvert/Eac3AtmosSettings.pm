# Generated by default/object.tt
package Paws::MediaConvert::Eac3AtmosSettings;
  use Moose;
  has Bitrate => (is => 'ro', isa => 'Int', request_name => 'bitrate', traits => ['NameInRequest']);
  has BitstreamMode => (is => 'ro', isa => 'Str', request_name => 'bitstreamMode', traits => ['NameInRequest']);
  has CodingMode => (is => 'ro', isa => 'Str', request_name => 'codingMode', traits => ['NameInRequest']);
  has DialogueIntelligence => (is => 'ro', isa => 'Str', request_name => 'dialogueIntelligence', traits => ['NameInRequest']);
  has DownmixControl => (is => 'ro', isa => 'Str', request_name => 'downmixControl', traits => ['NameInRequest']);
  has DynamicRangeCompressionLine => (is => 'ro', isa => 'Str', request_name => 'dynamicRangeCompressionLine', traits => ['NameInRequest']);
  has DynamicRangeCompressionRf => (is => 'ro', isa => 'Str', request_name => 'dynamicRangeCompressionRf', traits => ['NameInRequest']);
  has DynamicRangeControl => (is => 'ro', isa => 'Str', request_name => 'dynamicRangeControl', traits => ['NameInRequest']);
  has LoRoCenterMixLevel => (is => 'ro', isa => 'Num', request_name => 'loRoCenterMixLevel', traits => ['NameInRequest']);
  has LoRoSurroundMixLevel => (is => 'ro', isa => 'Num', request_name => 'loRoSurroundMixLevel', traits => ['NameInRequest']);
  has LtRtCenterMixLevel => (is => 'ro', isa => 'Num', request_name => 'ltRtCenterMixLevel', traits => ['NameInRequest']);
  has LtRtSurroundMixLevel => (is => 'ro', isa => 'Num', request_name => 'ltRtSurroundMixLevel', traits => ['NameInRequest']);
  has MeteringMode => (is => 'ro', isa => 'Str', request_name => 'meteringMode', traits => ['NameInRequest']);
  has SampleRate => (is => 'ro', isa => 'Int', request_name => 'sampleRate', traits => ['NameInRequest']);
  has SpeechThreshold => (is => 'ro', isa => 'Int', request_name => 'speechThreshold', traits => ['NameInRequest']);
  has StereoDownmix => (is => 'ro', isa => 'Str', request_name => 'stereoDownmix', traits => ['NameInRequest']);
  has SurroundExMode => (is => 'ro', isa => 'Str', request_name => 'surroundExMode', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Eac3AtmosSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Eac3AtmosSettings object:

  $service_obj->Method(Att1 => { Bitrate => $value, ..., SurroundExMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Eac3AtmosSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Bitrate

=head1 DESCRIPTION

Required when you set Codec to the value EAC3_ATMOS.

=head1 ATTRIBUTES


=head2 Bitrate => Int

Specify the average bitrate for this output in bits per second. Valid
values: 384k, 448k, 576k, 640k, 768k, 1024k Default value: 448k Note
that MediaConvert supports 384k only with channel-based immersive (CBI)
7.1.4 and 5.1.4 inputs. For CBI 9.1.6 and other input types,
MediaConvert automatically increases your output bitrate to 448k.


=head2 BitstreamMode => Str

Specify the bitstream mode for the E-AC-3 stream that the encoder
emits. For more information about the EAC3 bitstream mode, see ATSC
A/52-2012 (Annex E).


=head2 CodingMode => Str

The coding mode for Dolby Digital Plus JOC (Atmos).


=head2 DialogueIntelligence => Str

Enable Dolby Dialogue Intelligence to adjust loudness based on dialogue
analysis.


=head2 DownmixControl => Str

Specify whether MediaConvert should use any downmix metadata from your
input file. Keep the default value, Custom to provide downmix values in
your job settings. Choose Follow source to use the metadata from your
input. Related settings--Use these settings to specify your downmix
values: Left only/Right only surround, Left total/Right total surround,
Left total/Right total center, Left only/Right only center, and Stereo
downmix. When you keep Custom for Downmix control and you don't specify
values for the related settings, MediaConvert uses default values for
those settings.


=head2 DynamicRangeCompressionLine => Str

Choose the Dolby dynamic range control (DRC) profile that MediaConvert
uses when encoding the metadata in the Dolby stream for the line
operating mode. Default value: Film light Related setting: To have
MediaConvert use the value you specify here, keep the default value,
Custom for the setting Dynamic range control. Otherwise, MediaConvert
ignores Dynamic range compression line. For information about the Dolby
DRC operating modes and profiles, see the Dynamic Range Control chapter
of the Dolby Metadata Guide at
https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf.


=head2 DynamicRangeCompressionRf => Str

Choose the Dolby dynamic range control (DRC) profile that MediaConvert
uses when encoding the metadata in the Dolby stream for the RF
operating mode. Default value: Film light Related setting: To have
MediaConvert use the value you specify here, keep the default value,
Custom for the setting Dynamic range control. Otherwise, MediaConvert
ignores Dynamic range compression RF. For information about the Dolby
DRC operating modes and profiles, see the Dynamic Range Control chapter
of the Dolby Metadata Guide at
https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf.


=head2 DynamicRangeControl => Str

Specify whether MediaConvert should use any dynamic range control
metadata from your input file. Keep the default value, Custom, to
provide dynamic range control values in your job settings. Choose
Follow source to use the metadata from your input. Related
settings--Use these settings to specify your dynamic range control
values: Dynamic range compression line and Dynamic range compression
RF. When you keep the value Custom for Dynamic range control and you
don't specify values for the related settings, MediaConvert uses
default values for those settings.


=head2 LoRoCenterMixLevel => Num

Specify a value for the following Dolby Atmos setting: Left only/Right
only center mix (Lo/Ro center). MediaConvert uses this value for
downmixing. Default value: -3 dB. Valid values: 3.0, 1.5, 0.0, -1.5,
-3.0, -4.5, and -6.0. Related setting: How the service uses this value
depends on the value that you choose for Stereo downmix. Related
setting: To have MediaConvert use this value, keep the default value,
Custom for the setting Downmix control. Otherwise, MediaConvert ignores
Left only/Right only center.


=head2 LoRoSurroundMixLevel => Num

Specify a value for the following Dolby Atmos setting: Left only/Right
only. MediaConvert uses this value for downmixing. Default value: -3
dB. Valid values: -1.5, -3.0, -4.5, -6.0, and -60. The value -60 mutes
the channel. Related setting: How the service uses this value depends
on the value that you choose for Stereo downmix. Related setting: To
have MediaConvert use this value, keep the default value, Custom for
the setting Downmix control. Otherwise, MediaConvert ignores Left
only/Right only surround.


=head2 LtRtCenterMixLevel => Num

Specify a value for the following Dolby Atmos setting: Left total/Right
total center mix (Lt/Rt center). MediaConvert uses this value for
downmixing. Default value: -3 dB Valid values: 3.0, 1.5, 0.0, -1.5,
-3.0, -4.5, and -6.0. Related setting: How the service uses this value
depends on the value that you choose for Stereo downmix. Related
setting: To have MediaConvert use this value, keep the default value,
Custom for the setting Downmix control. Otherwise, MediaConvert ignores
Left total/Right total center.


=head2 LtRtSurroundMixLevel => Num

Specify a value for the following Dolby Atmos setting: Left total/Right
total surround mix (Lt/Rt surround). MediaConvert uses this value for
downmixing. Default value: -3 dB Valid values: -1.5, -3.0, -4.5, -6.0,
and -60. The value -60 mutes the channel. Related setting: How the
service uses this value depends on the value that you choose for Stereo
downmix. Related setting: To have MediaConvert use this value, keep the
default value, Custom for the setting Downmix control. Otherwise, the
service ignores Left total/Right total surround.


=head2 MeteringMode => Str

Choose how the service meters the loudness of your audio.


=head2 SampleRate => Int

This value is always 48000. It represents the sample rate in Hz.


=head2 SpeechThreshold => Int

Specify the percentage of audio content, from 0% to 100%, that must be
speech in order for the encoder to use the measured speech loudness as
the overall program loudness. Default value: 15%


=head2 StereoDownmix => Str

Choose how the service does stereo downmixing. Default value: Not
indicated Related setting: To have MediaConvert use this value, keep
the default value, Custom for the setting Downmix control. Otherwise,
MediaConvert ignores Stereo downmix.


=head2 SurroundExMode => Str

Specify whether your input audio has an additional center rear surround
channel matrix encoded into your left and right surround channels.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

