# Generated by default/object.tt
package Paws::BedrockAgentRuntime::OrchestrationModelInvocationOutput;
  use Moose;
  has Metadata => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::Metadata', request_name => 'metadata', traits => ['NameInRequest']);
  has RawResponse => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::RawResponse', request_name => 'rawResponse', traits => ['NameInRequest']);
  has ReasoningContent => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::ReasoningContentBlock', request_name => 'reasoningContent', traits => ['NameInRequest']);
  has TraceId => (is => 'ro', isa => 'Str', request_name => 'traceId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::OrchestrationModelInvocationOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgentRuntime::OrchestrationModelInvocationOutput object:

  $service_obj->Method(Att1 => { Metadata => $value, ..., TraceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgentRuntime::OrchestrationModelInvocationOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->Metadata

=head1 DESCRIPTION

The foundation model output from the orchestration step.

=head1 ATTRIBUTES


=head2 Metadata => L<Paws::BedrockAgentRuntime::Metadata>

Contains information about the foundation model output from the
orchestration step.


=head2 RawResponse => L<Paws::BedrockAgentRuntime::RawResponse>

Contains details of the raw response from the foundation model output.


=head2 ReasoningContent => L<Paws::BedrockAgentRuntime::ReasoningContentBlock>

Contains content about the reasoning that the model made during the
orchestration step.


=head2 TraceId => Str

The unique identifier of the trace.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

