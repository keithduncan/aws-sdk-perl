# Generated by default/object.tt
package Paws::Firehose::AmazonOpenSearchServerlessDestinationConfiguration;
  use Moose;
  has BufferingHints => (is => 'ro', isa => 'Paws::Firehose::AmazonOpenSearchServerlessBufferingHints');
  has CloudWatchLoggingOptions => (is => 'ro', isa => 'Paws::Firehose::CloudWatchLoggingOptions');
  has CollectionEndpoint => (is => 'ro', isa => 'Str');
  has IndexName => (is => 'ro', isa => 'Str', required => 1);
  has ProcessingConfiguration => (is => 'ro', isa => 'Paws::Firehose::ProcessingConfiguration');
  has RetryOptions => (is => 'ro', isa => 'Paws::Firehose::AmazonOpenSearchServerlessRetryOptions');
  has RoleARN => (is => 'ro', isa => 'Str', required => 1);
  has S3BackupMode => (is => 'ro', isa => 'Str');
  has S3Configuration => (is => 'ro', isa => 'Paws::Firehose::S3DestinationConfiguration', required => 1);
  has VpcConfiguration => (is => 'ro', isa => 'Paws::Firehose::VpcConfiguration');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::AmazonOpenSearchServerlessDestinationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::AmazonOpenSearchServerlessDestinationConfiguration object:

  $service_obj->Method(Att1 => { BufferingHints => $value, ..., VpcConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::AmazonOpenSearchServerlessDestinationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->BufferingHints

=head1 DESCRIPTION

Describes the configuration of a destination in the Serverless offering
for Amazon OpenSearch Service.

=head1 ATTRIBUTES


=head2 BufferingHints => L<Paws::Firehose::AmazonOpenSearchServerlessBufferingHints>

The buffering options. If no value is specified, the default values for
AmazonopensearchserviceBufferingHints are used.


=head2 CloudWatchLoggingOptions => L<Paws::Firehose::CloudWatchLoggingOptions>




=head2 CollectionEndpoint => Str

The endpoint to use when communicating with the collection in the
Serverless offering for Amazon OpenSearch Service.


=head2 B<REQUIRED> IndexName => Str

The Serverless offering for Amazon OpenSearch Service index name.


=head2 ProcessingConfiguration => L<Paws::Firehose::ProcessingConfiguration>




=head2 RetryOptions => L<Paws::Firehose::AmazonOpenSearchServerlessRetryOptions>

The retry behavior in case Firehose is unable to deliver documents to
the Serverless offering for Amazon OpenSearch Service. The default
value is 300 (5 minutes).


=head2 B<REQUIRED> RoleARN => Str

The Amazon Resource Name (ARN) of the IAM role to be assumed by
Firehose for calling the Serverless offering for Amazon OpenSearch
Service Configuration API and for indexing documents.


=head2 S3BackupMode => Str

Defines how documents should be delivered to Amazon S3. When it is set
to FailedDocumentsOnly, Firehose writes any documents that could not be
indexed to the configured Amazon S3 destination, with
AmazonOpenSearchService-failed/ appended to the key prefix. When set to
AllDocuments, Firehose delivers all incoming records to Amazon S3, and
also writes failed documents with AmazonOpenSearchService-failed/
appended to the prefix.


=head2 B<REQUIRED> S3Configuration => L<Paws::Firehose::S3DestinationConfiguration>




=head2 VpcConfiguration => L<Paws::Firehose::VpcConfiguration>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

