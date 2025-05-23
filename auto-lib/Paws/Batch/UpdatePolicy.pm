# Generated by default/object.tt
package Paws::Batch::UpdatePolicy;
  use Moose;
  has JobExecutionTimeoutMinutes => (is => 'ro', isa => 'Int', request_name => 'jobExecutionTimeoutMinutes', traits => ['NameInRequest']);
  has TerminateJobsOnUpdate => (is => 'ro', isa => 'Bool', request_name => 'terminateJobsOnUpdate', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::UpdatePolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::UpdatePolicy object:

  $service_obj->Method(Att1 => { JobExecutionTimeoutMinutes => $value, ..., TerminateJobsOnUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::UpdatePolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->JobExecutionTimeoutMinutes

=head1 DESCRIPTION

Specifies the infrastructure update policy for the Amazon EC2 compute
environment. For more information about infrastructure updates, see
Updating compute environments
(https://docs.aws.amazon.com/batch/latest/userguide/updating-compute-environments.html)
in the I<Batch User Guide>.

=head1 ATTRIBUTES


=head2 JobExecutionTimeoutMinutes => Int

Specifies the job timeout (in minutes) when the compute environment
infrastructure is updated. The default value is 30.


=head2 TerminateJobsOnUpdate => Bool

Specifies whether jobs are automatically terminated when the computer
environment infrastructure is updated. The default value is C<false>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

