# Generated by default/object.tt
package Paws::EMR::StepConfig;
  use Moose;
  has ActionOnFailure => (is => 'ro', isa => 'Str');
  has HadoopJarStep => (is => 'ro', isa => 'Paws::EMR::HadoopJarStepConfig', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::StepConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::StepConfig object:

  $service_obj->Method(Att1 => { ActionOnFailure => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::StepConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionOnFailure

=head1 DESCRIPTION

Specification for a cluster (job flow) step.

=head1 ATTRIBUTES


=head2 ActionOnFailure => Str

The action to take when the step fails. Use one of the following
values:

=over

=item *

C<TERMINATE_CLUSTER> - Shuts down the cluster.

=item *

C<CANCEL_AND_WAIT> - Cancels any pending steps and returns the cluster
to the C<WAITING> state.

=item *

C<CONTINUE> - Continues to the next step in the queue.

=item *

C<TERMINATE_JOB_FLOW> - Shuts down the cluster. C<TERMINATE_JOB_FLOW>
is provided for backward compatibility. We recommend using
C<TERMINATE_CLUSTER> instead.

=back

If a cluster's C<StepConcurrencyLevel> is greater than C<1>, do not use
C<AddJobFlowSteps> to submit a step with this parameter set to
C<CANCEL_AND_WAIT> or C<TERMINATE_CLUSTER>. The step is not submitted
and the action fails with a message that the C<ActionOnFailure> setting
is not valid.

If you change a cluster's C<StepConcurrencyLevel> to be greater than 1
while a step is running, the C<ActionOnFailure> parameter may not
behave as you expect. In this case, for a step that fails with this
parameter set to C<CANCEL_AND_WAIT>, pending steps and the running step
are not canceled; for a step that fails with this parameter set to
C<TERMINATE_CLUSTER>, the cluster does not terminate.


=head2 B<REQUIRED> HadoopJarStep => L<Paws::EMR::HadoopJarStepConfig>

The JAR file used for the step.


=head2 B<REQUIRED> Name => Str

The name of the step.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

