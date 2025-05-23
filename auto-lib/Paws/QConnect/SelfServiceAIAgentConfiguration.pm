# Generated by default/object.tt
package Paws::QConnect::SelfServiceAIAgentConfiguration;
  use Moose;
  has AssociationConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::AssociationConfiguration]', request_name => 'associationConfigurations', traits => ['NameInRequest']);
  has SelfServiceAIGuardrailId => (is => 'ro', isa => 'Str', request_name => 'selfServiceAIGuardrailId', traits => ['NameInRequest']);
  has SelfServiceAnswerGenerationAIPromptId => (is => 'ro', isa => 'Str', request_name => 'selfServiceAnswerGenerationAIPromptId', traits => ['NameInRequest']);
  has SelfServicePreProcessingAIPromptId => (is => 'ro', isa => 'Str', request_name => 'selfServicePreProcessingAIPromptId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::SelfServiceAIAgentConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QConnect::SelfServiceAIAgentConfiguration object:

  $service_obj->Method(Att1 => { AssociationConfigurations => $value, ..., SelfServicePreProcessingAIPromptId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QConnect::SelfServiceAIAgentConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociationConfigurations

=head1 DESCRIPTION

The configuration for AI Agents of type SELF_SERVICE.

=head1 ATTRIBUTES


=head2 AssociationConfigurations => ArrayRef[L<Paws::QConnect::AssociationConfiguration>]

The association configurations for overriding behavior on this AI
Agent.


=head2 SelfServiceAIGuardrailId => Str

The AI Guardrail identifier used by the SELF_SERVICE AI Agent.


=head2 SelfServiceAnswerGenerationAIPromptId => Str

The AI Prompt identifier for the Self Service Answer Generation prompt
used by the SELF_SERVICE AI Agent


=head2 SelfServicePreProcessingAIPromptId => Str

The AI Prompt identifier for the Self Service Pre-Processing prompt
used by the SELF_SERVICE AI Agent



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

