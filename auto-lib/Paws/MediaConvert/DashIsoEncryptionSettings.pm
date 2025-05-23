# Generated by default/object.tt
package Paws::MediaConvert::DashIsoEncryptionSettings;
  use Moose;
  has PlaybackDeviceCompatibility => (is => 'ro', isa => 'Str', request_name => 'playbackDeviceCompatibility', traits => ['NameInRequest']);
  has SpekeKeyProvider => (is => 'ro', isa => 'Paws::MediaConvert::SpekeKeyProvider', request_name => 'spekeKeyProvider', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::DashIsoEncryptionSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::DashIsoEncryptionSettings object:

  $service_obj->Method(Att1 => { PlaybackDeviceCompatibility => $value, ..., SpekeKeyProvider => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::DashIsoEncryptionSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->PlaybackDeviceCompatibility

=head1 DESCRIPTION

Specifies DRM settings for DASH outputs.

=head1 ATTRIBUTES


=head2 PlaybackDeviceCompatibility => Str

This setting can improve the compatibility of your output with video
players on obsolete devices. It applies only to DASH H.264 outputs with
DRM encryption. Choose Unencrypted SEI only to correct problems with
playback on older devices. Otherwise, keep the default setting CENC v1.
If you choose Unencrypted SEI, for that output, the service will
exclude the access unit delimiter and will leave the SEI NAL units
unencrypted.


=head2 SpekeKeyProvider => L<Paws::MediaConvert::SpekeKeyProvider>

If your output group type is HLS, DASH, or Microsoft Smooth, use these
settings when doing DRM encryption with a SPEKE-compliant key provider.
If your output group type is CMAF, use the SpekeKeyProviderCmaf
settings instead.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

