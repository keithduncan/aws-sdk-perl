
package Paws::ApiGateway::CreateRestApi;
  use Moose;
  has ApiKeySource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiKeySource');
  has BinaryMediaTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'binaryMediaTypes');
  has CloneFrom => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cloneFrom');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DisableExecuteApiEndpoint => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'disableExecuteApiEndpoint');
  has EndpointConfiguration => (is => 'ro', isa => 'Paws::ApiGateway::EndpointConfiguration', traits => ['NameInRequest'], request_name => 'endpointConfiguration');
  has MinimumCompressionSize => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'minimumCompressionSize');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy');
  has Tags => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'tags');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRestApi');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::RestApi');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateRestApi - Arguments for method CreateRestApi on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRestApi on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method CreateRestApi.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRestApi.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $RestApi = $apigateway->CreateRestApi(
      Name                      => 'MyString',
      ApiKeySource              => 'HEADER',               # OPTIONAL
      BinaryMediaTypes          => [ 'MyString', ... ],    # OPTIONAL
      CloneFrom                 => 'MyString',             # OPTIONAL
      Description               => 'MyString',             # OPTIONAL
      DisableExecuteApiEndpoint => 1,                      # OPTIONAL
      EndpointConfiguration     => {
        IpAddressType => 'ipv4',    # values: ipv4, dualstack; OPTIONAL
        Types         => [
          'REGIONAL', ...           # values: REGIONAL, EDGE, PRIVATE
        ],    # OPTIONAL
        VpcEndpointIds => [ 'MyString', ... ],
      },    # OPTIONAL
      MinimumCompressionSize => 1,                                # OPTIONAL
      Policy                 => 'MyString',                       # OPTIONAL
      Tags                   => { 'MyString' => 'MyString', },    # OPTIONAL
      Version                => 'MyString',                       # OPTIONAL
    );

    # Results:
    my $ApiKeySource              = $RestApi->ApiKeySource;
    my $BinaryMediaTypes          = $RestApi->BinaryMediaTypes;
    my $CreatedDate               = $RestApi->CreatedDate;
    my $Description               = $RestApi->Description;
    my $DisableExecuteApiEndpoint = $RestApi->DisableExecuteApiEndpoint;
    my $EndpointConfiguration     = $RestApi->EndpointConfiguration;
    my $Id                        = $RestApi->Id;
    my $MinimumCompressionSize    = $RestApi->MinimumCompressionSize;
    my $Name                      = $RestApi->Name;
    my $Policy                    = $RestApi->Policy;
    my $RootResourceId            = $RestApi->RootResourceId;
    my $Tags                      = $RestApi->Tags;
    my $Version                   = $RestApi->Version;
    my $Warnings                  = $RestApi->Warnings;

    # Returns a L<Paws::ApiGateway::RestApi> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/CreateRestApi>

=head1 ATTRIBUTES


=head2 ApiKeySource => Str

The source of the API key for metering requests according to a usage
plan. Valid values are: C<HEADER> to read the API key from the
C<X-API-Key> header of a request. C<AUTHORIZER> to read the API key
from the C<UsageIdentifierKey> from a custom authorizer.

Valid values are: C<"HEADER">, C<"AUTHORIZER">

=head2 BinaryMediaTypes => ArrayRef[Str|Undef]

The list of binary media types supported by the RestApi. By default,
the RestApi supports only UTF-8-encoded text payloads.



=head2 CloneFrom => Str

The ID of the RestApi that you want to clone from.



=head2 Description => Str

The description of the RestApi.



=head2 DisableExecuteApiEndpoint => Bool

Specifies whether clients can invoke your API by using the default
C<execute-api> endpoint. By default, clients can invoke your API with
the default C<https://{api_id}.execute-api.{region}.amazonaws.com>
endpoint. To require that clients use a custom domain name to invoke
your API, disable the default endpoint



=head2 EndpointConfiguration => L<Paws::ApiGateway::EndpointConfiguration>

The endpoint configuration of this RestApi showing the endpoint types
and IP address types of the API.



=head2 MinimumCompressionSize => Int

A nullable integer that is used to enable compression (with
non-negative between 0 and 10485760 (10M) bytes, inclusive) or disable
compression (with a null value) on an API. When compression is enabled,
compression or decompression is not applied on the payload if the
payload size is smaller than this value. Setting it to zero allows
compression for any payload size.



=head2 B<REQUIRED> Name => Str

The name of the RestApi.



=head2 Policy => Str

A stringified JSON policy document that applies to this RestApi
regardless of the caller and Method configuration.



=head2 Tags => L<Paws::ApiGateway::MapOfStringToString>

The key-value map of strings. The valid character set is
[a-zA-Z+-=._:/]. The tag key can be up to 128 characters and must not
start with C<aws:>. The tag value can be up to 256 characters.



=head2 Version => Str

A version identifier for the API.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRestApi in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

