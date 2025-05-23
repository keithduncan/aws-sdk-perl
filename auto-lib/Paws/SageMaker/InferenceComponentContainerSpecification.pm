# Generated by default/object.tt
package Paws::SageMaker::InferenceComponentContainerSpecification;
  use Moose;
  has ArtifactUrl => (is => 'ro', isa => 'Str');
  has Environment => (is => 'ro', isa => 'Paws::SageMaker::EnvironmentMap');
  has Image => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::InferenceComponentContainerSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::InferenceComponentContainerSpecification object:

  $service_obj->Method(Att1 => { ArtifactUrl => $value, ..., Image => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::InferenceComponentContainerSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->ArtifactUrl

=head1 DESCRIPTION

Defines a container that provides the runtime environment for a model
that you deploy with an inference component.

=head1 ATTRIBUTES


=head2 ArtifactUrl => Str

The Amazon S3 path where the model artifacts, which result from model
training, are stored. This path must point to a single gzip compressed
tar archive (.tar.gz suffix).


=head2 Environment => L<Paws::SageMaker::EnvironmentMap>

The environment variables to set in the Docker container. Each key and
value in the Environment string-to-string map can have length of up to
1024. We support up to 16 entries in the map.


=head2 Image => Str

The Amazon Elastic Container Registry (Amazon ECR) path where the
Docker image for the model is stored.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

