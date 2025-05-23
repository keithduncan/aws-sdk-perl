# Generated by default/object.tt
package Paws::Panorama::PackageImportJobOutputConfig;
  use Moose;
  has PackageVersionOutputConfig => (is => 'ro', isa => 'Paws::Panorama::PackageVersionOutputConfig');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::PackageImportJobOutputConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Panorama::PackageImportJobOutputConfig object:

  $service_obj->Method(Att1 => { PackageVersionOutputConfig => $value, ..., PackageVersionOutputConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Panorama::PackageImportJobOutputConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->PackageVersionOutputConfig

=head1 DESCRIPTION

An output configuration for a package import job.

=head1 ATTRIBUTES


=head2 PackageVersionOutputConfig => L<Paws::Panorama::PackageVersionOutputConfig>

The package version's output configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

