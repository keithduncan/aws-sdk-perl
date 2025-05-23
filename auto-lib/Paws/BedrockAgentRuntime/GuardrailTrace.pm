# Generated by default/object.tt
package Paws::BedrockAgentRuntime::GuardrailTrace;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', request_name => 'action', traits => ['NameInRequest']);
  has InputAssessments => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgentRuntime::GuardrailAssessment]', request_name => 'inputAssessments', traits => ['NameInRequest']);
  has Metadata => (is => 'ro', isa => 'Paws::BedrockAgentRuntime::Metadata', request_name => 'metadata', traits => ['NameInRequest']);
  has OutputAssessments => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgentRuntime::GuardrailAssessment]', request_name => 'outputAssessments', traits => ['NameInRequest']);
  has TraceId => (is => 'ro', isa => 'Str', request_name => 'traceId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::GuardrailTrace

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgentRuntime::GuardrailTrace object:

  $service_obj->Method(Att1 => { Action => $value, ..., TraceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgentRuntime::GuardrailTrace object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

The trace details used in the Guardrail.

=head1 ATTRIBUTES


=head2 Action => Str

The trace action details used with the Guardrail.


=head2 InputAssessments => ArrayRef[L<Paws::BedrockAgentRuntime::GuardrailAssessment>]

The details of the input assessments used in the Guardrail Trace.


=head2 Metadata => L<Paws::BedrockAgentRuntime::Metadata>

Contains information about the Guardrail output.


=head2 OutputAssessments => ArrayRef[L<Paws::BedrockAgentRuntime::GuardrailAssessment>]

The details of the output assessments used in the Guardrail Trace.


=head2 TraceId => Str

The details of the trace Id used in the Guardrail Trace.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

