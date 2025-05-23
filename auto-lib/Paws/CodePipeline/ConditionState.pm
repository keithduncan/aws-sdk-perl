# Generated by default/object.tt
package Paws::CodePipeline::ConditionState;
  use Moose;
  has LatestExecution => (is => 'ro', isa => 'Paws::CodePipeline::ConditionExecution', request_name => 'latestExecution', traits => ['NameInRequest']);
  has RuleStates => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::RuleState]', request_name => 'ruleStates', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ConditionState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ConditionState object:

  $service_obj->Method(Att1 => { LatestExecution => $value, ..., RuleStates => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ConditionState object:

  $result = $service_obj->Method(...);
  $result->Att1->LatestExecution

=head1 DESCRIPTION

Information about the state of the condition.

=head1 ATTRIBUTES


=head2 LatestExecution => L<Paws::CodePipeline::ConditionExecution>

The state of the latest run of the rule.


=head2 RuleStates => ArrayRef[L<Paws::CodePipeline::RuleState>]

The state of the rules for the condition.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

