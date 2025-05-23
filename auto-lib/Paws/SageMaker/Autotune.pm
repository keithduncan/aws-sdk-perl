# Generated by default/object.tt
package Paws::SageMaker::Autotune;
  use Moose;
  has Mode => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::Autotune

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::Autotune object:

  $service_obj->Method(Att1 => { Mode => $value, ..., Mode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::Autotune object:

  $result = $service_obj->Method(...);
  $result->Att1->Mode

=head1 DESCRIPTION

A flag to indicate if you want to use Autotune to automatically find
optimal values for the following fields:

=over

=item *

ParameterRanges
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTuningJobConfig.html#sagemaker-Type-HyperParameterTuningJobConfig-ParameterRanges):
The names and ranges of parameters that a hyperparameter tuning job can
optimize.

=item *

ResourceLimits
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ResourceLimits.html):
The maximum resources that can be used for a training job. These
resources include the maximum number of training jobs, the maximum
runtime of a tuning job, and the maximum number of training jobs to run
at the same time.

=item *

TrainingJobEarlyStoppingType
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTuningJobConfig.html#sagemaker-Type-HyperParameterTuningJobConfig-TrainingJobEarlyStoppingType):
A flag that specifies whether or not to use early stopping for training
jobs launched by a hyperparameter tuning job.

=item *

RetryStrategy
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTrainingJobDefinition.html#sagemaker-Type-HyperParameterTrainingJobDefinition-RetryStrategy):
The number of times to retry a training job.

=item *

Strategy
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTuningJobConfig.html):
Specifies how hyperparameter tuning chooses the combinations of
hyperparameter values to use for the training jobs that it launches.

=item *

ConvergenceDetected
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ConvergenceDetected.html):
A flag to indicate that Automatic model tuning (AMT) has detected model
convergence.

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> Mode => Str

Set C<Mode> to C<Enabled> if you want to use Autotune.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

