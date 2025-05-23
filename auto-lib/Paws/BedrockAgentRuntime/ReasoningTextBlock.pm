# Generated by default/object.tt
package Paws::BedrockAgentRuntime::ReasoningTextBlock;
  use Moose;
  has Signature => (is => 'ro', isa => 'Str', request_name => 'signature', traits => ['NameInRequest']);
  has Text => (is => 'ro', isa => 'Str', request_name => 'text', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::ReasoningTextBlock

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgentRuntime::ReasoningTextBlock object:

  $service_obj->Method(Att1 => { Signature => $value, ..., Text => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgentRuntime::ReasoningTextBlock object:

  $result = $service_obj->Method(...);
  $result->Att1->Signature

=head1 DESCRIPTION

Contains information about the reasoning that the model used to return
the content in the content block.

=head1 ATTRIBUTES


=head2 Signature => Str

A hash of all the messages in the conversation to ensure that the
content in the reasoning text block isn't tampered with. You must
submit the signature in subsequent C<Converse> requests, in addition to
the previous messages. If the previous messages are tampered with, the
response throws an error.


=head2 B<REQUIRED> Text => Str

Text describing the reasoning that the model used to return the content
in the content block.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

