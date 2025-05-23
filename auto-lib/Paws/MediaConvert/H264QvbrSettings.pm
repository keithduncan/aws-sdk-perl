# Generated by default/object.tt
package Paws::MediaConvert::H264QvbrSettings;
  use Moose;
  has MaxAverageBitrate => (is => 'ro', isa => 'Int', request_name => 'maxAverageBitrate', traits => ['NameInRequest']);
  has QvbrQualityLevel => (is => 'ro', isa => 'Int', request_name => 'qvbrQualityLevel', traits => ['NameInRequest']);
  has QvbrQualityLevelFineTune => (is => 'ro', isa => 'Num', request_name => 'qvbrQualityLevelFineTune', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::H264QvbrSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::H264QvbrSettings object:

  $service_obj->Method(Att1 => { MaxAverageBitrate => $value, ..., QvbrQualityLevelFineTune => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::H264QvbrSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxAverageBitrate

=head1 DESCRIPTION

Settings for quality-defined variable bitrate encoding with the H.264
codec. Use these settings only when you set QVBR for Rate control mode.

=head1 ATTRIBUTES


=head2 MaxAverageBitrate => Int

Use this setting only when Rate control mode is QVBR and Quality tuning
level is Multi-pass HQ. For Max average bitrate values suited to the
complexity of your input video, the service limits the average bitrate
of the video part of this output to the value that you choose. That is,
the total size of the video element is less than or equal to the value
you set multiplied by the number of seconds of encoded output.


=head2 QvbrQualityLevel => Int

Use this setting only when you set Rate control mode to QVBR. Specify
the target quality level for this output. MediaConvert determines the
right number of bits to use for each part of the video to maintain the
video quality that you specify. When you keep the default value, AUTO,
MediaConvert picks a quality level for you, based on characteristics of
your input video. If you prefer to specify a quality level, specify a
number from 1 through 10. Use higher numbers for greater quality. Level
10 results in nearly lossless compression. The quality level for most
broadcast-quality transcodes is between 6 and 9. Optionally, to specify
a value between whole numbers, also provide a value for the setting
qvbrQualityLevelFineTune. For example, if you want your QVBR quality
level to be 7.33, set qvbrQualityLevel to 7 and set
qvbrQualityLevelFineTune to .33.


=head2 QvbrQualityLevelFineTune => Num

Optional. Specify a value here to set the QVBR quality to a level that
is between whole numbers. For example, if you want your QVBR quality
level to be 7.33, set qvbrQualityLevel to 7 and set
qvbrQualityLevelFineTune to .33. MediaConvert rounds your QVBR quality
level to the nearest third of a whole number. For example, if you set
qvbrQualityLevel to 7 and you set qvbrQualityLevelFineTune to .25, your
actual QVBR quality level is 7.33.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

