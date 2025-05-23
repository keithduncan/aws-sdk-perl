# Generated by default/object.tt
package Paws::LookoutEquipment::ModelSummary;
  use Moose;
  has ActiveModelVersion => (is => 'ro', isa => 'Int');
  has ActiveModelVersionArn => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DatasetArn => (is => 'ro', isa => 'Str');
  has DatasetName => (is => 'ro', isa => 'Str');
  has LatestScheduledRetrainingModelVersion => (is => 'ro', isa => 'Int');
  has LatestScheduledRetrainingStartTime => (is => 'ro', isa => 'Str');
  has LatestScheduledRetrainingStatus => (is => 'ro', isa => 'Str');
  has ModelArn => (is => 'ro', isa => 'Str');
  has ModelDiagnosticsOutputConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::ModelDiagnosticsOutputConfiguration');
  has ModelName => (is => 'ro', isa => 'Str');
  has ModelQuality => (is => 'ro', isa => 'Str');
  has NextScheduledRetrainingStartDate => (is => 'ro', isa => 'Str');
  has RetrainingSchedulerStatus => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ModelSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LookoutEquipment::ModelSummary object:

  $service_obj->Method(Att1 => { ActiveModelVersion => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LookoutEquipment::ModelSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveModelVersion

=head1 DESCRIPTION

Provides information about the specified machine learning model,
including dataset and model names and ARNs, as well as status.

=head1 ATTRIBUTES


=head2 ActiveModelVersion => Int

The model version that the inference scheduler uses to run an inference
execution.


=head2 ActiveModelVersionArn => Str

The Amazon Resource Name (ARN) of the model version that is set as
active. The active model version is the model version that the
inference scheduler uses to run an inference execution.


=head2 CreatedAt => Str

The time at which the specific model was created.


=head2 DatasetArn => Str

The Amazon Resource Name (ARN) of the dataset used to create the model.


=head2 DatasetName => Str

The name of the dataset being used for the machine learning model.


=head2 LatestScheduledRetrainingModelVersion => Int

Indicates the most recent model version that was generated by
retraining.


=head2 LatestScheduledRetrainingStartTime => Str

Indicates the start time of the most recent scheduled retraining run.


=head2 LatestScheduledRetrainingStatus => Str

Indicates the status of the most recent scheduled retraining run.


=head2 ModelArn => Str

The Amazon Resource Name (ARN) of the machine learning model.


=head2 ModelDiagnosticsOutputConfiguration => L<Paws::LookoutEquipment::ModelDiagnosticsOutputConfiguration>




=head2 ModelName => Str

The name of the machine learning model.


=head2 ModelQuality => Str

Provides a quality assessment for a model that uses labels. If Lookout
for Equipment determines that the model quality is poor based on
training metrics, the value is C<POOR_QUALITY_DETECTED>. Otherwise, the
value is C<QUALITY_THRESHOLD_MET>.

If the model is unlabeled, the model quality can't be assessed and the
value of C<ModelQuality> is C<CANNOT_DETERMINE_QUALITY>. In this
situation, you can get a model quality assessment by adding labels to
the input dataset and retraining the model.

For information about using labels with your models, see Understanding
labeling
(https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/understanding-labeling.html).

For information about improving the quality of a model, see Best
practices with Amazon Lookout for Equipment
(https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/best-practices.html).


=head2 NextScheduledRetrainingStartDate => Str

Indicates the date that the next scheduled retraining run will start
on. Lookout for Equipment truncates the time you provide to the nearest
UTC day
(https://docs.aws.amazon.com/https:/docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp).


=head2 RetrainingSchedulerStatus => Str

Indicates the status of the retraining scheduler.


=head2 Status => Str

Indicates the status of the machine learning model.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

