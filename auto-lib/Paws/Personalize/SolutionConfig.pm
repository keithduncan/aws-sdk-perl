# Generated by default/object.tt
package Paws::Personalize::SolutionConfig;
  use Moose;
  has AlgorithmHyperParameters => (is => 'ro', isa => 'Paws::Personalize::HyperParameters', request_name => 'algorithmHyperParameters', traits => ['NameInRequest']);
  has AutoMLConfig => (is => 'ro', isa => 'Paws::Personalize::AutoMLConfig', request_name => 'autoMLConfig', traits => ['NameInRequest']);
  has AutoTrainingConfig => (is => 'ro', isa => 'Paws::Personalize::AutoTrainingConfig', request_name => 'autoTrainingConfig', traits => ['NameInRequest']);
  has EventsConfig => (is => 'ro', isa => 'Paws::Personalize::EventsConfig', request_name => 'eventsConfig', traits => ['NameInRequest']);
  has EventValueThreshold => (is => 'ro', isa => 'Str', request_name => 'eventValueThreshold', traits => ['NameInRequest']);
  has FeatureTransformationParameters => (is => 'ro', isa => 'Paws::Personalize::FeatureTransformationParameters', request_name => 'featureTransformationParameters', traits => ['NameInRequest']);
  has HpoConfig => (is => 'ro', isa => 'Paws::Personalize::HPOConfig', request_name => 'hpoConfig', traits => ['NameInRequest']);
  has OptimizationObjective => (is => 'ro', isa => 'Paws::Personalize::OptimizationObjective', request_name => 'optimizationObjective', traits => ['NameInRequest']);
  has TrainingDataConfig => (is => 'ro', isa => 'Paws::Personalize::TrainingDataConfig', request_name => 'trainingDataConfig', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::SolutionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::SolutionConfig object:

  $service_obj->Method(Att1 => { AlgorithmHyperParameters => $value, ..., TrainingDataConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::SolutionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AlgorithmHyperParameters

=head1 DESCRIPTION

Describes the configuration properties for the solution.

=head1 ATTRIBUTES


=head2 AlgorithmHyperParameters => L<Paws::Personalize::HyperParameters>

Lists the algorithm hyperparameters and their values.


=head2 AutoMLConfig => L<Paws::Personalize::AutoMLConfig>

The AutoMLConfig
(https://docs.aws.amazon.com/personalize/latest/dg/API_AutoMLConfig.html)
object containing a list of recipes to search when AutoML is performed.


=head2 AutoTrainingConfig => L<Paws::Personalize::AutoTrainingConfig>

Specifies the automatic training configuration to use.


=head2 EventsConfig => L<Paws::Personalize::EventsConfig>

Describes the configuration of an event, which includes a list of event
parameters. You can specify up to 10 event parameters. Events are used
in solution creation.


=head2 EventValueThreshold => Str

Only events with a value greater than or equal to this threshold are
used for training a model.


=head2 FeatureTransformationParameters => L<Paws::Personalize::FeatureTransformationParameters>

Lists the feature transformation parameters.


=head2 HpoConfig => L<Paws::Personalize::HPOConfig>

Describes the properties for hyperparameter optimization (HPO).


=head2 OptimizationObjective => L<Paws::Personalize::OptimizationObjective>

Describes the additional objective for the solution, such as maximizing
streaming minutes or increasing revenue. For more information see
Optimizing a solution
(https://docs.aws.amazon.com/personalize/latest/dg/optimizing-solution-for-objective.html).


=head2 TrainingDataConfig => L<Paws::Personalize::TrainingDataConfig>

Specifies the training data configuration to use when creating a custom
solution version (trained model).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

