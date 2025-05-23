# Generated by default/object.tt
package Paws::SageMaker::DeploymentConfig;
  use Moose;
  has AutoRollbackConfiguration => (is => 'ro', isa => 'Paws::SageMaker::AutoRollbackConfig');
  has BlueGreenUpdatePolicy => (is => 'ro', isa => 'Paws::SageMaker::BlueGreenUpdatePolicy');
  has RollingUpdatePolicy => (is => 'ro', isa => 'Paws::SageMaker::RollingUpdatePolicy');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DeploymentConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::DeploymentConfig object:

  $service_obj->Method(Att1 => { AutoRollbackConfiguration => $value, ..., RollingUpdatePolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::DeploymentConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoRollbackConfiguration

=head1 DESCRIPTION

The deployment configuration for an endpoint, which contains the
desired deployment strategy and rollback configurations.

=head1 ATTRIBUTES


=head2 AutoRollbackConfiguration => L<Paws::SageMaker::AutoRollbackConfig>

Automatic rollback configuration for handling endpoint deployment
failures and recovery.


=head2 BlueGreenUpdatePolicy => L<Paws::SageMaker::BlueGreenUpdatePolicy>

Update policy for a blue/green deployment. If this update policy is
specified, SageMaker creates a new fleet during the deployment while
maintaining the old fleet. SageMaker flips traffic to the new fleet
according to the specified traffic routing configuration. Only one
update policy should be used in the deployment configuration. If no
update policy is specified, SageMaker uses a blue/green deployment
strategy with all at once traffic shifting by default.


=head2 RollingUpdatePolicy => L<Paws::SageMaker::RollingUpdatePolicy>

Specifies a rolling deployment strategy for updating a SageMaker
endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

