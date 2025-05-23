
package Paws::Kendra::BatchGetDocumentStatus;
  use Moose;
  has DocumentInfoList => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::DocumentInfo]', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetDocumentStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::BatchGetDocumentStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::BatchGetDocumentStatus - Arguments for method BatchGetDocumentStatus on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetDocumentStatus on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method BatchGetDocumentStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetDocumentStatus.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $BatchGetDocumentStatusResponse = $kendra->BatchGetDocumentStatus(
      DocumentInfoList => [
        {
          DocumentId => 'MyDocumentId',    # min: 1, max: 2048
          Attributes => [
            {
              Key   => 'MyDocumentAttributeKey',    # min: 1, max: 200
              Value => {
                DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
                LongValue       => 1,                        # OPTIONAL
                StringListValue => [
                  'MyString', ...                            # min: 1, max: 2048
                ],    # OPTIONAL
                StringValue => 'MyDocumentAttributeStringValue'
                ,     # min: 1, max: 2048; OPTIONAL
              },

            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],
      IndexId => 'MyIndexId',

    );

    # Results:
    my $DocumentStatusList =
      $BatchGetDocumentStatusResponse->DocumentStatusList;
    my $Errors = $BatchGetDocumentStatusResponse->Errors;

    # Returns a L<Paws::Kendra::BatchGetDocumentStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/BatchGetDocumentStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DocumentInfoList => ArrayRef[L<Paws::Kendra::DocumentInfo>]

A list of C<DocumentInfo> objects that identify the documents for which
to get the status. You identify the documents by their document ID and
optional attributes.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index to add documents to. The index ID is
returned by the CreateIndex
(https://docs.aws.amazon.com/kendra/latest/dg/API_CreateIndex.html)
API.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetDocumentStatus in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

