# Generated by default/object.tt
package Paws::VPCLattice::RuleUpdate;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::VPCLattice::RuleAction', request_name => 'action', traits => ['NameInRequest']);
  has Match => (is => 'ro', isa => 'Paws::VPCLattice::RuleMatch', request_name => 'match', traits => ['NameInRequest']);
  has Priority => (is => 'ro', isa => 'Int', request_name => 'priority', traits => ['NameInRequest']);
  has RuleIdentifier => (is => 'ro', isa => 'Str', request_name => 'ruleIdentifier', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::RuleUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::VPCLattice::RuleUpdate object:

  $service_obj->Method(Att1 => { Action => $value, ..., RuleIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::VPCLattice::RuleUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Describes a rule update.

=head1 ATTRIBUTES


=head2 Action => L<Paws::VPCLattice::RuleAction>

The rule action.


=head2 Match => L<Paws::VPCLattice::RuleMatch>

The rule match.


=head2 Priority => Int

The rule priority. A listener can't have multiple rules with the same
priority.


=head2 B<REQUIRED> RuleIdentifier => Str

The ID or ARN of the rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

