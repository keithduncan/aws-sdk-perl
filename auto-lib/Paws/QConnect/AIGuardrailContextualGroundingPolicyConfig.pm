# Generated by default/object.tt
package Paws::QConnect::AIGuardrailContextualGroundingPolicyConfig;
  use Moose;
  has FiltersConfig => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::GuardrailContextualGroundingFilterConfig]', request_name => 'filtersConfig', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::AIGuardrailContextualGroundingPolicyConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QConnect::AIGuardrailContextualGroundingPolicyConfig object:

  $service_obj->Method(Att1 => { FiltersConfig => $value, ..., FiltersConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QConnect::AIGuardrailContextualGroundingPolicyConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->FiltersConfig

=head1 DESCRIPTION

The policy configuration details for the AI Guardrail's contextual
grounding policy.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FiltersConfig => ArrayRef[L<Paws::QConnect::GuardrailContextualGroundingFilterConfig>]

The filter configuration details for the AI Guardrails contextual
grounding policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

