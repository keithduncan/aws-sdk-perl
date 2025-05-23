# Generated by default/object.tt
package Paws::BedrockRuntime::GuardrailTextBlock;
  use Moose;
  has Qualifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'qualifiers', traits => ['NameInRequest']);
  has Text => (is => 'ro', isa => 'Str', request_name => 'text', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockRuntime::GuardrailTextBlock

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockRuntime::GuardrailTextBlock object:

  $service_obj->Method(Att1 => { Qualifiers => $value, ..., Text => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockRuntime::GuardrailTextBlock object:

  $result = $service_obj->Method(...);
  $result->Att1->Qualifiers

=head1 DESCRIPTION

The text block to be evaluated by the guardrail.

=head1 ATTRIBUTES


=head2 Qualifiers => ArrayRef[Str|Undef]

The qualifiers describing the text block.


=head2 B<REQUIRED> Text => Str

The input text details to be evaluated by the guardrail.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

