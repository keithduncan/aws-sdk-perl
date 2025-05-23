# Generated by default/object.tt
package Paws::Chatbot::CustomAction;
  use Moose;
  has ActionName => (is => 'ro', isa => 'Str');
  has AliasName => (is => 'ro', isa => 'Str');
  has Attachments => (is => 'ro', isa => 'ArrayRef[Paws::Chatbot::CustomActionAttachment]');
  has CustomActionArn => (is => 'ro', isa => 'Str', required => 1);
  has Definition => (is => 'ro', isa => 'Paws::Chatbot::CustomActionDefinition', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::CustomAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chatbot::CustomAction object:

  $service_obj->Method(Att1 => { ActionName => $value, ..., Definition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chatbot::CustomAction object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionName

=head1 DESCRIPTION

Represents a parameterized command that can be invoked as an alias or
as a notification button in the chat client.

=head1 ATTRIBUTES


=head2 ActionName => Str

The name of the custom action that is included in the ARN.


=head2 AliasName => Str

The name used to invoke this action in the chat channel. For example,
C<@aws run my-alias>.


=head2 Attachments => ArrayRef[L<Paws::Chatbot::CustomActionAttachment>]

Defines when this custom action button should be attached to a
notification.


=head2 B<REQUIRED> CustomActionArn => Str

The fully defined Amazon Resource Name (ARN) of the custom action.


=head2 B<REQUIRED> Definition => L<Paws::Chatbot::CustomActionDefinition>

The definition of the command to run when invoked an alias or as an
action button.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chatbot>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

