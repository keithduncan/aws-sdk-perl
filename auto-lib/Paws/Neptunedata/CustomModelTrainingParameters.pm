# Generated by default/object.tt
package Paws::Neptunedata::CustomModelTrainingParameters;
  use Moose;
  has SourceS3DirectoryPath => (is => 'ro', isa => 'Str', request_name => 'sourceS3DirectoryPath', traits => ['NameInRequest'], required => 1);
  has TrainingEntryPointScript => (is => 'ro', isa => 'Str', request_name => 'trainingEntryPointScript', traits => ['NameInRequest']);
  has TransformEntryPointScript => (is => 'ro', isa => 'Str', request_name => 'transformEntryPointScript', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::CustomModelTrainingParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Neptunedata::CustomModelTrainingParameters object:

  $service_obj->Method(Att1 => { SourceS3DirectoryPath => $value, ..., TransformEntryPointScript => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Neptunedata::CustomModelTrainingParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->SourceS3DirectoryPath

=head1 DESCRIPTION

Contains custom model training parameters. See Custom models in Neptune
ML
(https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-custom-models.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceS3DirectoryPath => Str

The path to the Amazon S3 location where the Python module implementing
your model is located. This must point to a valid existing Amazon S3
location that contains, at a minimum, a training script, a transform
script, and a C<model-hpo-configuration.json> file.


=head2 TrainingEntryPointScript => Str

The name of the entry point in your module of a script that performs
model training and takes hyperparameters as command-line arguments,
including fixed hyperparameters. The default is C<training.py>.


=head2 TransformEntryPointScript => Str

The name of the entry point in your module of a script that should be
run after the best model from the hyperparameter search has been
identified, to compute the model artifacts necessary for model
deployment. It should be able to run with no command-line arguments.The
default is C<transform.py>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

