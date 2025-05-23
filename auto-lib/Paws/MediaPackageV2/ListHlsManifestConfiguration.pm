# Generated by default/object.tt
package Paws::MediaPackageV2::ListHlsManifestConfiguration;
  use Moose;
  has ChildManifestName => (is => 'ro', isa => 'Str');
  has ManifestName => (is => 'ro', isa => 'Str', required => 1);
  has Url => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::ListHlsManifestConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackageV2::ListHlsManifestConfiguration object:

  $service_obj->Method(Att1 => { ChildManifestName => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackageV2::ListHlsManifestConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ChildManifestName

=head1 DESCRIPTION

List the HTTP live streaming (HLS) manifest configuration.

=head1 ATTRIBUTES


=head2 ChildManifestName => Str

A short string that's appended to the endpoint URL. The child manifest
name creates a unique path to this endpoint. If you don't enter a
value, MediaPackage uses the default child manifest name, index_1. The
manifestName on the HLSManifest object overrides the manifestName you
provided on the originEndpoint object.


=head2 B<REQUIRED> ManifestName => Str

A short short string that's appended to the endpoint URL. The manifest
name creates a unique path to this endpoint. If you don't enter a
value, MediaPackage uses the default manifest name, index. MediaPackage
automatically inserts the format extension, such as .m3u8. You can't
use the same manifest name if you use HLS manifest and low-latency HLS
manifest. The manifestName on the HLSManifest object overrides the
manifestName you provided on the originEndpoint object.


=head2 Url => Str

The egress domain URL for stream delivery from MediaPackage.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackageV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

