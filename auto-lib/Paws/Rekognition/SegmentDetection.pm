# Generated by default/object.tt
package Paws::Rekognition::SegmentDetection;
  use Moose;
  has DurationFrames => (is => 'ro', isa => 'Int');
  has DurationMillis => (is => 'ro', isa => 'Int');
  has DurationSMPTE => (is => 'ro', isa => 'Str');
  has EndFrameNumber => (is => 'ro', isa => 'Int');
  has EndTimecodeSMPTE => (is => 'ro', isa => 'Str');
  has EndTimestampMillis => (is => 'ro', isa => 'Int');
  has ShotSegment => (is => 'ro', isa => 'Paws::Rekognition::ShotSegment');
  has StartFrameNumber => (is => 'ro', isa => 'Int');
  has StartTimecodeSMPTE => (is => 'ro', isa => 'Str');
  has StartTimestampMillis => (is => 'ro', isa => 'Int');
  has TechnicalCueSegment => (is => 'ro', isa => 'Paws::Rekognition::TechnicalCueSegment');
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::SegmentDetection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::SegmentDetection object:

  $service_obj->Method(Att1 => { DurationFrames => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::SegmentDetection object:

  $result = $service_obj->Method(...);
  $result->Att1->DurationFrames

=head1 DESCRIPTION

A technical cue or shot detection segment detected in a video. An array
of C<SegmentDetection> objects containing all segments detected in a
stored video is returned by GetSegmentDetection.

=head1 ATTRIBUTES


=head2 DurationFrames => Int

The duration of a video segment, expressed in frames.


=head2 DurationMillis => Int

The duration of the detected segment in milliseconds.


=head2 DurationSMPTE => Str

The duration of the timecode for the detected segment in SMPTE format.


=head2 EndFrameNumber => Int

The frame number at the end of a video segment, using a frame index
that starts with 0.


=head2 EndTimecodeSMPTE => Str

The frame-accurate SMPTE timecode, from the start of a video, for the
end of a detected segment. C<EndTimecode> is in I<HH:MM:SS:fr> format
(and I<;fr> for drop frame-rates).


=head2 EndTimestampMillis => Int

The end time of the detected segment, in milliseconds, from the start
of the video. This value is rounded down.


=head2 ShotSegment => L<Paws::Rekognition::ShotSegment>

If the segment is a shot detection, contains information about the shot
detection.


=head2 StartFrameNumber => Int

The frame number of the start of a video segment, using a frame index
that starts with 0.


=head2 StartTimecodeSMPTE => Str

The frame-accurate SMPTE timecode, from the start of a video, for the
start of a detected segment. C<StartTimecode> is in I<HH:MM:SS:fr>
format (and I<;fr> for drop frame-rates).


=head2 StartTimestampMillis => Int

The start time of the detected segment in milliseconds from the start
of the video. This value is rounded down. For example, if the actual
timestamp is 100.6667 milliseconds, Amazon Rekognition Video returns a
value of 100 millis.


=head2 TechnicalCueSegment => L<Paws::Rekognition::TechnicalCueSegment>

If the segment is a technical cue, contains information about the
technical cue.


=head2 Type => Str

The type of the segment. Valid values are C<TECHNICAL_CUE> and C<SHOT>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

