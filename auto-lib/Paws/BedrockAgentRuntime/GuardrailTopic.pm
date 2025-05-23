# Generated by default/object.tt
package Paws::BedrockAgentRuntime::GuardrailTopic;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', request_name => 'action', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::GuardrailTopic

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgentRuntime::GuardrailTopic object:

  $service_obj->Method(Att1 => { Action => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgentRuntime::GuardrailTopic object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

The details for a specific topic defined in the Guardrail.

=head1 ATTRIBUTES


=head2 Action => Str

The action details on a specific topic in the Guardrail.


=head2 Name => Str

The name details on a specific topic in the Guardrail.


=head2 Type => Str

The type details on a specific topic in the Guardrail.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

