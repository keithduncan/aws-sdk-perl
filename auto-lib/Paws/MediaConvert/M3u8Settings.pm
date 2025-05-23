# Generated by default/object.tt
package Paws::MediaConvert::M3u8Settings;
  use Moose;
  has AudioDuration => (is => 'ro', isa => 'Str', request_name => 'audioDuration', traits => ['NameInRequest']);
  has AudioFramesPerPes => (is => 'ro', isa => 'Int', request_name => 'audioFramesPerPes', traits => ['NameInRequest']);
  has AudioPids => (is => 'ro', isa => 'ArrayRef[Int]', request_name => 'audioPids', traits => ['NameInRequest']);
  has AudioPtsOffsetDelta => (is => 'ro', isa => 'Int', request_name => 'audioPtsOffsetDelta', traits => ['NameInRequest']);
  has DataPTSControl => (is => 'ro', isa => 'Str', request_name => 'dataPTSControl', traits => ['NameInRequest']);
  has MaxPcrInterval => (is => 'ro', isa => 'Int', request_name => 'maxPcrInterval', traits => ['NameInRequest']);
  has NielsenId3 => (is => 'ro', isa => 'Str', request_name => 'nielsenId3', traits => ['NameInRequest']);
  has PatInterval => (is => 'ro', isa => 'Int', request_name => 'patInterval', traits => ['NameInRequest']);
  has PcrControl => (is => 'ro', isa => 'Str', request_name => 'pcrControl', traits => ['NameInRequest']);
  has PcrPid => (is => 'ro', isa => 'Int', request_name => 'pcrPid', traits => ['NameInRequest']);
  has PmtInterval => (is => 'ro', isa => 'Int', request_name => 'pmtInterval', traits => ['NameInRequest']);
  has PmtPid => (is => 'ro', isa => 'Int', request_name => 'pmtPid', traits => ['NameInRequest']);
  has PrivateMetadataPid => (is => 'ro', isa => 'Int', request_name => 'privateMetadataPid', traits => ['NameInRequest']);
  has ProgramNumber => (is => 'ro', isa => 'Int', request_name => 'programNumber', traits => ['NameInRequest']);
  has PtsOffset => (is => 'ro', isa => 'Int', request_name => 'ptsOffset', traits => ['NameInRequest']);
  has PtsOffsetMode => (is => 'ro', isa => 'Str', request_name => 'ptsOffsetMode', traits => ['NameInRequest']);
  has Scte35Pid => (is => 'ro', isa => 'Int', request_name => 'scte35Pid', traits => ['NameInRequest']);
  has Scte35Source => (is => 'ro', isa => 'Str', request_name => 'scte35Source', traits => ['NameInRequest']);
  has TimedMetadata => (is => 'ro', isa => 'Str', request_name => 'timedMetadata', traits => ['NameInRequest']);
  has TimedMetadataPid => (is => 'ro', isa => 'Int', request_name => 'timedMetadataPid', traits => ['NameInRequest']);
  has TransportStreamId => (is => 'ro', isa => 'Int', request_name => 'transportStreamId', traits => ['NameInRequest']);
  has VideoPid => (is => 'ro', isa => 'Int', request_name => 'videoPid', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::M3u8Settings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::M3u8Settings object:

  $service_obj->Method(Att1 => { AudioDuration => $value, ..., VideoPid => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::M3u8Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioDuration

=head1 DESCRIPTION

These settings relate to the MPEG-2 transport stream (MPEG2-TS)
container for the MPEG2-TS segments in your HLS outputs.

=head1 ATTRIBUTES


=head2 AudioDuration => Str

Specify this setting only when your output will be consumed by a
downstream repackaging workflow that is sensitive to very small
duration differences between video and audio. For this situation,
choose Match video duration. In all other cases, keep the default
value, Default codec duration. When you choose Match video duration,
MediaConvert pads the output audio streams with silence or trims them
to ensure that the total duration of each audio stream is at least as
long as the total duration of the video stream. After padding or
trimming, the audio stream duration is no more than one frame longer
than the video stream. MediaConvert applies audio padding or trimming
only to the end of the last segment of the output. For unsegmented
outputs, MediaConvert adds padding only to the end of the file. When
you keep the default value, any minor discrepancies between audio and
video duration will depend on your output audio codec.


=head2 AudioFramesPerPes => Int

The number of audio frames to insert for each PES packet.


=head2 AudioPids => ArrayRef[Int]

Packet Identifier (PID) of the elementary audio stream(s) in the
transport stream. Multiple values are accepted, and can be entered in
ranges and/or by comma separation.


=head2 AudioPtsOffsetDelta => Int

Manually specify the difference in PTS offset that will be applied to
the audio track, in seconds or milliseconds, when you set PTS offset to
Seconds or Milliseconds. Enter an integer from -10000 to 10000. Leave
blank to keep the default value 0.


=head2 DataPTSControl => Str

If you select ALIGN_TO_VIDEO, MediaConvert writes captions and data
packets with Presentation Timestamp (PTS) values greater than or equal
to the first video packet PTS (MediaConvert drops captions and data
packets with lesser PTS values). Keep the default value AUTO to allow
all PTS values.


=head2 MaxPcrInterval => Int

Specify the maximum time, in milliseconds, between Program Clock
References (PCRs) inserted into the transport stream.


=head2 NielsenId3 => Str

If INSERT, Nielsen inaudible tones for media tracking will be detected
in the input audio and an equivalent ID3 tag will be inserted in the
output.


=head2 PatInterval => Int

The number of milliseconds between instances of this table in the
output transport stream.


=head2 PcrControl => Str

When set to PCR_EVERY_PES_PACKET a Program Clock Reference value is
inserted for every Packetized Elementary Stream (PES) header. This
parameter is effective only when the PCR PID is the same as the video
or audio elementary stream.


=head2 PcrPid => Int

Packet Identifier (PID) of the Program Clock Reference (PCR) in the
transport stream. When no value is given, the encoder will assign the
same value as the Video PID.


=head2 PmtInterval => Int

The number of milliseconds between instances of this table in the
output transport stream.


=head2 PmtPid => Int

Packet Identifier (PID) for the Program Map Table (PMT) in the
transport stream.


=head2 PrivateMetadataPid => Int

Packet Identifier (PID) of the private metadata stream in the transport
stream.


=head2 ProgramNumber => Int

The value of the program number field in the Program Map Table.


=head2 PtsOffset => Int

Manually specify the initial PTS offset, in seconds, when you set PTS
offset to Seconds. Enter an integer from 0 to 3600. Leave blank to keep
the default value 2.


=head2 PtsOffsetMode => Str

Specify the initial presentation timestamp (PTS) offset for your
transport stream output. To let MediaConvert automatically determine
the initial PTS offset: Keep the default value, Auto. We recommend that
you choose Auto for the widest player compatibility. The initial PTS
will be at least two seconds and vary depending on your output's
bitrate, HRD buffer size and HRD buffer initial fill percentage. To
manually specify an initial PTS offset: Choose Seconds or Milliseconds.
Then specify the number of seconds or milliseconds with PTS offset.


=head2 Scte35Pid => Int

Packet Identifier (PID) of the SCTE-35 stream in the transport stream.


=head2 Scte35Source => Str

For SCTE-35 markers from your input-- Choose Passthrough if you want
SCTE-35 markers that appear in your input to also appear in this
output. Choose None if you don't want SCTE-35 markers in this output.
For SCTE-35 markers from an ESAM XML document-- Choose None if you
don't want manifest conditioning. Choose Passthrough and choose Ad
markers if you do want manifest conditioning. In both cases, also
provide the ESAM XML as a string in the setting Signal processing
notification XML.


=head2 TimedMetadata => Str

Set ID3 metadata to Passthrough to include ID3 metadata in this output.
This includes ID3 metadata from the following features: ID3 timestamp
period, and Custom ID3 metadata inserter. To exclude this ID3 metadata
in this output: set ID3 metadata to None or leave blank.


=head2 TimedMetadataPid => Int

Packet Identifier (PID) of the ID3 metadata stream in the transport
stream.


=head2 TransportStreamId => Int

The value of the transport stream ID field in the Program Map Table.


=head2 VideoPid => Int

Packet Identifier (PID) of the elementary video stream in the transport
stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

