
package Paws::Textract::StartDocumentAnalysis;
  use Moose;
  has AdaptersConfig => (is => 'ro', isa => 'Paws::Textract::AdaptersConfig');
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has DocumentLocation => (is => 'ro', isa => 'Paws::Textract::DocumentLocation', required => 1);
  has FeatureTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has JobTag => (is => 'ro', isa => 'Str');
  has KMSKeyId => (is => 'ro', isa => 'Str');
  has NotificationChannel => (is => 'ro', isa => 'Paws::Textract::NotificationChannel');
  has OutputConfig => (is => 'ro', isa => 'Paws::Textract::OutputConfig');
  has QueriesConfig => (is => 'ro', isa => 'Paws::Textract::QueriesConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDocumentAnalysis');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Textract::StartDocumentAnalysisResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::StartDocumentAnalysis - Arguments for method StartDocumentAnalysis on L<Paws::Textract>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDocumentAnalysis on the
L<Amazon Textract|Paws::Textract> service. Use the attributes of this class
as arguments to method StartDocumentAnalysis.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDocumentAnalysis.

=head1 SYNOPSIS

    my $textract = Paws->service('Textract');
    my $StartDocumentAnalysisResponse = $textract->StartDocumentAnalysis(
      DocumentLocation => {
        S3Object => {
          Bucket  => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
          Name    => 'MyS3ObjectName',       # min: 1, max: 1024; OPTIONAL
          Version => 'MyS3ObjectVersion',    # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },
      FeatureTypes => [
        'TABLES', ...    # values: TABLES, FORMS, QUERIES, SIGNATURES, LAYOUT
      ],
      AdaptersConfig => {
        Adapters => [
          {
            AdapterId => 'MyAdapterId',         # min: 12, max: 1011
            Version   => 'MyAdapterVersion',    # min: 1, max: 128
            Pages     => [
              'MyAdapterPage', ...              # min: 1, max: 9
            ],    # min: 1; OPTIONAL
          },
          ...
        ],    # min: 1, max: 100

      },    # OPTIONAL
      ClientRequestToken  => 'MyClientRequestToken',    # OPTIONAL
      JobTag              => 'MyJobTag',                # OPTIONAL
      KMSKeyId            => 'MyKMSKeyId',              # OPTIONAL
      NotificationChannel => {
        RoleArn     => 'MyRoleArn',                     # min: 20, max: 2048
        SNSTopicArn => 'MySNSTopicArn',                 # min: 20, max: 1024

      },    # OPTIONAL
      OutputConfig => {
        S3Bucket => 'MyS3Bucket',        # min: 3, max: 255; OPTIONAL
        S3Prefix => 'MyS3ObjectName',    # min: 1, max: 1024; OPTIONAL
      },    # OPTIONAL
      QueriesConfig => {
        Queries => [
          {
            Text  => 'MyQueryInput',    # min: 1, max: 200
            Alias => 'MyQueryInput',    # min: 1, max: 200
            Pages => [
              'MyQueryPage', ...        # min: 1, max: 9
            ],    # min: 1; OPTIONAL
          },
          ...
        ],    # min: 1

      },    # OPTIONAL
    );

    # Results:
    my $JobId = $StartDocumentAnalysisResponse->JobId;

    # Returns a L<Paws::Textract::StartDocumentAnalysisResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/textract/StartDocumentAnalysis>

=head1 ATTRIBUTES


=head2 AdaptersConfig => L<Paws::Textract::AdaptersConfig>

Specifies the adapter to be used when analyzing a document.



=head2 ClientRequestToken => Str

The idempotent token that you use to identify the start request. If you
use the same token with multiple C<StartDocumentAnalysis> requests, the
same C<JobId> is returned. Use C<ClientRequestToken> to prevent the
same job from being accidentally started more than once. For more
information, see Calling Amazon Textract Asynchronous Operations
(https://docs.aws.amazon.com/textract/latest/dg/api-async.html).



=head2 B<REQUIRED> DocumentLocation => L<Paws::Textract::DocumentLocation>

The location of the document to be processed.



=head2 B<REQUIRED> FeatureTypes => ArrayRef[Str|Undef]

A list of the types of analysis to perform. Add TABLES to the list to
return information about the tables that are detected in the input
document. Add FORMS to return detected form data. To perform both types
of analysis, add TABLES and FORMS to C<FeatureTypes>. All lines and
words detected in the document are included in the response (including
text that isn't related to the value of C<FeatureTypes>).



=head2 JobTag => Str

An identifier that you specify that's included in the completion
notification published to the Amazon SNS topic. For example, you can
use C<JobTag> to identify the type of document that the completion
notification corresponds to (such as a tax form or a receipt).



=head2 KMSKeyId => Str

The KMS key used to encrypt the inference results. This can be in
either Key ID or Key Alias format. When a KMS key is provided, the KMS
key will be used for server-side encryption of the objects in the
customer bucket. When this parameter is not enabled, the result will be
encrypted server side,using SSE-S3.



=head2 NotificationChannel => L<Paws::Textract::NotificationChannel>

The Amazon SNS topic ARN that you want Amazon Textract to publish the
completion status of the operation to.



=head2 OutputConfig => L<Paws::Textract::OutputConfig>

Sets if the output will go to a customer defined bucket. By default,
Amazon Textract will save the results internally to be accessed by the
GetDocumentAnalysis operation.



=head2 QueriesConfig => L<Paws::Textract::QueriesConfig>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDocumentAnalysis in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

