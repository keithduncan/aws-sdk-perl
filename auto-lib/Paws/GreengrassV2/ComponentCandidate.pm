# Generated by default/object.tt
package Paws::GreengrassV2::ComponentCandidate;
  use Moose;
  has ComponentName => (is => 'ro', isa => 'Str', request_name => 'componentName', traits => ['NameInRequest']);
  has ComponentVersion => (is => 'ro', isa => 'Str', request_name => 'componentVersion', traits => ['NameInRequest']);
  has VersionRequirements => (is => 'ro', isa => 'Paws::GreengrassV2::ComponentVersionRequirementMap', request_name => 'versionRequirements', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::ComponentCandidate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GreengrassV2::ComponentCandidate object:

  $service_obj->Method(Att1 => { ComponentName => $value, ..., VersionRequirements => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GreengrassV2::ComponentCandidate object:

  $result = $service_obj->Method(...);
  $result->Att1->ComponentName

=head1 DESCRIPTION

Contains information about a component that is a candidate to deploy to
a Greengrass core device.

=head1 ATTRIBUTES


=head2 ComponentName => Str

The name of the component.


=head2 ComponentVersion => Str

The version of the component.


=head2 VersionRequirements => L<Paws::GreengrassV2::ComponentVersionRequirementMap>

The version requirements for the component's dependencies. Greengrass
core devices get the version requirements from component recipes.

IoT Greengrass V2 uses semantic version constraints. For more
information, see Semantic Versioning (https://semver.org/).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GreengrassV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

