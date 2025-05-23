# Generated by default/object.tt
package Paws::CodeArtifact::PackageDescription;
  use Moose;
  has Format => (is => 'ro', isa => 'Str', request_name => 'format', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Namespace => (is => 'ro', isa => 'Str', request_name => 'namespace', traits => ['NameInRequest']);
  has OriginConfiguration => (is => 'ro', isa => 'Paws::CodeArtifact::PackageOriginConfiguration', request_name => 'originConfiguration', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::PackageDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeArtifact::PackageDescription object:

  $service_obj->Method(Att1 => { Format => $value, ..., OriginConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeArtifact::PackageDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Format

=head1 DESCRIPTION

Details about a package.

=head1 ATTRIBUTES


=head2 Format => Str

A format that specifies the type of the package.


=head2 Name => Str

The name of the package.


=head2 Namespace => Str

The namespace of the package. The package component that specifies its
namespace depends on its type. For example:

=over

=item *

The namespace of a Maven package version is its C<groupId>.

=item *

The namespace of an npm or Swift package version is its C<scope>.

=item *

The namespace of a generic package is its C<namespace>.

=item *

Python, NuGet, Ruby, and Cargo package versions do not contain a
corresponding component, package versions of those formats do not have
a namespace.

=back



=head2 OriginConfiguration => L<Paws::CodeArtifact::PackageOriginConfiguration>

The package origin configuration for the package.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

