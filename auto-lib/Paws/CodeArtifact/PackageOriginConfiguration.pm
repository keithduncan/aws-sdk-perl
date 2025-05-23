# Generated by default/object.tt
package Paws::CodeArtifact::PackageOriginConfiguration;
  use Moose;
  has Restrictions => (is => 'ro', isa => 'Paws::CodeArtifact::PackageOriginRestrictions', request_name => 'restrictions', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::PackageOriginConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeArtifact::PackageOriginConfiguration object:

  $service_obj->Method(Att1 => { Restrictions => $value, ..., Restrictions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeArtifact::PackageOriginConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Restrictions

=head1 DESCRIPTION

Details about the package origin configuration of a package.

=head1 ATTRIBUTES


=head2 Restrictions => L<Paws::CodeArtifact::PackageOriginRestrictions>

A C<PackageOriginRestrictions> object that contains information about
the upstream and publish package origin configuration for the package.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeArtifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

