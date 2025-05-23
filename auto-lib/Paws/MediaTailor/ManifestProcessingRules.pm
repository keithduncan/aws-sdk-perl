# Generated by default/object.tt
package Paws::MediaTailor::ManifestProcessingRules;
  use Moose;
  has AdMarkerPassthrough => (is => 'ro', isa => 'Paws::MediaTailor::AdMarkerPassthrough');

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::ManifestProcessingRules

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaTailor::ManifestProcessingRules object:

  $service_obj->Method(Att1 => { AdMarkerPassthrough => $value, ..., AdMarkerPassthrough => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaTailor::ManifestProcessingRules object:

  $result = $service_obj->Method(...);
  $result->Att1->AdMarkerPassthrough

=head1 DESCRIPTION

The configuration for manifest processing rules. Manifest processing
rules enable customization of the personalized manifests created by
MediaTailor.

=head1 ATTRIBUTES


=head2 AdMarkerPassthrough => L<Paws::MediaTailor::AdMarkerPassthrough>

For HLS, when set to C<true>, MediaTailor passes through
C<EXT-X-CUE-IN>, C<EXT-X-CUE-OUT>, and C<EXT-X-SPLICEPOINT-SCTE35> ad
markers from the origin manifest to the MediaTailor personalized
manifest.

No logic is applied to these ad markers. For example, if
C<EXT-X-CUE-OUT> has a value of C<60>, but no ads are filled for that
ad break, MediaTailor will not set the value to C<0>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

