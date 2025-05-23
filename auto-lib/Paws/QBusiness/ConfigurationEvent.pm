# Generated by default/object.tt
package Paws::QBusiness::ConfigurationEvent;
  use Moose;
  has AttributeFilter => (is => 'ro', isa => 'Paws::QBusiness::AttributeFilter', request_name => 'attributeFilter', traits => ['NameInRequest']);
  has ChatMode => (is => 'ro', isa => 'Str', request_name => 'chatMode', traits => ['NameInRequest']);
  has ChatModeConfiguration => (is => 'ro', isa => 'Paws::QBusiness::ChatModeConfiguration', request_name => 'chatModeConfiguration', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ConfigurationEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QBusiness::ConfigurationEvent object:

  $service_obj->Method(Att1 => { AttributeFilter => $value, ..., ChatModeConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QBusiness::ConfigurationEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeFilter

=head1 DESCRIPTION

A configuration event activated by an end user request to select a
specific chat mode.

=head1 ATTRIBUTES


=head2 AttributeFilter => L<Paws::QBusiness::AttributeFilter>




=head2 ChatMode => Str

The chat modes available to an Amazon Q Business end user.

=over

=item *

C<RETRIEVAL_MODE> - The default chat mode for an Amazon Q Business
application. When this mode is enabled, Amazon Q Business generates
responses only from data sources connected to an Amazon Q Business
application.

=item *

C<CREATOR_MODE> - By selecting this mode, users can choose to generate
responses only from the LLM knowledge, without consulting connected
data sources, for a chat request.

=item *

C<PLUGIN_MODE> - By selecting this mode, users can choose to use
plugins in chat.

=back

For more information, see Admin controls and guardrails
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails.html),
Plugins
(https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/plugins.html),
and Conversation settings
(https://docs.aws.amazon.com/amazonq/latest/business-use-dg/using-web-experience.html#chat-source-scope).


=head2 ChatModeConfiguration => L<Paws::QBusiness::ChatModeConfiguration>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

