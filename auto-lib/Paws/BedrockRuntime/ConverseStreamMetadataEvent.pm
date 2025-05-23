# Generated by default/object.tt
package Paws::BedrockRuntime::ConverseStreamMetadataEvent;
  use Moose;
  has Metrics => (is => 'ro', isa => 'Paws::BedrockRuntime::ConverseStreamMetrics', request_name => 'metrics', traits => ['NameInRequest'], required => 1);
  has PerformanceConfig => (is => 'ro', isa => 'Paws::BedrockRuntime::PerformanceConfiguration', request_name => 'performanceConfig', traits => ['NameInRequest']);
  has Trace => (is => 'ro', isa => 'Paws::BedrockRuntime::ConverseStreamTrace', request_name => 'trace', traits => ['NameInRequest']);
  has Usage => (is => 'ro', isa => 'Paws::BedrockRuntime::TokenUsage', request_name => 'usage', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockRuntime::ConverseStreamMetadataEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockRuntime::ConverseStreamMetadataEvent object:

  $service_obj->Method(Att1 => { Metrics => $value, ..., Usage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockRuntime::ConverseStreamMetadataEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->Metrics

=head1 DESCRIPTION

A conversation stream metadata event.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Metrics => L<Paws::BedrockRuntime::ConverseStreamMetrics>

The metrics for the conversation stream metadata event.


=head2 PerformanceConfig => L<Paws::BedrockRuntime::PerformanceConfiguration>

Model performance configuration metadata for the conversation stream
event.


=head2 Trace => L<Paws::BedrockRuntime::ConverseStreamTrace>

The trace object in the response from ConverseStream
(https://docs.aws.amazon.com/bedrock/latest/APIReference/API_runtime_ConverseStream.html)
that contains information about the guardrail behavior.


=head2 B<REQUIRED> Usage => L<Paws::BedrockRuntime::TokenUsage>

Usage information for the conversation stream event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

