# Generated by default/object.tt
package Paws::MediaConvert::Output;
  use Moose;
  has AudioDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::AudioDescription]', request_name => 'audioDescriptions', traits => ['NameInRequest']);
  has CaptionDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::CaptionDescription]', request_name => 'captionDescriptions', traits => ['NameInRequest']);
  has ContainerSettings => (is => 'ro', isa => 'Paws::MediaConvert::ContainerSettings', request_name => 'containerSettings', traits => ['NameInRequest']);
  has Extension => (is => 'ro', isa => 'Str', request_name => 'extension', traits => ['NameInRequest']);
  has NameModifier => (is => 'ro', isa => 'Str', request_name => 'nameModifier', traits => ['NameInRequest']);
  has OutputSettings => (is => 'ro', isa => 'Paws::MediaConvert::OutputSettings', request_name => 'outputSettings', traits => ['NameInRequest']);
  has Preset => (is => 'ro', isa => 'Str', request_name => 'preset', traits => ['NameInRequest']);
  has VideoDescription => (is => 'ro', isa => 'Paws::MediaConvert::VideoDescription', request_name => 'videoDescription', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::Output

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::Output object:

  $service_obj->Method(Att1 => { AudioDescriptions => $value, ..., VideoDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::Output object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioDescriptions

=head1 DESCRIPTION

Each output in your job is a collection of settings that describes how
you want MediaConvert to encode a single output file or stream. For
more information, see
https://docs.aws.amazon.com/mediaconvert/latest/ug/create-outputs.html.

=head1 ATTRIBUTES


=head2 AudioDescriptions => ArrayRef[L<Paws::MediaConvert::AudioDescription>]

Contains groups of audio encoding settings organized by audio codec.
Include one instance of per output. Can contain multiple groups of
encoding settings.


=head2 CaptionDescriptions => ArrayRef[L<Paws::MediaConvert::CaptionDescription>]

Contains groups of captions settings. For each output that has
captions, include one instance of CaptionDescriptions. Can contain
multiple groups of captions settings.


=head2 ContainerSettings => L<Paws::MediaConvert::ContainerSettings>

Container specific settings.


=head2 Extension => Str

Use Extension to specify the file extension for outputs in File output
groups. If you do not specify a value, the service will use default
extensions by container type as follows * MPEG-2 transport stream, m2ts
* Quicktime, mov * MXF container, mxf * MPEG-4 container, mp4 * WebM
container, webm * Animated GIF container, gif * No Container, the
service will use codec extensions (e.g. AAC, H265, H265, AC3)


=head2 NameModifier => Str

Use Name modifier to have the service add a string to the end of each
output filename. You specify the base filename as part of your
destination URI. When you create multiple outputs in the same output
group, Name modifier is required. Name modifier also accepts format
identifiers. For DASH ISO outputs, if you use the format identifiers
$Number$ or $Time$ in one output, you must use them in the same way in
all outputs of the output group.


=head2 OutputSettings => L<Paws::MediaConvert::OutputSettings>

Specific settings for this type of output.


=head2 Preset => Str

Use Preset to specify a preset for your transcoding settings. Provide
the system or custom preset name. You can specify either Preset or
Container settings, but not both.


=head2 VideoDescription => L<Paws::MediaConvert::VideoDescription>

VideoDescription contains a group of video encoding settings. The
specific video settings depend on the video codec that you choose for
the property codec. Include one instance of VideoDescription per
output.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

