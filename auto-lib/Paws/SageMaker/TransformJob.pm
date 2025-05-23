# Generated by default/object.tt
package Paws::SageMaker::TransformJob;
  use Moose;
  has AutoMLJobArn => (is => 'ro', isa => 'Str');
  has BatchStrategy => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DataCaptureConfig => (is => 'ro', isa => 'Paws::SageMaker::BatchDataCaptureConfig');
  has DataProcessing => (is => 'ro', isa => 'Paws::SageMaker::DataProcessing');
  has Environment => (is => 'ro', isa => 'Paws::SageMaker::TransformEnvironmentMap');
  has ExperimentConfig => (is => 'ro', isa => 'Paws::SageMaker::ExperimentConfig');
  has FailureReason => (is => 'ro', isa => 'Str');
  has LabelingJobArn => (is => 'ro', isa => 'Str');
  has MaxConcurrentTransforms => (is => 'ro', isa => 'Int');
  has MaxPayloadInMB => (is => 'ro', isa => 'Int');
  has ModelClientConfig => (is => 'ro', isa => 'Paws::SageMaker::ModelClientConfig');
  has ModelName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has TransformEndTime => (is => 'ro', isa => 'Str');
  has TransformInput => (is => 'ro', isa => 'Paws::SageMaker::TransformInput');
  has TransformJobArn => (is => 'ro', isa => 'Str');
  has TransformJobName => (is => 'ro', isa => 'Str');
  has TransformJobStatus => (is => 'ro', isa => 'Str');
  has TransformOutput => (is => 'ro', isa => 'Paws::SageMaker::TransformOutput');
  has TransformResources => (is => 'ro', isa => 'Paws::SageMaker::TransformResources');
  has TransformStartTime => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TransformJob

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TransformJob object:

  $service_obj->Method(Att1 => { AutoMLJobArn => $value, ..., TransformStartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TransformJob object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoMLJobArn

=head1 DESCRIPTION

A batch transform job. For information about SageMaker batch transform,
see Use Batch Transform
(https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform.html).

=head1 ATTRIBUTES


=head2 AutoMLJobArn => Str

The Amazon Resource Name (ARN) of the AutoML job that created the
transform job.


=head2 BatchStrategy => Str

Specifies the number of records to include in a mini-batch for an HTTP
inference request. A record is a single unit of input data that
inference can be made on. For example, a single line in a CSV file is a
record.


=head2 CreationTime => Str

A timestamp that shows when the transform Job was created.


=head2 DataCaptureConfig => L<Paws::SageMaker::BatchDataCaptureConfig>




=head2 DataProcessing => L<Paws::SageMaker::DataProcessing>




=head2 Environment => L<Paws::SageMaker::TransformEnvironmentMap>

The environment variables to set in the Docker container. We support up
to 16 key and values entries in the map.


=head2 ExperimentConfig => L<Paws::SageMaker::ExperimentConfig>




=head2 FailureReason => Str

If the transform job failed, the reason it failed.


=head2 LabelingJobArn => Str

The Amazon Resource Name (ARN) of the labeling job that created the
transform job.


=head2 MaxConcurrentTransforms => Int

The maximum number of parallel requests that can be sent to each
instance in a transform job. If C<MaxConcurrentTransforms> is set to 0
or left unset, SageMaker checks the optional execution-parameters to
determine the settings for your chosen algorithm. If the
execution-parameters endpoint is not enabled, the default value is 1.
For built-in algorithms, you don't need to set a value for
C<MaxConcurrentTransforms>.


=head2 MaxPayloadInMB => Int

The maximum allowed size of the payload, in MB. A payload is the data
portion of a record (without metadata). The value in C<MaxPayloadInMB>
must be greater than, or equal to, the size of a single record. To
estimate the size of a record in MB, divide the size of your dataset by
the number of records. To ensure that the records fit within the
maximum payload size, we recommend using a slightly larger value. The
default value is 6 MB. For cases where the payload might be arbitrarily
large and is transmitted using HTTP chunked encoding, set the value to
0. This feature works only in supported algorithms. Currently,
SageMaker built-in algorithms do not support HTTP chunked encoding.


=head2 ModelClientConfig => L<Paws::SageMaker::ModelClientConfig>




=head2 ModelName => Str

The name of the model associated with the transform job.


=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

A list of tags associated with the transform job.


=head2 TransformEndTime => Str

Indicates when the transform job has been completed, or has stopped or
failed. You are billed for the time interval between this time and the
value of C<TransformStartTime>.


=head2 TransformInput => L<Paws::SageMaker::TransformInput>




=head2 TransformJobArn => Str

The Amazon Resource Name (ARN) of the transform job.


=head2 TransformJobName => Str

The name of the transform job.


=head2 TransformJobStatus => Str

The status of the transform job.

Transform job statuses are:

=over

=item *

C<InProgress> - The job is in progress.

=item *

C<Completed> - The job has completed.

=item *

C<Failed> - The transform job has failed. To see the reason for the
failure, see the C<FailureReason> field in the response to a
C<DescribeTransformJob> call.

=item *

C<Stopping> - The transform job is stopping.

=item *

C<Stopped> - The transform job has stopped.

=back



=head2 TransformOutput => L<Paws::SageMaker::TransformOutput>




=head2 TransformResources => L<Paws::SageMaker::TransformResources>




=head2 TransformStartTime => Str

Indicates when the transform job starts on ML instances. You are billed
for the time interval between this time and the value of
C<TransformEndTime>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

