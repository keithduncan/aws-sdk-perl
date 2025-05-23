# Generated by default/object.tt
package Paws::LookoutVision::ModelDescription;
  use Moose;
  has CreationTimestamp => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EvaluationEndTimestamp => (is => 'ro', isa => 'Str');
  has EvaluationManifest => (is => 'ro', isa => 'Paws::LookoutVision::OutputS3Object');
  has EvaluationResult => (is => 'ro', isa => 'Paws::LookoutVision::OutputS3Object');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MaxInferenceUnits => (is => 'ro', isa => 'Int');
  has MinInferenceUnits => (is => 'ro', isa => 'Int');
  has ModelArn => (is => 'ro', isa => 'Str');
  has ModelVersion => (is => 'ro', isa => 'Str');
  has OutputConfig => (is => 'ro', isa => 'Paws::LookoutVision::OutputConfig');
  has Performance => (is => 'ro', isa => 'Paws::LookoutVision::ModelPerformance');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::ModelDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LookoutVision::ModelDescription object:

  $service_obj->Method(Att1 => { CreationTimestamp => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LookoutVision::ModelDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTimestamp

=head1 DESCRIPTION

Describes an Amazon Lookout for Vision model.

=head1 ATTRIBUTES


=head2 CreationTimestamp => Str

The unix timestamp for the date and time that the model was created.


=head2 Description => Str

The description for the model.


=head2 EvaluationEndTimestamp => Str

The unix timestamp for the date and time that the evaluation ended.


=head2 EvaluationManifest => L<Paws::LookoutVision::OutputS3Object>

The S3 location where Amazon Lookout for Vision saves the manifest file
that was used to test the trained model and generate the performance
scores.


=head2 EvaluationResult => L<Paws::LookoutVision::OutputS3Object>

The S3 location where Amazon Lookout for Vision saves the performance
metrics.


=head2 KmsKeyId => Str

The identifer for the AWS Key Management Service (AWS KMS) key that was
used to encrypt the model during training.


=head2 MaxInferenceUnits => Int

The maximum number of inference units Amazon Lookout for Vision uses to
auto-scale the model. For more information, see StartModel.


=head2 MinInferenceUnits => Int

The minimum number of inference units used by the model. For more
information, see StartModel


=head2 ModelArn => Str

The Amazon Resource Name (ARN) of the model.


=head2 ModelVersion => Str

The version of the model


=head2 OutputConfig => L<Paws::LookoutVision::OutputConfig>

The S3 location where Amazon Lookout for Vision saves model training
files.


=head2 Performance => L<Paws::LookoutVision::ModelPerformance>

Performance metrics for the model. Created during training.


=head2 Status => Str

The status of the model.


=head2 StatusMessage => Str

The status message for the model.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LookoutVision>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

