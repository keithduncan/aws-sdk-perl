# Generated by default/object.tt
package Paws::SecurityHub::AwsEcsServiceDeploymentControllerDetails;
  use Moose;
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsEcsServiceDeploymentControllerDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsEcsServiceDeploymentControllerDetails object:

  $service_obj->Method(Att1 => { Type => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsEcsServiceDeploymentControllerDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Type

=head1 DESCRIPTION

Information about the deployment controller type that the service uses.

=head1 ATTRIBUTES


=head2 Type => Str

The rolling update (C<ECS>) deployment type replaces the current
running version of the container with the latest version.

The blue/green (C<CODE_DEPLOY>) deployment type uses the blue/green
deployment model that is powered by CodeDeploy. This deployment model a
new deployment of a service can be verified before production traffic
is sent to it.

The external (C<EXTERNAL>) deployment type allows the use of any
third-party deployment controller for full control over the deployment
process for an Amazon ECS service.

Valid values: C<ECS> | C<CODE_DEPLOY> | C<EXTERNAL>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

