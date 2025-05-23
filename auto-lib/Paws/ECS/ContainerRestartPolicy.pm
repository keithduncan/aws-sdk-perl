# Generated by default/object.tt
package Paws::ECS::ContainerRestartPolicy;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', request_name => 'enabled', traits => ['NameInRequest'], required => 1);
  has IgnoredExitCodes => (is => 'ro', isa => 'ArrayRef[Int]', request_name => 'ignoredExitCodes', traits => ['NameInRequest']);
  has RestartAttemptPeriod => (is => 'ro', isa => 'Int', request_name => 'restartAttemptPeriod', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ContainerRestartPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::ContainerRestartPolicy object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., RestartAttemptPeriod => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::ContainerRestartPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

You can enable a restart policy for each container defined in your task
definition, to overcome transient failures faster and maintain task
availability. When you enable a restart policy for a container, Amazon
ECS can restart the container if it exits, without needing to replace
the task. For more information, see Restart individual containers in
Amazon ECS tasks with container restart policies
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/container-restart-policy.html)
in the I<Amazon Elastic Container Service Developer Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Enabled => Bool

Specifies whether a restart policy is enabled for the container.


=head2 IgnoredExitCodes => ArrayRef[Int]

A list of exit codes that Amazon ECS will ignore and not attempt a
restart on. You can specify a maximum of 50 container exit codes. By
default, Amazon ECS does not ignore any exit codes.


=head2 RestartAttemptPeriod => Int

A period of time (in seconds) that the container must run for before a
restart can be attempted. A container can be restarted only once every
C<restartAttemptPeriod> seconds. If a container isn't able to run for
this time period and exits early, it will not be restarted. You can set
a minimum C<restartAttemptPeriod> of 60 seconds and a maximum
C<restartAttemptPeriod> of 1800 seconds. By default, a container must
run for 300 seconds before it can be restarted.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

