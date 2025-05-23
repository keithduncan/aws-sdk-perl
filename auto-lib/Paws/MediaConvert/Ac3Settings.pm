# Generated by default/object.tt
package Paws::MediaConvert::Ac3Settings;
  use Moose;
  has Bitrate => (is => 'ro', isa => 'Int', request_name => 'bitrate', traits => ['NameInRequest']);
  has BitstreamMode => (is => 'ro', isa => 'Str', request_name => 'bitstreamMode', traits => ['NameInRequest']);
  has CodingMode => (is => 'ro', isa => 'Str', request_name => 'codingMode', traits => ['NameInRequest']);
  has Dialnorm => (is => 'ro', isa => 'Int', request_name => 'dialnorm', traits => ['NameInRequest']);
  has DynamicRangeCompressionLine => (is => 'ro', isa => 'Str', request_name => 'dynamicRangeCompressionLine', traits => ['NameInRequest']);
  has DynamicRangeCompressionProfile => (is => 'ro', isa => 'Str', request_name => 'dynamicRangeCompressionProfile', traits => ['NameInRequest']);
  has DynamicRangeCompressionRf => (is => 'ro', isa => 'Str', request_name => 'dynamicRangeCompressionRf', traits => ['NameInRequest']);
  has LfeFilter => (is => 'ro', isa => 'Str', request_name => 'lfeFilter', traits => ['NameInRequest']);
  has MetadataControl => (is => 'ro', isa => 'Str', request_name => 'metadataControl', traits => ['NameInRequest']);
  has SampleRate => (is => 'ro', isa => 'Int', request_name => 'sampleRate', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Ac3Settings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Ac3Settings object:

  $service_obj->Method(Att1 => { Bitrate => $value, ..., SampleRate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Ac3Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->Bitrate

=head1 DESCRIPTION

Required when you set Codec to the value AC3.

=head1 ATTRIBUTES


=head2 Bitrate => Int

Specify the average bitrate in bits per second. The bitrate that you
specify must be a multiple of 8000 within the allowed minimum and
maximum values. Leave blank to use the default bitrate for the coding
mode you select according ETSI TS 102 366. Valid bitrates for coding
mode 1/0: Default: 96000. Minimum: 64000. Maximum: 128000. Valid
bitrates for coding mode 1/1: Default: 192000. Minimum: 128000.
Maximum: 384000. Valid bitrates for coding mode 2/0: Default: 192000.
Minimum: 128000. Maximum: 384000. Valid bitrates for coding mode 3/2
with FLE: Default: 384000. Minimum: 384000. Maximum: 640000.


=head2 BitstreamMode => Str

Specify the bitstream mode for the AC-3 stream that the encoder emits.
For more information about the AC3 bitstream mode, see ATSC A/52-2012
(Annex E).


=head2 CodingMode => Str

Dolby Digital coding mode. Determines number of channels.


=head2 Dialnorm => Int

Sets the dialnorm for the output. If blank and input audio is Dolby
Digital, dialnorm will be passed through.


=head2 DynamicRangeCompressionLine => Str

Choose the Dolby Digital dynamic range control (DRC) profile that
MediaConvert uses when encoding the metadata in the Dolby Digital
stream for the line operating mode. Related setting: When you use this
setting, MediaConvert ignores any value you provide for Dynamic range
compression profile. For information about the Dolby Digital DRC
operating modes and profiles, see the Dynamic Range Control chapter of
the Dolby Metadata Guide at
https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf.


=head2 DynamicRangeCompressionProfile => Str

When you want to add Dolby dynamic range compression (DRC) signaling to
your output stream, we recommend that you use the mode-specific
settings instead of Dynamic range compression profile. The
mode-specific settings are Dynamic range compression profile, line mode
and Dynamic range compression profile, RF mode. Note that when you
specify values for all three settings, MediaConvert ignores the value
of this setting in favor of the mode-specific settings. If you do use
this setting instead of the mode-specific settings, choose None to
leave out DRC signaling. Keep the default Film standard to set the
profile to Dolby's film standard profile for all operating modes.


=head2 DynamicRangeCompressionRf => Str

Choose the Dolby Digital dynamic range control (DRC) profile that
MediaConvert uses when encoding the metadata in the Dolby Digital
stream for the RF operating mode. Related setting: When you use this
setting, MediaConvert ignores any value you provide for Dynamic range
compression profile. For information about the Dolby Digital DRC
operating modes and profiles, see the Dynamic Range Control chapter of
the Dolby Metadata Guide at
https://developer.dolby.com/globalassets/professional/documents/dolby-metadata-guide.pdf.


=head2 LfeFilter => Str

Applies a 120Hz lowpass filter to the LFE channel prior to encoding.
Only valid with 3_2_LFE coding mode.


=head2 MetadataControl => Str

When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD,
DD+, or DolbyE decoder that supplied this audio data. If audio was not
supplied from one of these streams, then the static metadata settings
will be used.


=head2 SampleRate => Int

This value is always 48000. It represents the sample rate in Hz.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

