# Generated by default/object.tt
package Paws::Connect::AttributeCondition;
  use Moose;
  has ComparisonOperator => (is => 'ro', isa => 'Str');
  has MatchCriteria => (is => 'ro', isa => 'Paws::Connect::MatchCriteria');
  has Name => (is => 'ro', isa => 'Str');
  has ProficiencyLevel => (is => 'ro', isa => 'Num');
  has Range => (is => 'ro', isa => 'Paws::Connect::Range');
  has Value => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::AttributeCondition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::AttributeCondition object:

  $service_obj->Method(Att1 => { ComparisonOperator => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::AttributeCondition object:

  $result = $service_obj->Method(...);
  $result->Att1->ComparisonOperator

=head1 DESCRIPTION

An object to specify the predefined attribute condition.

=head1 ATTRIBUTES


=head2 ComparisonOperator => Str

The operator of the condition.


=head2 MatchCriteria => L<Paws::Connect::MatchCriteria>

An object to define C<AgentsCriteria>.


=head2 Name => Str

The name of predefined attribute.


=head2 ProficiencyLevel => Num

The proficiency level of the condition.


=head2 Range => L<Paws::Connect::Range>

An Object to define the minimum and maximum proficiency levels.


=head2 Value => Str

The value of predefined attribute.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

