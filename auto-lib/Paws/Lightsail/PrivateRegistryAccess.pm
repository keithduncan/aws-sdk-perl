# Generated by default/object.tt
package Paws::Lightsail::PrivateRegistryAccess;
  use Moose;
  has EcrImagePullerRole => (is => 'ro', isa => 'Paws::Lightsail::ContainerServiceECRImagePullerRole', request_name => 'ecrImagePullerRole', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::PrivateRegistryAccess

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::PrivateRegistryAccess object:

  $service_obj->Method(Att1 => { EcrImagePullerRole => $value, ..., EcrImagePullerRole => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::PrivateRegistryAccess object:

  $result = $service_obj->Method(...);
  $result->Att1->EcrImagePullerRole

=head1 DESCRIPTION

Describes the configuration for an Amazon Lightsail container service
to access private container image repositories, such as Amazon Elastic
Container Registry (Amazon ECR) private repositories.

For more information, see Configuring access to an Amazon ECR private
repository for an Amazon Lightsail container service
(https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-container-service-ecr-private-repo-access)
in the I<Amazon Lightsail Developer Guide>.

=head1 ATTRIBUTES


=head2 EcrImagePullerRole => L<Paws::Lightsail::ContainerServiceECRImagePullerRole>

An object that describes the activation status of the role that you can
use to grant a Lightsail container service access to Amazon ECR private
repositories. If the role is activated, the Amazon Resource Name (ARN)
of the role is also listed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

