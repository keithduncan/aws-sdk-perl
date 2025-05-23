# Generated by default/object.tt
package Paws::MediaConvert::Vc3Settings;
  use Moose;
  has FramerateControl => (is => 'ro', isa => 'Str', request_name => 'framerateControl', traits => ['NameInRequest']);
  has FramerateConversionAlgorithm => (is => 'ro', isa => 'Str', request_name => 'framerateConversionAlgorithm', traits => ['NameInRequest']);
  has FramerateDenominator => (is => 'ro', isa => 'Int', request_name => 'framerateDenominator', traits => ['NameInRequest']);
  has FramerateNumerator => (is => 'ro', isa => 'Int', request_name => 'framerateNumerator', traits => ['NameInRequest']);
  has InterlaceMode => (is => 'ro', isa => 'Str', request_name => 'interlaceMode', traits => ['NameInRequest']);
  has ScanTypeConversionMode => (is => 'ro', isa => 'Str', request_name => 'scanTypeConversionMode', traits => ['NameInRequest']);
  has SlowPal => (is => 'ro', isa => 'Str', request_name => 'slowPal', traits => ['NameInRequest']);
  has Telecine => (is => 'ro', isa => 'Str', request_name => 'telecine', traits => ['NameInRequest']);
  has Vc3Class => (is => 'ro', isa => 'Str', request_name => 'vc3Class', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Vc3Settings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Vc3Settings object:

  $service_obj->Method(Att1 => { FramerateControl => $value, ..., Vc3Class => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Vc3Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->FramerateControl

=head1 DESCRIPTION

Required when you set Codec to the value VC3

=head1 ATTRIBUTES


=head2 FramerateControl => Str

If you are using the console, use the Framerate setting to specify the
frame rate for this output. If you want to keep the same frame rate as
the input video, choose Follow source. If you want to do frame rate
conversion, choose a frame rate from the dropdown list or choose
Custom. The framerates shown in the dropdown list are decimal
approximations of fractions. If you choose Custom, specify your frame
rate as a fraction.


=head2 FramerateConversionAlgorithm => Str

Choose the method that you want MediaConvert to use when increasing or
decreasing your video's frame rate. For numerically simple conversions,
such as 60 fps to 30 fps: We recommend that you keep the default value,
Drop duplicate. For numerically complex conversions, to avoid stutter:
Choose Interpolate. This results in a smooth picture, but might
introduce undesirable video artifacts. For complex frame rate
conversions, especially if your source video has already been converted
from its original cadence: Choose FrameFormer to do motion-compensated
interpolation. FrameFormer uses the best conversion method frame by
frame. Note that using FrameFormer increases the transcoding time and
incurs a significant add-on cost. When you choose FrameFormer, your
input video resolution must be at least 128x96. To create an output
with the same number of frames as your input: Choose Maintain frame
count. When you do, MediaConvert will not drop, interpolate, add, or
otherwise change the frame count from your input to your output. Note
that since the frame count is maintained, the duration of your output
will become shorter at higher frame rates and longer at lower frame
rates.


=head2 FramerateDenominator => Int

When you use the API for transcode jobs that use frame rate conversion,
specify the frame rate as a fraction. For example, 24000 / 1001 =
23.976 fps. Use FramerateDenominator to specify the denominator of this
fraction. In this example, use 1001 for the value of
FramerateDenominator. When you use the console for transcode jobs that
use frame rate conversion, provide the value as a decimal number for
Framerate. In this example, specify 23.976.


=head2 FramerateNumerator => Int

When you use the API for transcode jobs that use frame rate conversion,
specify the frame rate as a fraction. For example, 24000 / 1001 =
23.976 fps. Use FramerateNumerator to specify the numerator of this
fraction. In this example, use 24000 for the value of
FramerateNumerator. When you use the console for transcode jobs that
use frame rate conversion, provide the value as a decimal number for
Framerate. In this example, specify 23.976.


=head2 InterlaceMode => Str

Optional. Choose the scan line type for this output. If you don't
specify a value, MediaConvert will create a progressive output.


=head2 ScanTypeConversionMode => Str

Use this setting for interlaced outputs, when your output frame rate is
half of your input frame rate. In this situation, choose Optimized
interlacing to create a better quality interlaced output. In this case,
each progressive frame from the input corresponds to an interlaced
field in the output. Keep the default value, Basic interlacing, for all
other output frame rates. With basic interlacing, MediaConvert performs
any frame rate conversion first and then interlaces the frames. When
you choose Optimized interlacing and you set your output frame rate to
a value that isn't suitable for optimized interlacing, MediaConvert
automatically falls back to basic interlacing. Required settings: To
use optimized interlacing, you must set Telecine to None or Soft. You
can't use optimized interlacing for hard telecine outputs. You must
also set Interlace mode to a value other than Progressive.


=head2 SlowPal => Str

Ignore this setting unless your input frame rate is 23.976 or 24 frames
per second (fps). Enable slow PAL to create a 25 fps output by
relabeling the video frames and resampling your audio. Note that
enabling this setting will slightly reduce the duration of your video.
Related settings: You must also set Framerate to 25.


=head2 Telecine => Str

When you do frame rate conversion from 23.976 frames per second (fps)
to 29.97 fps, and your output scan type is interlaced, you can
optionally enable hard telecine to create a smoother picture. When you
keep the default value, None, MediaConvert does a standard frame rate
conversion to 29.97 without doing anything with the field polarity to
create a smoother picture.


=head2 Vc3Class => Str

Specify the VC3 class to choose the quality characteristics for this
output. VC3 class, together with the settings Framerate
(framerateNumerator and framerateDenominator) and Resolution (height
and width), determine your output bitrate. For example, say that your
video resolution is 1920x1080 and your framerate is 29.97. Then Class
145 gives you an output with a bitrate of approximately 145 Mbps and
Class 220 gives you and output with a bitrate of approximately 220
Mbps. VC3 class also specifies the color bit depth of your output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

