# Generated by default/object.tt
package Paws::SageMaker::HyperParameterTuningJobConfig;
  use Moose;
  has HyperParameterTuningJobObjective => (is => 'ro', isa => 'Paws::SageMaker::HyperParameterTuningJobObjective');
  has ParameterRanges => (is => 'ro', isa => 'Paws::SageMaker::ParameterRanges');
  has RandomSeed => (is => 'ro', isa => 'Int');
  has ResourceLimits => (is => 'ro', isa => 'Paws::SageMaker::ResourceLimits', required => 1);
  has Strategy => (is => 'ro', isa => 'Str', required => 1);
  has StrategyConfig => (is => 'ro', isa => 'Paws::SageMaker::HyperParameterTuningJobStrategyConfig');
  has TrainingJobEarlyStoppingType => (is => 'ro', isa => 'Str');
  has TuningJobCompletionCriteria => (is => 'ro', isa => 'Paws::SageMaker::TuningJobCompletionCriteria');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::HyperParameterTuningJobConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::HyperParameterTuningJobConfig object:

  $service_obj->Method(Att1 => { HyperParameterTuningJobObjective => $value, ..., TuningJobCompletionCriteria => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::HyperParameterTuningJobConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->HyperParameterTuningJobObjective

=head1 DESCRIPTION

Configures a hyperparameter tuning job.

=head1 ATTRIBUTES


=head2 HyperParameterTuningJobObjective => L<Paws::SageMaker::HyperParameterTuningJobObjective>

The HyperParameterTuningJobObjective
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTuningJobObjective.html)
specifies the objective metric used to evaluate the performance of
training jobs launched by this tuning job.


=head2 ParameterRanges => L<Paws::SageMaker::ParameterRanges>

The ParameterRanges
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ParameterRanges.html)
object that specifies the ranges of hyperparameters that this tuning
job searches over to find the optimal configuration for the highest
model performance against your chosen objective metric.


=head2 RandomSeed => Int

A value used to initialize a pseudo-random number generator. Setting a
random seed and using the same seed later for the same tuning job will
allow hyperparameter optimization to find more a consistent
hyperparameter configuration between the two runs.


=head2 B<REQUIRED> ResourceLimits => L<Paws::SageMaker::ResourceLimits>

The ResourceLimits
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ResourceLimits.html)
object that specifies the maximum number of training and parallel
training jobs that can be used for this hyperparameter tuning job.


=head2 B<REQUIRED> Strategy => Str

Specifies how hyperparameter tuning chooses the combinations of
hyperparameter values to use for the training job it launches. For
information about search strategies, see How Hyperparameter Tuning
Works
(https://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-how-it-works.html).


=head2 StrategyConfig => L<Paws::SageMaker::HyperParameterTuningJobStrategyConfig>

The configuration for the C<Hyperband> optimization strategy. This
parameter should be provided only if C<Hyperband> is selected as the
strategy for C<HyperParameterTuningJobConfig>.


=head2 TrainingJobEarlyStoppingType => Str

Specifies whether to use early stopping for training jobs launched by
the hyperparameter tuning job. Because the C<Hyperband> strategy has
its own advanced internal early stopping mechanism,
C<TrainingJobEarlyStoppingType> must be C<OFF> to use C<Hyperband>.
This parameter can take on one of the following values (the default
value is C<OFF>):

=over

=item OFF

Training jobs launched by the hyperparameter tuning job do not use
early stopping.

=item AUTO

SageMaker stops training jobs launched by the hyperparameter tuning job
when they are unlikely to perform better than previously completed
training jobs. For more information, see Stop Training Jobs Early
(https://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-early-stopping.html).

=back



=head2 TuningJobCompletionCriteria => L<Paws::SageMaker::TuningJobCompletionCriteria>

The tuning job's completion criteria.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

