# Generated by default/object.tt
package Paws::Bedrock::GuardrailSensitiveInformationPolicyConfig;
  use Moose;
  has PiiEntitiesConfig => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::GuardrailPiiEntityConfig]', request_name => 'piiEntitiesConfig', traits => ['NameInRequest']);
  has RegexesConfig => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::GuardrailRegexConfig]', request_name => 'regexesConfig', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GuardrailSensitiveInformationPolicyConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Bedrock::GuardrailSensitiveInformationPolicyConfig object:

  $service_obj->Method(Att1 => { PiiEntitiesConfig => $value, ..., RegexesConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Bedrock::GuardrailSensitiveInformationPolicyConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->PiiEntitiesConfig

=head1 DESCRIPTION

Contains details about PII entities and regular expressions to
configure for the guardrail.

=head1 ATTRIBUTES


=head2 PiiEntitiesConfig => ArrayRef[L<Paws::Bedrock::GuardrailPiiEntityConfig>]

A list of PII entities to configure to the guardrail.


=head2 RegexesConfig => ArrayRef[L<Paws::Bedrock::GuardrailRegexConfig>]

A list of regular expressions to configure to the guardrail.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

