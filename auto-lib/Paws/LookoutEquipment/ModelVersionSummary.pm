# Generated by default/object.tt
package Paws::LookoutEquipment::ModelVersionSummary;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has ModelArn => (is => 'ro', isa => 'Str');
  has ModelName => (is => 'ro', isa => 'Str');
  has ModelQuality => (is => 'ro', isa => 'Str');
  has ModelVersion => (is => 'ro', isa => 'Int');
  has ModelVersionArn => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ModelVersionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LookoutEquipment::ModelVersionSummary object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LookoutEquipment::ModelVersionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

Contains information about the specific model version.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The time when this model version was created.


=head2 ModelArn => Str

The Amazon Resource Name (ARN) of the model that this model version is
a version of.


=head2 ModelName => Str

The name of the model that this model version is a version of.


=head2 ModelQuality => Str

Provides a quality assessment for a model that uses labels. If Lookout
for Equipment determines that the model quality is poor based on
training metrics, the value is C<POOR_QUALITY_DETECTED>. Otherwise, the
value is C<QUALITY_THRESHOLD_MET>.

If the model is unlabeled, the model quality can't be assessed and the
value of C<ModelQuality> is C<CANNOT_DETERMINE_QUALITY>. In this
situation, you can get a model quality assessment by adding labels to
the input dataset and retraining the model.

For information about improving the quality of a model, see Best
practices with Amazon Lookout for Equipment
(https://docs.aws.amazon.com/lookout-for-equipment/latest/ug/best-practices.html).


=head2 ModelVersion => Int

The version of the model.


=head2 ModelVersionArn => Str

The Amazon Resource Name (ARN) of the model version.


=head2 SourceType => Str

Indicates how this model version was generated.


=head2 Status => Str

The current status of the model version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

