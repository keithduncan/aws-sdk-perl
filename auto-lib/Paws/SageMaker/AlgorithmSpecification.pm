# Generated by default/object.tt
package Paws::SageMaker::AlgorithmSpecification;
  use Moose;
  has AlgorithmName => (is => 'ro', isa => 'Str');
  has ContainerArguments => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ContainerEntrypoint => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnableSageMakerMetricsTimeSeries => (is => 'ro', isa => 'Bool');
  has MetricDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::MetricDefinition]');
  has TrainingImage => (is => 'ro', isa => 'Str');
  has TrainingImageConfig => (is => 'ro', isa => 'Paws::SageMaker::TrainingImageConfig');
  has TrainingInputMode => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AlgorithmSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::AlgorithmSpecification object:

  $service_obj->Method(Att1 => { AlgorithmName => $value, ..., TrainingInputMode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::AlgorithmSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->AlgorithmName

=head1 DESCRIPTION

Specifies the training algorithm to use in a CreateTrainingJob
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateTrainingJob.html)
request.

SageMaker uses its own SageMaker account credentials to pull and access
built-in algorithms so built-in algorithms are universally accessible
across all Amazon Web Services accounts. As a result, built-in
algorithms have standard, unrestricted access. You cannot restrict
built-in algorithms using IAM roles. Use custom algorithms if you
require specific access controls.

For more information about algorithms provided by SageMaker, see
Algorithms
(https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html). For
information about using your own algorithms, see Using Your Own
Algorithms with Amazon SageMaker
(https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html).

=head1 ATTRIBUTES


=head2 AlgorithmName => Str

The name of the algorithm resource to use for the training job. This
must be an algorithm resource that you created or subscribe to on
Amazon Web Services Marketplace.

You must specify either the algorithm name to the C<AlgorithmName>
parameter or the image URI of the algorithm container to the
C<TrainingImage> parameter.

Note that the C<AlgorithmName> parameter is mutually exclusive with the
C<TrainingImage> parameter. If you specify a value for the
C<AlgorithmName> parameter, you can't specify a value for
C<TrainingImage>, and vice versa.

If you specify values for both parameters, the training job might
break; if you don't specify any value for both parameters, the training
job might raise a C<null> error.


=head2 ContainerArguments => ArrayRef[Str|Undef]

The arguments for a container used to run a training job. See How
Amazon SageMaker Runs Your Training Image
(https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-training-algo-dockerfile.html)
for additional information.


=head2 ContainerEntrypoint => ArrayRef[Str|Undef]

The entrypoint script for a Docker container
(https://docs.docker.com/engine/reference/builder/) used to run a
training job. This script takes precedence over the default train
processing instructions. See How Amazon SageMaker Runs Your Training
Image
(https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-training-algo-dockerfile.html)
for more information.


=head2 EnableSageMakerMetricsTimeSeries => Bool

To generate and save time-series metrics during training, set to
C<true>. The default is C<false> and time-series metrics aren't
generated except in the following cases:

=over

=item *

You use one of the SageMaker built-in algorithms

=item *

You use one of the following Prebuilt SageMaker Docker Images
(https://docs.aws.amazon.com/sagemaker/latest/dg/pre-built-containers-frameworks-deep-learning.html):

=over

=item *

Tensorflow (version E<gt>= 1.15)

=item *

MXNet (version E<gt>= 1.6)

=item *

PyTorch (version E<gt>= 1.3)

=back

=item *

You specify at least one MetricDefinition
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_MetricDefinition.html)

=back



=head2 MetricDefinitions => ArrayRef[L<Paws::SageMaker::MetricDefinition>]

A list of metric definition objects. Each object specifies the metric
name and regular expressions used to parse algorithm logs. SageMaker
publishes each metric to Amazon CloudWatch.


=head2 TrainingImage => Str

The registry path of the Docker image that contains the training
algorithm. For information about docker registry paths for SageMaker
built-in algorithms, see Docker Registry Paths and Example Code
(https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-algo-docker-registry-paths.html)
in the I<Amazon SageMaker developer guide>. SageMaker supports both
C<registry/repository[:tag]> and C<registry/repository[@digest]> image
path formats. For more information about using your custom training
container, see Using Your Own Algorithms with Amazon SageMaker
(https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms.html).

You must specify either the algorithm name to the C<AlgorithmName>
parameter or the image URI of the algorithm container to the
C<TrainingImage> parameter.

For more information, see the note in the C<AlgorithmName> parameter
description.


=head2 TrainingImageConfig => L<Paws::SageMaker::TrainingImageConfig>

The configuration to use an image from a private Docker registry for a
training job.


=head2 B<REQUIRED> TrainingInputMode => Str





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

