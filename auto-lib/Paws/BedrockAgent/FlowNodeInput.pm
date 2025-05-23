# Generated by default/object.tt
package Paws::BedrockAgent::FlowNodeInput;
  use Moose;
  has Category => (is => 'ro', isa => 'Str', request_name => 'category', traits => ['NameInRequest']);
  has Expression => (is => 'ro', isa => 'Str', request_name => 'expression', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::FlowNodeInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgent::FlowNodeInput object:

  $service_obj->Method(Att1 => { Category => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgent::FlowNodeInput object:

  $result = $service_obj->Method(...);
  $result->Att1->Category

=head1 DESCRIPTION

Contains configurations for an input in an Amazon Bedrock Flows node.

=head1 ATTRIBUTES


=head2 Category => Str

Specifies how input data flows between iterations in a DoWhile loop.

=over

=item *

C<LoopCondition> - Controls whether the loop continues by evaluating
condition expressions against the input data. Use this category to
define the condition that determines if the loop should continue.

=item *

C<ReturnValueToLoopStart> - Defines data to pass back to the start of
the loop's next iteration. Use this category for variables that you
want to update for each loop iteration.

=item *

C<ExitLoop> - Defines the value that's available once the loop ends.
Use this category to expose loop results to nodes outside the loop.

=back



=head2 B<REQUIRED> Expression => Str

An expression that formats the input for the node. For an explanation
of how to create expressions, see Expressions in Prompt flows in Amazon
Bedrock
(https://docs.aws.amazon.com/bedrock/latest/userguide/flows-expressions.html).


=head2 B<REQUIRED> Name => Str

Specifies a name for the input that you can reference.


=head2 B<REQUIRED> Type => Str

Specifies the data type of the input. If the input doesn't match this
type at runtime, a validation error will be thrown.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

