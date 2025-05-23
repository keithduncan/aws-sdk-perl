# Generated by default/object.tt
package Paws::SSMIncidents::CodeDeployDeployment;
  use Moose;
  has DeploymentGroupArn => (is => 'ro', isa => 'Str', request_name => 'deploymentGroupArn', traits => ['NameInRequest'], required => 1);
  has DeploymentId => (is => 'ro', isa => 'Str', request_name => 'deploymentId', traits => ['NameInRequest'], required => 1);
  has EndTime => (is => 'ro', isa => 'Str', request_name => 'endTime', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::CodeDeployDeployment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSMIncidents::CodeDeployDeployment object:

  $service_obj->Method(Att1 => { DeploymentGroupArn => $value, ..., StartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSMIncidents::CodeDeployDeployment object:

  $result = $service_obj->Method(...);
  $result->Att1->DeploymentGroupArn

=head1 DESCRIPTION

Information about a CodeDeploy deployment that occurred around the time
of an incident and could be a possible cause of the incident.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeploymentGroupArn => Str

The Amazon Resource Name (ARN) of the CodeDeploy deployment group
associated with the deployment.


=head2 B<REQUIRED> DeploymentId => Str

The ID of the CodeDeploy deployment.


=head2 EndTime => Str

The timestamp for when the CodeDeploy deployment ended. Not reported
for deployments that are still in progress.


=head2 B<REQUIRED> StartTime => Str

The timestamp for when the CodeDeploy deployment began.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSMIncidents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

