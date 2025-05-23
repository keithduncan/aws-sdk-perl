# Generated by default/object.tt
package Paws::BedrockAgent::MissingLoopInputNodeFlowValidationDetails;
  use Moose;
  has LoopNode => (is => 'ro', isa => 'Str', request_name => 'loopNode', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::MissingLoopInputNodeFlowValidationDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgent::MissingLoopInputNodeFlowValidationDetails object:

  $service_obj->Method(Att1 => { LoopNode => $value, ..., LoopNode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgent::MissingLoopInputNodeFlowValidationDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->LoopNode

=head1 DESCRIPTION

Details about a flow that's missing a required C<LoopInput> node in a
DoWhile loop.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoopNode => Str

The DoWhile loop in a flow that's missing a required C<LoopInput> node.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

