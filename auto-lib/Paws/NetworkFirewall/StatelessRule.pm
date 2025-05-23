# Generated by default/object.tt
package Paws::NetworkFirewall::StatelessRule;
  use Moose;
  has Priority => (is => 'ro', isa => 'Int', required => 1);
  has RuleDefinition => (is => 'ro', isa => 'Paws::NetworkFirewall::RuleDefinition', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::StatelessRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NetworkFirewall::StatelessRule object:

  $service_obj->Method(Att1 => { Priority => $value, ..., RuleDefinition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NetworkFirewall::StatelessRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Priority

=head1 DESCRIPTION

A single stateless rule. This is used in
StatelessRulesAndCustomActions.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Priority => Int

Indicates the order in which to run this rule relative to all of the
rules that are defined for a stateless rule group. Network Firewall
evaluates the rules in a rule group starting with the lowest priority
setting. You must ensure that the priority settings are unique for the
rule group.

Each stateless rule group uses exactly one
C<StatelessRulesAndCustomActions> object, and each
C<StatelessRulesAndCustomActions> contains exactly one
C<StatelessRules> object. To ensure unique priority settings for your
rule groups, set unique priorities for the stateless rules that you
define inside any single C<StatelessRules> object.

You can change the priority settings of your rules at any time. To make
it easier to insert rules later, number them so there's a wide range in
between, for example use 100, 200, and so on.


=head2 B<REQUIRED> RuleDefinition => L<Paws::NetworkFirewall::RuleDefinition>

Defines the stateless 5-tuple packet inspection criteria and the action
to take on a packet that matches the criteria.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NetworkFirewall>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

