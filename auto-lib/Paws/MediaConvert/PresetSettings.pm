# Generated by default/object.tt
package Paws::MediaConvert::PresetSettings;
  use Moose;
  has AudioDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::AudioDescription]', request_name => 'audioDescriptions', traits => ['NameInRequest']);
  has CaptionDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::CaptionDescriptionPreset]', request_name => 'captionDescriptions', traits => ['NameInRequest']);
  has ContainerSettings => (is => 'ro', isa => 'Paws::MediaConvert::ContainerSettings', request_name => 'containerSettings', traits => ['NameInRequest']);
  has VideoDescription => (is => 'ro', isa => 'Paws::MediaConvert::VideoDescription', request_name => 'videoDescription', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::PresetSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::PresetSettings object:

  $service_obj->Method(Att1 => { AudioDescriptions => $value, ..., VideoDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::PresetSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioDescriptions

=head1 DESCRIPTION

Settings for preset

=head1 ATTRIBUTES


=head2 AudioDescriptions => ArrayRef[L<Paws::MediaConvert::AudioDescription>]

Contains groups of audio encoding settings organized by audio codec.
Include one instance of per output. Can contain multiple groups of
encoding settings.


=head2 CaptionDescriptions => ArrayRef[L<Paws::MediaConvert::CaptionDescriptionPreset>]

This object holds groups of settings related to captions for one
output. For each output that has captions, include one instance of
CaptionDescriptions.


=head2 ContainerSettings => L<Paws::MediaConvert::ContainerSettings>

Container specific settings.


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

