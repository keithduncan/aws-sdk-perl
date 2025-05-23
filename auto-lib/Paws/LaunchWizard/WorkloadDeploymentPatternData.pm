# Generated by default/object.tt
package Paws::LaunchWizard::WorkloadDeploymentPatternData;
  use Moose;
  has DeploymentPatternName => (is => 'ro', isa => 'Str', request_name => 'deploymentPatternName', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DisplayName => (is => 'ro', isa => 'Str', request_name => 'displayName', traits => ['NameInRequest']);
  has Specifications => (is => 'ro', isa => 'ArrayRef[Paws::LaunchWizard::DeploymentSpecificationsField]', request_name => 'specifications', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);
  has WorkloadName => (is => 'ro', isa => 'Str', request_name => 'workloadName', traits => ['NameInRequest']);
  has WorkloadVersionName => (is => 'ro', isa => 'Str', request_name => 'workloadVersionName', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LaunchWizard::WorkloadDeploymentPatternData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LaunchWizard::WorkloadDeploymentPatternData object:

  $service_obj->Method(Att1 => { DeploymentPatternName => $value, ..., WorkloadVersionName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LaunchWizard::WorkloadDeploymentPatternData object:

  $result = $service_obj->Method(...);
  $result->Att1->DeploymentPatternName

=head1 DESCRIPTION

The data that details a workload deployment pattern.

=head1 ATTRIBUTES


=head2 DeploymentPatternName => Str

The name of the deployment pattern.


=head2 Description => Str

The description of the deployment pattern.


=head2 DisplayName => Str

The display name of the deployment pattern.


=head2 Specifications => ArrayRef[L<Paws::LaunchWizard::DeploymentSpecificationsField>]

The settings specified for the deployment. These settings define how to
deploy and configure your resources created by the deployment. For more
information about the specifications required for creating a deployment
for a SAP workload, see SAP deployment specifications
(https://docs.aws.amazon.com/launchwizard/latest/APIReference/launch-wizard-specifications-sap.html).
To retrieve the specifications required to create a deployment for
other workloads, use the C<GetWorkloadDeploymentPattern>
(https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_GetWorkloadDeploymentPattern.html)
operation.


=head2 Status => Str

The status of the deployment pattern.


=head2 StatusMessage => Str

The status message of the deployment pattern.


=head2 WorkloadName => Str

The workload name of the deployment pattern.


=head2 WorkloadVersionName => Str

The workload version name of the deployment pattern.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LaunchWizard>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

