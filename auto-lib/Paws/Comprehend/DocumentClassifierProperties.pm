# Generated by default/object.tt
package Paws::Comprehend::DocumentClassifierProperties;
  use Moose;
  has ClassifierMetadata => (is => 'ro', isa => 'Paws::Comprehend::ClassifierMetadata');
  has DataAccessRoleArn => (is => 'ro', isa => 'Str');
  has DocumentClassifierArn => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has FlywheelArn => (is => 'ro', isa => 'Str');
  has InputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::DocumentClassifierInputDataConfig');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has Mode => (is => 'ro', isa => 'Str');
  has ModelKmsKeyId => (is => 'ro', isa => 'Str');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::Comprehend::DocumentClassifierOutputDataConfig');
  has SourceModelArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SubmitTime => (is => 'ro', isa => 'Str');
  has TrainingEndTime => (is => 'ro', isa => 'Str');
  has TrainingStartTime => (is => 'ro', isa => 'Str');
  has VersionName => (is => 'ro', isa => 'Str');
  has VolumeKmsKeyId => (is => 'ro', isa => 'Str');
  has VpcConfig => (is => 'ro', isa => 'Paws::Comprehend::VpcConfig');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DocumentClassifierProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::DocumentClassifierProperties object:

  $service_obj->Method(Att1 => { ClassifierMetadata => $value, ..., VpcConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::DocumentClassifierProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->ClassifierMetadata

=head1 DESCRIPTION

Provides information about a document classifier.

=head1 ATTRIBUTES


=head2 ClassifierMetadata => L<Paws::Comprehend::ClassifierMetadata>

Information about the document classifier, including the number of
documents used for training the classifier, the number of documents
used for test the classifier, and an accuracy rating.


=head2 DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that grants Amazon
Comprehend read access to your input data.


=head2 DocumentClassifierArn => Str

The Amazon Resource Name (ARN) that identifies the document classifier.


=head2 EndTime => Str

The time that training the document classifier completed.


=head2 FlywheelArn => Str

The Amazon Resource Number (ARN) of the flywheel


=head2 InputDataConfig => L<Paws::Comprehend::DocumentClassifierInputDataConfig>

The input data configuration that you supplied when you created the
document classifier for training.


=head2 LanguageCode => Str

The language code for the language of the documents that the classifier
was trained on.


=head2 Message => Str

Additional information about the status of the classifier.


=head2 Mode => Str

Indicates the mode in which the specific classifier was trained. This
also indicates the format of input documents and the format of the
confusion matrix. Each classifier can only be trained in one mode and
this cannot be changed once the classifier is trained.


=head2 ModelKmsKeyId => Str

ID for the KMS key that Amazon Comprehend uses to encrypt trained
custom models. The ModelKmsKeyId can be either of the following
formats:

=over

=item *

KMS Key ID: C<"1234abcd-12ab-34cd-56ef-1234567890ab">

=item *

Amazon Resource Name (ARN) of a KMS Key:
C<"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab">

=back



=head2 OutputDataConfig => L<Paws::Comprehend::DocumentClassifierOutputDataConfig>

Provides output results configuration parameters for custom classifier
jobs.


=head2 SourceModelArn => Str

The Amazon Resource Name (ARN) of the source model. This model was
imported from a different Amazon Web Services account to create the
document classifier model in your Amazon Web Services account.


=head2 Status => Str

The status of the document classifier. If the status is C<TRAINED> the
classifier is ready to use. If the status is C<TRAINED_WITH_WARNINGS>
the classifier training succeeded, but you should review the warnings
returned in the C<CreateDocumentClassifier> response.

If the status is C<FAILED> you can see additional information about why
the classifier wasn't trained in the C<Message> field.


=head2 SubmitTime => Str

The time that the document classifier was submitted for training.


=head2 TrainingEndTime => Str

The time that training of the document classifier was completed.
Indicates the time when the training completes on documentation
classifiers. You are billed for the time interval between this time and
the value of TrainingStartTime.


=head2 TrainingStartTime => Str

Indicates the time when the training starts on documentation
classifiers. You are billed for the time interval between this time and
the value of TrainingEndTime.


=head2 VersionName => Str

The version name that you assigned to the document classifier.


=head2 VolumeKmsKeyId => Str

ID for the Amazon Web Services Key Management Service (KMS) key that
Amazon Comprehend uses to encrypt data on the storage volume attached
to the ML compute instance(s) that process the analysis job. The
VolumeKmsKeyId can be either of the following formats:

=over

=item *

KMS Key ID: C<"1234abcd-12ab-34cd-56ef-1234567890ab">

=item *

Amazon Resource Name (ARN) of a KMS Key:
C<"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab">

=back



=head2 VpcConfig => L<Paws::Comprehend::VpcConfig>

Configuration parameters for a private Virtual Private Cloud (VPC)
containing the resources you are using for your custom classifier. For
more information, see Amazon VPC
(https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

