# Generated by default/object.tt
package Paws::BedrockAgentRuntime::RoutingClassifierTrace;
  use Moose;
  has InvocationInput => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::InvocationInput', request_name => 'invocationInput', traits => ['NameInRequest']);
  has ModelInvocationInput => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::ModelInvocationInput', request_name => 'modelInvocationInput', traits => ['NameInRequest']);
  has ModelInvocationOutput => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::RoutingClassifierModelInvocationOutput', request_name => 'modelInvocationOutput', traits => ['NameInRequest']);
  has Observation => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::Observation', request_name => 'observation', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::RoutingClassifierTrace

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgentRuntime::RoutingClassifierTrace object:

  $service_obj->Method(Att1 => { InvocationInput => $value, ..., Observation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgentRuntime::RoutingClassifierTrace object:

  $result = $service_obj->Method(...);
  $result->Att1->InvocationInput

=head1 DESCRIPTION

A trace for a routing classifier.

=head1 ATTRIBUTES


=head2 InvocationInput => L<Paws::BedrockAgentRuntime::InvocationInput>

The classifier's invocation input.


=head2 ModelInvocationInput => L<Paws::BedrockAgentRuntime::ModelInvocationInput>

The classifier's model invocation input.


=head2 ModelInvocationOutput => L<Paws::BedrockAgentRuntime::RoutingClassifierModelInvocationOutput>

The classifier's model invocation output.


=head2 Observation => L<Paws::BedrockAgentRuntime::Observation>

The classifier's observation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

