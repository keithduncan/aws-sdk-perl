# Generated by default/object.tt
package Paws::MediaConvert::AvcIntraUhdSettings;
  use Moose;
  has QualityTuningLevel => (is => 'ro', isa => 'Str', request_name => 'qualityTuningLevel', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::AvcIntraUhdSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::AvcIntraUhdSettings object:

  $service_obj->Method(Att1 => { QualityTuningLevel => $value, ..., QualityTuningLevel => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::AvcIntraUhdSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->QualityTuningLevel

=head1 DESCRIPTION

Optional when you set AVC-Intra class to Class 4K/2K. When you set
AVC-Intra class to a different value, this object isn't allowed.

=head1 ATTRIBUTES


=head2 QualityTuningLevel => Str

Optional. Use Quality tuning level to choose how many transcoding
passes MediaConvert does with your video. When you choose Multi-pass,
your video quality is better and your output bitrate is more accurate.
That is, the actual bitrate of your output is closer to the target
bitrate defined in the specification. When you choose Single-pass, your
encoding time is faster. The default behavior is Single-pass.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

