# Generated by default/object.tt
package Paws::MediaPackageV2::EncryptionContractConfiguration;
  use Moose;
  has PresetSpeke20Audio => (is => 'ro', isa => 'Str', required => 1);
  has PresetSpeke20Video => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::EncryptionContractConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackageV2::EncryptionContractConfiguration object:

  $service_obj->Method(Att1 => { PresetSpeke20Audio => $value, ..., PresetSpeke20Video => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackageV2::EncryptionContractConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->PresetSpeke20Audio

=head1 DESCRIPTION

Configure one or more content encryption keys for your endpoints that
use SPEKE Version 2.0. The encryption contract defines which content
keys are used to encrypt the audio and video tracks in your stream. To
configure the encryption contract, specify which audio and video
encryption presets to use.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PresetSpeke20Audio => Str

A collection of audio encryption presets.

Value description:

=over

=item *

PRESET-AUDIO-1 - Use one content key to encrypt all of the audio tracks
in your stream.

=item *

PRESET-AUDIO-2 - Use one content key to encrypt all of the stereo audio
tracks and one content key to encrypt all of the multichannel audio
tracks.

=item *

PRESET-AUDIO-3 - Use one content key to encrypt all of the stereo audio
tracks, one content key to encrypt all of the multichannel audio tracks
with 3 to 6 channels, and one content key to encrypt all of the
multichannel audio tracks with more than 6 channels.

=item *

SHARED - Use the same content key for all of the audio and video tracks
in your stream.

=item *

UNENCRYPTED - Don't encrypt any of the audio tracks in your stream.

=back



=head2 B<REQUIRED> PresetSpeke20Video => Str

A collection of video encryption presets.

Value description:

=over

=item *

PRESET-VIDEO-1 - Use one content key to encrypt all of the video tracks
in your stream.

=item *

PRESET-VIDEO-2 - Use one content key to encrypt all of the SD video
tracks and one content key for all HD and higher resolutions video
tracks.

=item *

PRESET-VIDEO-3 - Use one content key to encrypt all of the SD video
tracks, one content key for HD video tracks and one content key for all
UHD video tracks.

=item *

PRESET-VIDEO-4 - Use one content key to encrypt all of the SD video
tracks, one content key for HD video tracks, one content key for all
UHD1 video tracks and one content key for all UHD2 video tracks.

=item *

PRESET-VIDEO-5 - Use one content key to encrypt all of the SD video
tracks, one content key for HD1 video tracks, one content key for HD2
video tracks, one content key for all UHD1 video tracks and one content
key for all UHD2 video tracks.

=item *

PRESET-VIDEO-6 - Use one content key to encrypt all of the SD video
tracks, one content key for HD1 video tracks, one content key for HD2
video tracks and one content key for all UHD video tracks.

=item *

PRESET-VIDEO-7 - Use one content key to encrypt all of the SD+HD1 video
tracks, one content key for HD2 video tracks and one content key for
all UHD video tracks.

=item *

PRESET-VIDEO-8 - Use one content key to encrypt all of the SD+HD1 video
tracks, one content key for HD2 video tracks, one content key for all
UHD1 video tracks and one content key for all UHD2 video tracks.

=item *

SHARED - Use the same content key for all of the video and audio tracks
in your stream.

=item *

UNENCRYPTED - Don't encrypt any of the video tracks in your stream.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackageV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

