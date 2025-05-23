# Generated by default/object.tt
package Paws::BedrockAgentRuntime::BedrockSessionContentBlock;
  use Moose;
  has Image => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::ImageBlock', request_name => 'image', traits => ['NameInRequest']);
  has Text => (is => 'ro', isa => 'Str', request_name => 'text', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::BedrockSessionContentBlock

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgentRuntime::BedrockSessionContentBlock object:

  $service_obj->Method(Att1 => { Image => $value, ..., Text => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgentRuntime::BedrockSessionContentBlock object:

  $result = $service_obj->Method(...);
  $result->Att1->Image

=head1 DESCRIPTION

A block of content that you pass to, or receive from, a Amazon Bedrock
session in an invocation step. You pass the content to a session in the
C<payLoad> of the PutInvocationStep
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_PutInvocationStep.html)
API operation. You retrieve the content with the GetInvocationStep
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_agent-runtime_GetInvocationStep.html)
API operation.

For more information about sessions, see Store and retrieve
conversation history and context with Amazon Bedrock sessions
(https://docs.aws.amazon.com/bedrock/latest/userguide/sessions.html).

=head1 ATTRIBUTES


=head2 Image => L<Paws::BedrockAgentRuntime::ImageBlock>

The image in the invocation step.


=head2 Text => Str

The text in the invocation step.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

