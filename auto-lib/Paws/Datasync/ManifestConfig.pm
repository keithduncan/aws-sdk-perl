# Generated by default/object.tt
package Paws::Datasync::ManifestConfig;
  use Moose;
  has Action => (is => 'ro', isa => 'Str');
  has Format => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Paws::Datasync::SourceManifestConfig');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::ManifestConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Datasync::ManifestConfig object:

  $service_obj->Method(Att1 => { Action => $value, ..., Source => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Datasync::ManifestConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Configures a manifest, which is a list of files or objects that you
want DataSync to transfer. For more information and configuration
examples, see Specifying what DataSync transfers by using a manifest
(https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html).

=head1 ATTRIBUTES


=head2 Action => Str

Specifies what DataSync uses the manifest for.


=head2 Format => Str

Specifies the file format of your manifest. For more information, see
Creating a manifest
(https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html#transferring-with-manifest-create).


=head2 Source => L<Paws::Datasync::SourceManifestConfig>

Specifies the manifest that you want DataSync to use and where it's
hosted.

You must specify this parameter if you're configuring a new manifest on
or after February 7, 2024.

If you don't, you'll get a 400 status code and C<ValidationException>
error stating that you're missing the IAM role for DataSync to access
the S3 bucket where you're hosting your manifest. For more information,
see Providing DataSync access to your manifest
(https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html#transferring-with-manifest-access).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

