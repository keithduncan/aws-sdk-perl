# Generated by default/object.tt
package Paws::BedrockAgentRuntime::RetrievalResultLocation;
  use Moose;
  has ConfluenceLocation => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::RetrievalResultConfluenceLocation', request_name => 'confluenceLocation', traits => ['NameInRequest']);
  has CustomDocumentLocation => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::RetrievalResultCustomDocumentLocation', request_name => 'customDocumentLocation', traits => ['NameInRequest']);
  has KendraDocumentLocation => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::RetrievalResultKendraDocumentLocation', request_name => 'kendraDocumentLocation', traits => ['NameInRequest']);
  has S3Location => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::RetrievalResultS3Location', request_name => 's3Location', traits => ['NameInRequest']);
  has SalesforceLocation => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::RetrievalResultSalesforceLocation', request_name => 'salesforceLocation', traits => ['NameInRequest']);
  has SharePointLocation => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::RetrievalResultSharePointLocation', request_name => 'sharePointLocation', traits => ['NameInRequest']);
  has SqlLocation => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::RetrievalResultSqlLocation', request_name => 'sqlLocation', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);
  has WebLocation => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::RetrievalResultWebLocation', request_name => 'webLocation', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::RetrievalResultLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgentRuntime::RetrievalResultLocation object:

  $service_obj->Method(Att1 => { ConfluenceLocation => $value, ..., WebLocation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgentRuntime::RetrievalResultLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfluenceLocation

=head1 DESCRIPTION

Contains information about the data source location.

This data type is used in the following API operations:

=over

=item *

Retrieve response
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_Retrieve.html#API_agent-runtime_Retrieve_ResponseSyntax)
E<ndash> in the C<location> field

=item *

RetrieveAndGenerate response
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_RetrieveAndGenerate.html#API_agent-runtime_RetrieveAndGenerate_ResponseSyntax)
E<ndash> in the C<location> field

=item *

InvokeAgent response
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_InvokeAgent.html#API_agent-runtime_InvokeAgent_ResponseSyntax)
E<ndash> in the C<location> field

=back


=head1 ATTRIBUTES


=head2 ConfluenceLocation => L<Paws::BedrockAgentRuntime::RetrievalResultConfluenceLocation>

The Confluence data source location.


=head2 CustomDocumentLocation => L<Paws::BedrockAgentRuntime::RetrievalResultCustomDocumentLocation>

Specifies the location of a document in a custom data source.


=head2 KendraDocumentLocation => L<Paws::BedrockAgentRuntime::RetrievalResultKendraDocumentLocation>

The location of a document in Amazon Kendra.


=head2 S3Location => L<Paws::BedrockAgentRuntime::RetrievalResultS3Location>

The S3 data source location.


=head2 SalesforceLocation => L<Paws::BedrockAgentRuntime::RetrievalResultSalesforceLocation>

The Salesforce data source location.


=head2 SharePointLocation => L<Paws::BedrockAgentRuntime::RetrievalResultSharePointLocation>

The SharePoint data source location.


=head2 SqlLocation => L<Paws::BedrockAgentRuntime::RetrievalResultSqlLocation>

Specifies information about the SQL query used to retrieve the result.


=head2 B<REQUIRED> Type => Str

The type of data source location.


=head2 WebLocation => L<Paws::BedrockAgentRuntime::RetrievalResultWebLocation>

The web URL/URLs data source location.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

