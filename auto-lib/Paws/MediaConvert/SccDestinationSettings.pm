# Generated by default/object.tt
package Paws::MediaConvert::SccDestinationSettings;
  use Moose;
  has Framerate => (is => 'ro', isa => 'Str', request_name => 'framerate', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::SccDestinationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::SccDestinationSettings object:

  $service_obj->Method(Att1 => { Framerate => $value, ..., Framerate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::SccDestinationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Framerate

=head1 DESCRIPTION

Settings related to SCC captions. SCC is a sidecar format that holds
captions in a file that is separate from the video container. Set up
sidecar captions in the same output group, but different output from
your video. For more information, see
https://docs.aws.amazon.com/mediaconvert/latest/ug/scc-srt-output-captions.html.

=head1 ATTRIBUTES


=head2 Framerate => Str

Set Framerate to make sure that the captions and the video are
synchronized in the output. Specify a frame rate that matches the frame
rate of the associated video. If the video frame rate is 29.97, choose
29.97 dropframe only if the video has video_insertion=true and
drop_frame_timecode=true; otherwise, choose 29.97 non-dropframe.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

