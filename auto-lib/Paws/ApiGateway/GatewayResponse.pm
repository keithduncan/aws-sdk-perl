
package Paws::ApiGateway::GatewayResponse;
  use Moose;
  has DefaultResponse => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'defaultResponse');
  has ResponseParameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'responseParameters');
  has ResponseTemplates => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'responseTemplates');
  has ResponseType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'responseType');
  has StatusCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusCode');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GatewayResponse

=head1 ATTRIBUTES


=head2 DefaultResponse => Bool

A Boolean flag to indicate whether this GatewayResponse is the default
gateway response (C<true>) or not (C<false>). A default gateway
response is one generated by API Gateway without any customization by
an API developer.


=head2 ResponseParameters => L<Paws::ApiGateway::MapOfStringToString>

Response parameters (paths, query strings and headers) of the
GatewayResponse as a string-to-string map of key-value pairs.


=head2 ResponseTemplates => L<Paws::ApiGateway::MapOfStringToString>

Response templates of the GatewayResponse as a string-to-string map of
key-value pairs.


=head2 ResponseType => Str

The response type of the associated GatewayResponse.

Valid values are: C<"DEFAULT_4XX">, C<"DEFAULT_5XX">, C<"RESOURCE_NOT_FOUND">, C<"UNAUTHORIZED">, C<"INVALID_API_KEY">, C<"ACCESS_DENIED">, C<"AUTHORIZER_FAILURE">, C<"AUTHORIZER_CONFIGURATION_ERROR">, C<"INVALID_SIGNATURE">, C<"EXPIRED_TOKEN">, C<"MISSING_AUTHENTICATION_TOKEN">, C<"INTEGRATION_FAILURE">, C<"INTEGRATION_TIMEOUT">, C<"API_CONFIGURATION_ERROR">, C<"UNSUPPORTED_MEDIA_TYPE">, C<"BAD_REQUEST_PARAMETERS">, C<"BAD_REQUEST_BODY">, C<"REQUEST_TOO_LARGE">, C<"THROTTLED">, C<"QUOTA_EXCEEDED">, C<"WAF_FILTERED">
=head2 StatusCode => Str

The HTTP status code for this GatewayResponse.


=head2 _request_id => Str


=cut

