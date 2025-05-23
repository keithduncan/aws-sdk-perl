# Generated by default/object.tt
package Paws::Bedrock::GuardrailWord;
  use Moose;
  has InputAction => (is => 'ro', isa => 'Str', request_name => 'inputAction', traits => ['NameInRequest']);
  has InputEnabled => (is => 'ro', isa => 'Bool', request_name => 'inputEnabled', traits => ['NameInRequest']);
  has OutputAction => (is => 'ro', isa => 'Str', request_name => 'outputAction', traits => ['NameInRequest']);
  has OutputEnabled => (is => 'ro', isa => 'Bool', request_name => 'outputEnabled', traits => ['NameInRequest']);
  has Text => (is => 'ro', isa => 'Str', request_name => 'text', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GuardrailWord

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Bedrock::GuardrailWord object:

  $service_obj->Method(Att1 => { InputAction => $value, ..., Text => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Bedrock::GuardrailWord object:

  $result = $service_obj->Method(...);
  $result->Att1->InputAction

=head1 DESCRIPTION

A word configured for the guardrail.

=head1 ATTRIBUTES


=head2 InputAction => Str

The action to take when harmful content is detected in the input.
Supported values include:

=over

=item *

C<BLOCK> E<ndash> Block the content and replace it with blocked
messaging.

=item *

C<NONE> E<ndash> Take no action but return detection information in the
trace response.

=back



=head2 InputEnabled => Bool

Indicates whether guardrail evaluation is enabled on the input. When
disabled, you aren't charged for the evaluation. The evaluation doesn't
appear in the response.


=head2 OutputAction => Str

The action to take when harmful content is detected in the output.
Supported values include:

=over

=item *

C<BLOCK> E<ndash> Block the content and replace it with blocked
messaging.

=item *

C<NONE> E<ndash> Take no action but return detection information in the
trace response.

=back



=head2 OutputEnabled => Bool

Indicates whether guardrail evaluation is enabled on the output. When
disabled, you aren't charged for the evaluation. The evaluation doesn't
appear in the response.


=head2 B<REQUIRED> Text => Str

Text of the word configured for the guardrail to block.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

