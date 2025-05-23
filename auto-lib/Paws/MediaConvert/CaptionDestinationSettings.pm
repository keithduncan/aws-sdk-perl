# Generated by default/object.tt
package Paws::MediaConvert::CaptionDestinationSettings;
  use Moose;
  has BurninDestinationSettings => (is => 'ro', isa => 'Paws::MediaConvert::BurninDestinationSettings', request_name => 'burninDestinationSettings', traits => ['NameInRequest']);
  has DestinationType => (is => 'ro', isa => 'Str', request_name => 'destinationType', traits => ['NameInRequest']);
  has DvbSubDestinationSettings => (is => 'ro', isa => 'Paws::MediaConvert::DvbSubDestinationSettings', request_name => 'dvbSubDestinationSettings', traits => ['NameInRequest']);
  has EmbeddedDestinationSettings => (is => 'ro', isa => 'Paws::MediaConvert::EmbeddedDestinationSettings', request_name => 'embeddedDestinationSettings', traits => ['NameInRequest']);
  has ImscDestinationSettings => (is => 'ro', isa => 'Paws::MediaConvert::ImscDestinationSettings', request_name => 'imscDestinationSettings', traits => ['NameInRequest']);
  has SccDestinationSettings => (is => 'ro', isa => 'Paws::MediaConvert::SccDestinationSettings', request_name => 'sccDestinationSettings', traits => ['NameInRequest']);
  has SrtDestinationSettings => (is => 'ro', isa => 'Paws::MediaConvert::SrtDestinationSettings', request_name => 'srtDestinationSettings', traits => ['NameInRequest']);
  has TeletextDestinationSettings => (is => 'ro', isa => 'Paws::MediaConvert::TeletextDestinationSettings', request_name => 'teletextDestinationSettings', traits => ['NameInRequest']);
  has TtmlDestinationSettings => (is => 'ro', isa => 'Paws::MediaConvert::TtmlDestinationSettings', request_name => 'ttmlDestinationSettings', traits => ['NameInRequest']);
  has WebvttDestinationSettings => (is => 'ro', isa => 'Paws::MediaConvert::WebvttDestinationSettings', request_name => 'webvttDestinationSettings', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::CaptionDestinationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::CaptionDestinationSettings object:

  $service_obj->Method(Att1 => { BurninDestinationSettings => $value, ..., WebvttDestinationSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::CaptionDestinationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->BurninDestinationSettings

=head1 DESCRIPTION

Settings related to one captions tab on the MediaConvert console.
Usually, one captions tab corresponds to one output captions track.
Depending on your output captions format, one tab might correspond to a
set of output captions tracks. For more information, see
https://docs.aws.amazon.com/mediaconvert/latest/ug/including-captions.html.

=head1 ATTRIBUTES


=head2 BurninDestinationSettings => L<Paws::MediaConvert::BurninDestinationSettings>

Burn-in is a captions delivery method, rather than a captions format.
Burn-in writes the captions directly on your video frames, replacing
pixels of video content with the captions. Set up burn-in captions in
the same output as your video. For more information, see
https://docs.aws.amazon.com/mediaconvert/latest/ug/burn-in-output-captions.html.


=head2 DestinationType => Str

Specify the format for this set of captions on this output. The default
format is embedded without SCTE-20. Note that your choice of video
output container constrains your choice of output captions format. For
more information, see
https://docs.aws.amazon.com/mediaconvert/latest/ug/captions-support-tables.html.
If you are using SCTE-20 and you want to create an output that complies
with the SCTE-43 spec, choose SCTE-20 plus embedded. To create a
non-compliant output where the embedded captions come first, choose
Embedded plus SCTE-20.


=head2 DvbSubDestinationSettings => L<Paws::MediaConvert::DvbSubDestinationSettings>

Settings related to DVB-Sub captions. Set up DVB-Sub captions in the
same output as your video. For more information, see
https://docs.aws.amazon.com/mediaconvert/latest/ug/dvb-sub-output-captions.html.


=head2 EmbeddedDestinationSettings => L<Paws::MediaConvert::EmbeddedDestinationSettings>

Settings related to CEA/EIA-608 and CEA/EIA-708 (also called embedded
or ancillary) captions. Set up embedded captions in the same output as
your video. For more information, see
https://docs.aws.amazon.com/mediaconvert/latest/ug/embedded-output-captions.html.


=head2 ImscDestinationSettings => L<Paws::MediaConvert::ImscDestinationSettings>

Settings related to IMSC captions. IMSC is a sidecar format that holds
captions in a file that is separate from the video container. Set up
sidecar captions in the same output group, but different output from
your video. For more information, see
https://docs.aws.amazon.com/mediaconvert/latest/ug/ttml-and-webvtt-output-captions.html.


=head2 SccDestinationSettings => L<Paws::MediaConvert::SccDestinationSettings>

Settings related to SCC captions. SCC is a sidecar format that holds
captions in a file that is separate from the video container. Set up
sidecar captions in the same output group, but different output from
your video. For more information, see
https://docs.aws.amazon.com/mediaconvert/latest/ug/scc-srt-output-captions.html.


=head2 SrtDestinationSettings => L<Paws::MediaConvert::SrtDestinationSettings>

Settings related to SRT captions. SRT is a sidecar format that holds
captions in a file that is separate from the video container. Set up
sidecar captions in the same output group, but different output from
your video.


=head2 TeletextDestinationSettings => L<Paws::MediaConvert::TeletextDestinationSettings>

Settings related to teletext captions. Set up teletext captions in the
same output as your video. For more information, see
https://docs.aws.amazon.com/mediaconvert/latest/ug/teletext-output-captions.html.


=head2 TtmlDestinationSettings => L<Paws::MediaConvert::TtmlDestinationSettings>

Settings related to TTML captions. TTML is a sidecar format that holds
captions in a file that is separate from the video container. Set up
sidecar captions in the same output group, but different output from
your video. For more information, see
https://docs.aws.amazon.com/mediaconvert/latest/ug/ttml-and-webvtt-output-captions.html.


=head2 WebvttDestinationSettings => L<Paws::MediaConvert::WebvttDestinationSettings>

Settings related to WebVTT captions. WebVTT is a sidecar format that
holds captions in a file that is separate from the video container. Set
up sidecar captions in the same output group, but different output from
your video. For more information, see
https://docs.aws.amazon.com/mediaconvert/latest/ug/ttml-and-webvtt-output-captions.html.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

