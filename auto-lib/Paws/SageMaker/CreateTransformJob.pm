
package Paws::SageMaker::CreateTransformJob;
  use Moose;
  has BatchStrategy => (is => 'ro', isa => 'Str');
  has DataCaptureConfig => (is => 'ro', isa => 'Paws::SageMaker::BatchDataCaptureConfig');
  has DataProcessing => (is => 'ro', isa => 'Paws::SageMaker::DataProcessing');
  has Environment => (is => 'ro', isa => 'Paws::SageMaker::TransformEnvironmentMap');
  has ExperimentConfig => (is => 'ro', isa => 'Paws::SageMaker::ExperimentConfig');
  has MaxConcurrentTransforms => (is => 'ro', isa => 'Int');
  has MaxPayloadInMB => (is => 'ro', isa => 'Int');
  has ModelClientConfig => (is => 'ro', isa => 'Paws::SageMaker::ModelClientConfig');
  has ModelName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has TransformInput => (is => 'ro', isa => 'Paws::SageMaker::TransformInput', required => 1);
  has TransformJobName => (is => 'ro', isa => 'Str', required => 1);
  has TransformOutput => (is => 'ro', isa => 'Paws::SageMaker::TransformOutput', required => 1);
  has TransformResources => (is => 'ro', isa => 'Paws::SageMaker::TransformResources', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTransformJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateTransformJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateTransformJob - Arguments for method CreateTransformJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTransformJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateTransformJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTransformJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateTransformJobResponse = $api . sagemaker->CreateTransformJob(
      ModelName      => 'MyModelName',
      TransformInput => {
        DataSource => {
          S3DataSource => {
            S3DataType => 'ManifestFile'
            ,    # values: ManifestFile, S3Prefix, AugmentedManifestFile
            S3Uri => 'MyS3Uri',    # max: 1024

          },

        },
        CompressionType => 'None',             # values: None, Gzip; OPTIONAL
        ContentType     => 'MyContentType',    # max: 256; OPTIONAL
        SplitType => 'None',  # values: None, Line, RecordIO, TFRecord; OPTIONAL
      },
      TransformJobName => 'MyTransformJobName',
      TransformOutput  => {
        S3OutputPath => 'MyS3Uri',       # max: 1024
        Accept       => 'MyAccept',      # max: 256; OPTIONAL
        AssembleWith => 'None',          # values: None, Line; OPTIONAL
        KmsKeyId     => 'MyKmsKeyId',    # max: 2048; OPTIONAL
      },
      TransformResources => {
        InstanceCount => 1,               # min: 1
        InstanceType  => 'ml.m4.xlarge'
        , # values: ml.m4.xlarge, ml.m4.2xlarge, ml.m4.4xlarge, ml.m4.10xlarge, ml.m4.16xlarge, ml.c4.xlarge, ml.c4.2xlarge, ml.c4.4xlarge, ml.c4.8xlarge, ml.p2.xlarge, ml.p2.8xlarge, ml.p2.16xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.18xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.12xlarge, ml.m5.24xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.c7i.large, ml.c7i.xlarge, ml.c7i.2xlarge, ml.c7i.4xlarge, ml.c7i.8xlarge, ml.c7i.12xlarge, ml.c7i.16xlarge, ml.c7i.24xlarge, ml.c7i.48xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.12xlarge, ml.g5.16xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.inf2.xlarge, ml.inf2.8xlarge, ml.inf2.24xlarge, ml.inf2.48xlarge
        TransformAmiVersion =>
          'MyTransformAmiVersion',    # min: 1, max: 63; OPTIONAL
        VolumeKmsKeyId => 'MyKmsKeyId',    # max: 2048; OPTIONAL
      },
      BatchStrategy     => 'MultiRecord',    # OPTIONAL
      DataCaptureConfig => {
        DestinationS3Uri    => 'MyS3Uri',       # max: 1024
        GenerateInferenceId => 1,               # OPTIONAL
        KmsKeyId            => 'MyKmsKeyId',    # max: 2048; OPTIONAL
      },    # OPTIONAL
      DataProcessing => {
        InputFilter  => 'MyJsonPath',    # max: 63; OPTIONAL
        JoinSource   => 'Input',         # values: Input, None; OPTIONAL
        OutputFilter => 'MyJsonPath',    # max: 63; OPTIONAL
      },    # OPTIONAL
      Environment => {
        'MyTransformEnvironmentKey' =>
          'MyTransformEnvironmentValue',    # key: max: 1024, value: max: 10240
      },    # OPTIONAL
      ExperimentConfig => {
        ExperimentName => 'MyExperimentEntityName', # min: 1, max: 120; OPTIONAL
        RunName        => 'MyExperimentEntityName', # min: 1, max: 120; OPTIONAL
        TrialComponentDisplayName =>
          'MyExperimentEntityName',                 # min: 1, max: 120; OPTIONAL
        TrialName => 'MyExperimentEntityName',      # min: 1, max: 120; OPTIONAL
      },    # OPTIONAL
      MaxConcurrentTransforms => 1,    # OPTIONAL
      MaxPayloadInMB          => 1,    # OPTIONAL
      ModelClientConfig       => {
        InvocationsMaxRetries       => 1,    # max: 3; OPTIONAL
        InvocationsTimeoutInSeconds => 1,    # min: 1, max: 3600; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $TransformJobArn = $CreateTransformJobResponse->TransformJobArn;

    # Returns a L<Paws::SageMaker::CreateTransformJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateTransformJob>

=head1 ATTRIBUTES


=head2 BatchStrategy => Str

Specifies the number of records to include in a mini-batch for an HTTP
inference request. A I<record> I< is a single unit of input data that
inference can be made on. For example, a single line in a CSV file is a
record.>

To enable the batch strategy, you must set the C<SplitType> property to
C<Line>, C<RecordIO>, or C<TFRecord>.

To use only one record when making an HTTP invocation request to a
container, set C<BatchStrategy> to C<SingleRecord> and C<SplitType> to
C<Line>.

To fit as many records in a mini-batch as can fit within the
C<MaxPayloadInMB> limit, set C<BatchStrategy> to C<MultiRecord> and
C<SplitType> to C<Line>.

Valid values are: C<"MultiRecord">, C<"SingleRecord">

=head2 DataCaptureConfig => L<Paws::SageMaker::BatchDataCaptureConfig>

Configuration to control how SageMaker captures inference data.



=head2 DataProcessing => L<Paws::SageMaker::DataProcessing>

The data structure used to specify the data to be used for inference in
a batch transform job and to associate the data that is relevant to the
prediction results in the output. The input filter provided allows you
to exclude input data that is not needed for inference in a batch
transform job. The output filter provided allows you to include input
data relevant to interpreting the predictions in the output from the
job. For more information, see Associate Prediction Results with their
Corresponding Input Records
(https://docs.aws.amazon.com/sagemaker/latest/dg/batch-transform-data-processing.html).



=head2 Environment => L<Paws::SageMaker::TransformEnvironmentMap>

The environment variables to set in the Docker container. Don't include
any sensitive data in your environment variables. We support up to 16
key and values entries in the map.



=head2 ExperimentConfig => L<Paws::SageMaker::ExperimentConfig>





=head2 MaxConcurrentTransforms => Int

The maximum number of parallel requests that can be sent to each
instance in a transform job. If C<MaxConcurrentTransforms> is set to
C<0> or left unset, Amazon SageMaker checks the optional
execution-parameters to determine the settings for your chosen
algorithm. If the execution-parameters endpoint is not enabled, the
default value is C<1>. For more information on execution-parameters,
see How Containers Serve Requests
(https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-batch-code.html#your-algorithms-batch-code-how-containe-serves-requests).
For built-in algorithms, you don't need to set a value for
C<MaxConcurrentTransforms>.



=head2 MaxPayloadInMB => Int

The maximum allowed size of the payload, in MB. A I<payload> is the
data portion of a record (without metadata). The value in
C<MaxPayloadInMB> must be greater than, or equal to, the size of a
single record. To estimate the size of a record in MB, divide the size
of your dataset by the number of records. To ensure that the records
fit within the maximum payload size, we recommend using a slightly
larger value. The default value is C<6> MB.

The value of C<MaxPayloadInMB> cannot be greater than 100 MB. If you
specify the C<MaxConcurrentTransforms> parameter, the value of
C<(MaxConcurrentTransforms * MaxPayloadInMB)> also cannot exceed 100
MB.

For cases where the payload might be arbitrarily large and is
transmitted using HTTP chunked encoding, set the value to C<0>. This
feature works only in supported algorithms. Currently, Amazon SageMaker
built-in algorithms do not support HTTP chunked encoding.



=head2 ModelClientConfig => L<Paws::SageMaker::ModelClientConfig>

Configures the timeout and maximum number of retries for processing a
transform job invocation.



=head2 B<REQUIRED> ModelName => Str

The name of the model that you want to use for the transform job.
C<ModelName> must be the name of an existing Amazon SageMaker model
within an Amazon Web Services Region in an Amazon Web Services account.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

(Optional) An array of key-value pairs. For more information, see Using
Cost Allocation Tags
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-what)
in the I<Amazon Web Services Billing and Cost Management User Guide>.



=head2 B<REQUIRED> TransformInput => L<Paws::SageMaker::TransformInput>

Describes the input source and the way the transform job consumes it.



=head2 B<REQUIRED> TransformJobName => Str

The name of the transform job. The name must be unique within an Amazon
Web Services Region in an Amazon Web Services account.



=head2 B<REQUIRED> TransformOutput => L<Paws::SageMaker::TransformOutput>

Describes the results of the transform job.



=head2 B<REQUIRED> TransformResources => L<Paws::SageMaker::TransformResources>

Describes the resources, including ML instance types and ML instance
count, to use for the transform job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTransformJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

