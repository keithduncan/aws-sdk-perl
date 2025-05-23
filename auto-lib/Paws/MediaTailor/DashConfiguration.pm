# Generated by default/object.tt
package Paws::MediaTailor::DashConfiguration;
  use Moose;
  has ManifestEndpointPrefix => (is => 'ro', isa => 'Str');
  has MpdLocation => (is => 'ro', isa => 'Str');
  has OriginManifestType => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::DashConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaTailor::DashConfiguration object:

  $service_obj->Method(Att1 => { ManifestEndpointPrefix => $value, ..., OriginManifestType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaTailor::DashConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ManifestEndpointPrefix

=head1 DESCRIPTION

The configuration for DASH content.

=head1 ATTRIBUTES


=head2 ManifestEndpointPrefix => Str

The URL generated by MediaTailor to initiate a playback session. The
session uses server-side reporting. This setting is ignored in PUT
operations.


=head2 MpdLocation => Str

The setting that controls whether MediaTailor includes the Location tag
in DASH manifests. MediaTailor populates the Location tag with the URL
for manifest update requests, to be used by players that don't support
sticky redirects. Disable this if you have CDN routing rules set up for
accessing MediaTailor manifests, and you are either using client-side
reporting or your players support sticky HTTP redirects. Valid values
are C<DISABLED> and C<EMT_DEFAULT>. The C<EMT_DEFAULT> setting enables
the inclusion of the tag and is the default value.


=head2 OriginManifestType => Str

The setting that controls whether MediaTailor handles manifests from
the origin server as multi-period manifests or single-period manifests.
If your origin server produces single-period manifests, set this to
C<SINGLE_PERIOD>. The default setting is C<MULTI_PERIOD>. For
multi-period manifests, omit this setting or set it to C<MULTI_PERIOD>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

