
package Paws::WorkDocs::GetFolder;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication');
  has FolderId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FolderId', required => 1);
  has IncludeCustomMetadata => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'includeCustomMetadata');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFolder');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/folders/{FolderId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::GetFolderResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::GetFolder - Arguments for method GetFolder on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFolder on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method GetFolder.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFolder.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    my $GetFolderResponse = $workdocs->GetFolder(
      FolderId              => 'MyResourceIdType',
      AuthenticationToken   => 'MyAuthenticationHeaderType',    # OPTIONAL
      IncludeCustomMetadata => 1,                               # OPTIONAL
    );

    # Results:
    my $CustomMetadata = $GetFolderResponse->CustomMetadata;
    my $Metadata       = $GetFolderResponse->Metadata;

    # Returns a L<Paws::WorkDocs::GetFolderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/GetFolder>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Not required when using Amazon
Web Services administrator credentials to access the API.



=head2 B<REQUIRED> FolderId => Str

The ID of the folder.



=head2 IncludeCustomMetadata => Bool

Set to TRUE to include custom metadata in the response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFolder in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

