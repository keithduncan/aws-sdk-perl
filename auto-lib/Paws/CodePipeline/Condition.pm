# Generated by default/object.tt
package Paws::CodePipeline::Condition;
  use Moose;
  has Result => (is => 'ro', isa => 'Str', request_name => 'result', traits => ['NameInRequest']);
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::RuleDeclaration]', request_name => 'rules', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::Condition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::Condition object:

  $service_obj->Method(Att1 => { Result => $value, ..., Rules => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::Condition object:

  $result = $service_obj->Method(...);
  $result->Att1->Result

=head1 DESCRIPTION

The condition for the stage. A condition is made up of the rules and
the result for the condition. For more information about conditions,
see Stage conditions
(https://docs.aws.amazon.com/codepipeline/latest/userguide/stage-conditions.html)
and How do stage conditions work?
(https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts-how-it-works-conditions.html)..
For more information about rules, see the CodePipeline rule reference
(https://docs.aws.amazon.com/codepipeline/latest/userguide/rule-reference.html).

=head1 ATTRIBUTES


=head2 Result => Str

The action to be done when the condition is met. For example, rolling
back an execution for a failure condition.


=head2 Rules => ArrayRef[L<Paws::CodePipeline::RuleDeclaration>]

The rules that make up the condition.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

