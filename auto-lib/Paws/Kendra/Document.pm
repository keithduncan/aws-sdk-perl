# Generated by default/object.tt
package Paws::Kendra::Document;
  use Moose;
  has AccessControlConfigurationId => (is => 'ro', isa => 'Str');
  has AccessControlList => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::Principal]');
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::DocumentAttribute]');
  has Blob => (is => 'ro', isa => 'Str');
  has ContentType => (is => 'ro', isa => 'Str');
  has HierarchicalAccessControlList => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::HierarchicalPrincipal]');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has S3Path => (is => 'ro', isa => 'Paws::Kendra::S3Path');
  has Title => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::Document

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::Document object:

  $service_obj->Method(Att1 => { AccessControlConfigurationId => $value, ..., Title => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::Document object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessControlConfigurationId

=head1 DESCRIPTION

A document in an index.

=head1 ATTRIBUTES


=head2 AccessControlConfigurationId => Str

The identifier of the access control configuration that you want to
apply to the document.


=head2 AccessControlList => ArrayRef[L<Paws::Kendra::Principal>]

Information on principals (users and/or groups) and which documents
they should have access to. This is useful for user context filtering,
where search results are filtered based on the user or their group
access to documents.


=head2 Attributes => ArrayRef[L<Paws::Kendra::DocumentAttribute>]

Custom attributes to apply to the document. Use the custom attributes
to provide additional information for searching, to provide facets for
refining searches, and to provide additional information in the query
response.

For example, 'DataSourceId' and 'DataSourceSyncJobId' are custom
attributes that provide information on the synchronization of documents
running on a data source. Note, 'DataSourceSyncJobId' could be an
optional custom attribute as Amazon Kendra will use the ID of a running
sync job.


=head2 Blob => Str

The contents of the document.

Documents passed to the C<Blob> parameter must be base64 encoded. Your
code might not need to encode the document file bytes if you're using
an Amazon Web Services SDK to call Amazon Kendra APIs. If you are
calling the Amazon Kendra endpoint directly using REST, you must base64
encode the contents before sending.


=head2 ContentType => Str

The file type of the document in the C<Blob> field.

If you want to index snippets or subsets of HTML documents instead of
the entirety of the HTML documents, you must add the C<HTML> start and
closing tags (C<E<lt>HTMLE<gt>contentE<lt>/HTMLE<gt>>) around the
content.


=head2 HierarchicalAccessControlList => ArrayRef[L<Paws::Kendra::HierarchicalPrincipal>]

The list of principal
(https://docs.aws.amazon.com/kendra/latest/dg/API_Principal.html) lists
that define the hierarchy for which documents users should have access
to.


=head2 B<REQUIRED> Id => Str

A identifier of the document in the index.

Note, each document ID must be unique per index. You cannot create a
data source to index your documents with their unique IDs and then use
the C<BatchPutDocument> API to index the same documents, or vice versa.
You can delete a data source and then use the C<BatchPutDocument> API
to index the same documents, or vice versa.


=head2 S3Path => L<Paws::Kendra::S3Path>




=head2 Title => Str

The title of the document.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

