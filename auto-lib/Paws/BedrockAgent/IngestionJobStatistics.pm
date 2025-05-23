# Generated by default/object.tt
package Paws::BedrockAgent::IngestionJobStatistics;
  use Moose;
  has NumberOfDocumentsDeleted => (is => 'ro', isa => 'Int', request_name => 'numberOfDocumentsDeleted', traits => ['NameInRequest']);
  has NumberOfDocumentsFailed => (is => 'ro', isa => 'Int', request_name => 'numberOfDocumentsFailed', traits => ['NameInRequest']);
  has NumberOfDocumentsScanned => (is => 'ro', isa => 'Int', request_name => 'numberOfDocumentsScanned', traits => ['NameInRequest']);
  has NumberOfMetadataDocumentsModified => (is => 'ro', isa => 'Int', request_name => 'numberOfMetadataDocumentsModified', traits => ['NameInRequest']);
  has NumberOfMetadataDocumentsScanned => (is => 'ro', isa => 'Int', request_name => 'numberOfMetadataDocumentsScanned', traits => ['NameInRequest']);
  has NumberOfModifiedDocumentsIndexed => (is => 'ro', isa => 'Int', request_name => 'numberOfModifiedDocumentsIndexed', traits => ['NameInRequest']);
  has NumberOfNewDocumentsIndexed => (is => 'ro', isa => 'Int', request_name => 'numberOfNewDocumentsIndexed', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::IngestionJobStatistics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgent::IngestionJobStatistics object:

  $service_obj->Method(Att1 => { NumberOfDocumentsDeleted => $value, ..., NumberOfNewDocumentsIndexed => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgent::IngestionJobStatistics object:

  $result = $service_obj->Method(...);
  $result->Att1->NumberOfDocumentsDeleted

=head1 DESCRIPTION

Contains the statistics for the data ingestion job.

=head1 ATTRIBUTES


=head2 NumberOfDocumentsDeleted => Int

The number of source documents that were deleted.


=head2 NumberOfDocumentsFailed => Int

The number of source documents that failed to be ingested.


=head2 NumberOfDocumentsScanned => Int

The total number of source documents that were scanned. Includes new,
updated, and unchanged documents.


=head2 NumberOfMetadataDocumentsModified => Int

The number of metadata files that were updated or deleted.


=head2 NumberOfMetadataDocumentsScanned => Int

The total number of metadata files that were scanned. Includes new,
updated, and unchanged files.


=head2 NumberOfModifiedDocumentsIndexed => Int

The number of modified source documents in the data source that were
successfully indexed.


=head2 NumberOfNewDocumentsIndexed => Int

The number of new source documents in the data source that were
successfully indexed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

