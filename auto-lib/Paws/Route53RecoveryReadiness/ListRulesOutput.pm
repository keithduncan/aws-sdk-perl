# Generated by default/object.tt
package Paws::Route53RecoveryReadiness::ListRulesOutput;
  use Moose;
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest'], required => 1);
  has RuleDescription => (is => 'ro', isa => 'Str', request_name => 'ruleDescription', traits => ['NameInRequest'], required => 1);
  has RuleId => (is => 'ro', isa => 'Str', request_name => 'ruleId', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::ListRulesOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53RecoveryReadiness::ListRulesOutput object:

  $service_obj->Method(Att1 => { ResourceType => $value, ..., RuleId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53RecoveryReadiness::ListRulesOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceType

=head1 DESCRIPTION

Readiness rule information, including the resource type, rule ID, and
rule description.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceType => Str

The resource type that the readiness rule applies to.


=head2 B<REQUIRED> RuleDescription => Str

The description of a readiness rule.


=head2 B<REQUIRED> RuleId => Str

The ID for the readiness rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53RecoveryReadiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

