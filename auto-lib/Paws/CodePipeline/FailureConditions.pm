# Generated by default/object.tt
package Paws::CodePipeline::FailureConditions;
  use Moose;
  has Conditions => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::Condition]', request_name => 'conditions', traits => ['NameInRequest']);
  has Result => (is => 'ro', isa => 'Str', request_name => 'result', traits => ['NameInRequest']);
  has RetryConfiguration => (is => 'ro', isa => 'Paws::CodePipeline::RetryConfiguration', request_name => 'retryConfiguration', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::FailureConditions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::FailureConditions object:

  $service_obj->Method(Att1 => { Conditions => $value, ..., RetryConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::FailureConditions object:

  $result = $service_obj->Method(...);
  $result->Att1->Conditions

=head1 DESCRIPTION

The configuration that specifies the result, such as rollback, to occur
upon stage failure. For more information about conditions, see Stage
conditions
(https://docs.aws.amazon.com/codepipeline/latest/userguide/stage-conditions.html)
and How do stage conditions work?
(https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts-how-it-works-conditions.html).

=head1 ATTRIBUTES


=head2 Conditions => ArrayRef[L<Paws::CodePipeline::Condition>]

The conditions that are configured as failure conditions. For more
information about conditions, see Stage conditions
(https://docs.aws.amazon.com/codepipeline/latest/userguide/stage-conditions.html)
and How do stage conditions work?
(https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts-how-it-works-conditions.html).


=head2 Result => Str

The specified result for when the failure conditions are met, such as
rolling back the stage.


=head2 RetryConfiguration => L<Paws::CodePipeline::RetryConfiguration>

The retry configuration specifies automatic retry for a failed stage,
along with the configured retry mode.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

