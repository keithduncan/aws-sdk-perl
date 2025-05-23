# Generated by default/object.tt
package Paws::Omics::MultipartReadSetUploadListItem;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest'], required => 1);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has GeneratedFrom => (is => 'ro', isa => 'Str', request_name => 'generatedFrom', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has ReferenceArn => (is => 'ro', isa => 'Str', request_name => 'referenceArn', traits => ['NameInRequest'], required => 1);
  has SampleId => (is => 'ro', isa => 'Str', request_name => 'sampleId', traits => ['NameInRequest'], required => 1);
  has SequenceStoreId => (is => 'ro', isa => 'Str', request_name => 'sequenceStoreId', traits => ['NameInRequest'], required => 1);
  has SourceFileType => (is => 'ro', isa => 'Str', request_name => 'sourceFileType', traits => ['NameInRequest'], required => 1);
  has SubjectId => (is => 'ro', isa => 'Str', request_name => 'subjectId', traits => ['NameInRequest'], required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', request_name => 'tags', traits => ['NameInRequest']);
  has UploadId => (is => 'ro', isa => 'Str', request_name => 'uploadId', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::MultipartReadSetUploadListItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Omics::MultipartReadSetUploadListItem object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., UploadId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Omics::MultipartReadSetUploadListItem object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Part of the response to ListMultipartReadSetUploads, excluding
completed and aborted multipart uploads.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The time stamp for when a direct upload was created.


=head2 Description => Str

The description of a read set.


=head2 B<REQUIRED> GeneratedFrom => Str

The source of an uploaded part.


=head2 Name => Str

The name of a read set.


=head2 B<REQUIRED> ReferenceArn => Str

The source's reference ARN.


=head2 B<REQUIRED> SampleId => Str

The read set source's sample ID.


=head2 B<REQUIRED> SequenceStoreId => Str

The sequence store ID used for the multipart upload.


=head2 B<REQUIRED> SourceFileType => Str

The type of file the read set originated from.


=head2 B<REQUIRED> SubjectId => Str

The read set source's subject ID.


=head2 Tags => L<Paws::Omics::TagMap>

Any tags you wish to add to a read set.


=head2 B<REQUIRED> UploadId => Str

The ID for the initiated multipart upload.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

