# Generated by default/object.tt
package Paws::Datasync::SourceManifestConfig;
  use Moose;
  has S3 => (is => 'ro', isa => 'Paws::Datasync::S3ManifestConfig', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::SourceManifestConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Datasync::SourceManifestConfig object:

  $service_obj->Method(Att1 => { S3 => $value, ..., S3 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Datasync::SourceManifestConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->S3

=head1 DESCRIPTION

Specifies the manifest that you want DataSync to use and where it's
hosted. For more information and configuration examples, see Specifying
what DataSync transfers by using a manifest
(https://docs.aws.amazon.com/datasync/latest/userguide/transferring-with-manifest.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3 => L<Paws::Datasync::S3ManifestConfig>

Specifies the S3 bucket where you're hosting your manifest.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

