# Generated by default/object.tt
package Paws::BedrockRuntime::ResponseStream;
  use Moose;
  has Chunk => (is => 'ro', isa => 'Paws::BedrockRuntime::PayloadPart', request_name => 'chunk', traits => ['NameInRequest']);
  has InternalServerException => (is => 'ro', isa => 'Paws::BedrockRuntime::InternalServerException', request_name => 'internalServerException', traits => ['NameInRequest']);
  has ModelStreamErrorException => (is => 'ro', isa => 'Paws::BedrockRuntime::ModelStreamErrorException', request_name => 'modelStreamErrorException', traits => ['NameInRequest']);
  has ModelTimeoutException => (is => 'ro', isa => 'Paws::BedrockRuntime::ModelTimeoutException', request_name => 'modelTimeoutException', traits => ['NameInRequest']);
  has ServiceUnavailableException => (is => 'ro', isa => 'Paws::BedrockRuntime::ServiceUnavailableException', request_name => 'serviceUnavailableException', traits => ['NameInRequest']);
  has ThrottlingException => (is => 'ro', isa => 'Paws::BedrockRuntime::ThrottlingException', request_name => 'throttlingException', traits => ['NameInRequest']);
  has ValidationException => (is => 'ro', isa => 'Paws::BedrockRuntime::ValidationException', request_name => 'validationException', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockRuntime::ResponseStream

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockRuntime::ResponseStream object:

  $service_obj->Method(Att1 => { Chunk => $value, ..., ValidationException => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockRuntime::ResponseStream object:

  $result = $service_obj->Method(...);
  $result->Att1->Chunk

=head1 DESCRIPTION

Definition of content in the response stream.

=head1 ATTRIBUTES


=head2 Chunk => L<Paws::BedrockRuntime::PayloadPart>

Content included in the response.


=head2 InternalServerException => L<Paws::BedrockRuntime::InternalServerException>

An internal server error occurred. Retry your request.


=head2 ModelStreamErrorException => L<Paws::BedrockRuntime::ModelStreamErrorException>

An error occurred while streaming the response. Retry your request.


=head2 ModelTimeoutException => L<Paws::BedrockRuntime::ModelTimeoutException>

The request took too long to process. Processing time exceeded the
model timeout length.


=head2 ServiceUnavailableException => L<Paws::BedrockRuntime::ServiceUnavailableException>

The service isn't available. Try again later.


=head2 ThrottlingException => L<Paws::BedrockRuntime::ThrottlingException>

Your request was throttled because of service-wide limitations.
Resubmit your request later or in a different region. You can also
purchase Provisioned Throughput
(https://docs.aws.amazon.com/bedrock/latest/userguide/prov-throughput.html)
to increase the rate or number of tokens you can process.


=head2 ValidationException => L<Paws::BedrockRuntime::ValidationException>

Input validation failed. Check your request parameters and retry the
request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

