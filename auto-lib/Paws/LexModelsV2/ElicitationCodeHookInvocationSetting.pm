# Generated by default/object.tt
package Paws::LexModelsV2::ElicitationCodeHookInvocationSetting;
  use Moose;
  has EnableCodeHookInvocation => (is => 'ro', isa => 'Bool', request_name => 'enableCodeHookInvocation', traits => ['NameInRequest'], required => 1);
  has InvocationLabel => (is => 'ro', isa => 'Str', request_name => 'invocationLabel', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ElicitationCodeHookInvocationSetting

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModelsV2::ElicitationCodeHookInvocationSetting object:

  $service_obj->Method(Att1 => { EnableCodeHookInvocation => $value, ..., InvocationLabel => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModelsV2::ElicitationCodeHookInvocationSetting object:

  $result = $service_obj->Method(...);
  $result->Att1->EnableCodeHookInvocation

=head1 DESCRIPTION

Settings that specify the dialog code hook that is called by Amazon Lex
between eliciting slot values.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnableCodeHookInvocation => Bool

Indicates whether a Lambda function should be invoked for the dialog.


=head2 InvocationLabel => Str

A label that indicates the dialog step from which the dialog code hook
is happening.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

