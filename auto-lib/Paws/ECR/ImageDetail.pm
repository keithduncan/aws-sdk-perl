# Generated by default/object.tt
package Paws::ECR::ImageDetail;
  use Moose;
  has ArtifactMediaType => (is => 'ro', isa => 'Str', request_name => 'artifactMediaType', traits => ['NameInRequest']);
  has ImageDigest => (is => 'ro', isa => 'Str', request_name => 'imageDigest', traits => ['NameInRequest']);
  has ImageManifestMediaType => (is => 'ro', isa => 'Str', request_name => 'imageManifestMediaType', traits => ['NameInRequest']);
  has ImagePushedAt => (is => 'ro', isa => 'Str', request_name => 'imagePushedAt', traits => ['NameInRequest']);
  has ImageScanFindingsSummary => (is => 'ro', isa => 'Paws::ECR::ImageScanFindingsSummary', request_name => 'imageScanFindingsSummary', traits => ['NameInRequest']);
  has ImageScanStatus => (is => 'ro', isa => 'Paws::ECR::ImageScanStatus', request_name => 'imageScanStatus', traits => ['NameInRequest']);
  has ImageSizeInBytes => (is => 'ro', isa => 'Int', request_name => 'imageSizeInBytes', traits => ['NameInRequest']);
  has ImageTags => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'imageTags', traits => ['NameInRequest']);
  has LastRecordedPullTime => (is => 'ro', isa => 'Str', request_name => 'lastRecordedPullTime', traits => ['NameInRequest']);
  has RegistryId => (is => 'ro', isa => 'Str', request_name => 'registryId', traits => ['NameInRequest']);
  has RepositoryName => (is => 'ro', isa => 'Str', request_name => 'repositoryName', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::ImageDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECR::ImageDetail object:

  $service_obj->Method(Att1 => { ArtifactMediaType => $value, ..., RepositoryName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECR::ImageDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ArtifactMediaType

=head1 DESCRIPTION

An object that describes an image returned by a DescribeImages
operation.

=head1 ATTRIBUTES


=head2 ArtifactMediaType => Str

The artifact media type of the image.


=head2 ImageDigest => Str

The C<sha256> digest of the image manifest.


=head2 ImageManifestMediaType => Str

The media type of the image manifest.


=head2 ImagePushedAt => Str

The date and time, expressed in standard JavaScript date format, at
which the current image was pushed to the repository.


=head2 ImageScanFindingsSummary => L<Paws::ECR::ImageScanFindingsSummary>

A summary of the last completed image scan.


=head2 ImageScanStatus => L<Paws::ECR::ImageScanStatus>

The current state of the scan.


=head2 ImageSizeInBytes => Int

The size, in bytes, of the image in the repository.

If the image is a manifest list, this will be the max size of all
manifests in the list.

Starting with Docker version 1.9, the Docker client compresses image
layers before pushing them to a V2 Docker registry. The output of the
C<docker images> command shows the uncompressed image size. Therefore,
Docker might return a larger image than the image sizes returned by
DescribeImages.


=head2 ImageTags => ArrayRef[Str|Undef]

The list of tags associated with this image.


=head2 LastRecordedPullTime => Str

The date and time, expressed in standard JavaScript date format, when
Amazon ECR recorded the last image pull.

Amazon ECR refreshes the last image pull timestamp at least once every
24 hours. For example, if you pull an image once a day then the
C<lastRecordedPullTime> timestamp will indicate the exact time that the
image was last pulled. However, if you pull an image once an hour,
because Amazon ECR refreshes the C<lastRecordedPullTime> timestamp at
least once every 24 hours, the result may not be the exact time that
the image was last pulled.


=head2 RegistryId => Str

The Amazon Web Services account ID associated with the registry to
which this image belongs.


=head2 RepositoryName => Str

The name of the repository to which this image belongs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

