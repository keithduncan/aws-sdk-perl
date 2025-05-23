# Generated by default/object.tt
package Paws::SageMaker::EdgeDeploymentConfig;
  use Moose;
  has FailureHandlingPolicy => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::EdgeDeploymentConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::EdgeDeploymentConfig object:

  $service_obj->Method(Att1 => { FailureHandlingPolicy => $value, ..., FailureHandlingPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::EdgeDeploymentConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->FailureHandlingPolicy

=head1 DESCRIPTION

Contains information about the configuration of a deployment.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FailureHandlingPolicy => Str

Toggle that determines whether to rollback to previous configuration if
the current deployment fails. By default this is turned on. You may
turn this off if you want to investigate the errors yourself.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

