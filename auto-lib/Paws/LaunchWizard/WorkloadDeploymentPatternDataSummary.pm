# Generated by default/object.tt
package Paws::LaunchWizard::WorkloadDeploymentPatternDataSummary;
  use Moose;
  has DeploymentPatternName => (is => 'ro', isa => 'Str', request_name => 'deploymentPatternName', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DisplayName => (is => 'ro', isa => 'Str', request_name => 'displayName', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);
  has WorkloadName => (is => 'ro', isa => 'Str', request_name => 'workloadName', traits => ['NameInRequest']);
  has WorkloadVersionName => (is => 'ro', isa => 'Str', request_name => 'workloadVersionName', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LaunchWizard::WorkloadDeploymentPatternDataSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LaunchWizard::WorkloadDeploymentPatternDataSummary object:

  $service_obj->Method(Att1 => { DeploymentPatternName => $value, ..., WorkloadVersionName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LaunchWizard::WorkloadDeploymentPatternDataSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->DeploymentPatternName

=head1 DESCRIPTION

Describes a workload deployment pattern.

=head1 ATTRIBUTES


=head2 DeploymentPatternName => Str

The name of a workload deployment pattern.


=head2 Description => Str

The description of a workload deployment pattern.


=head2 DisplayName => Str

The display name of a workload deployment pattern.


=head2 Status => Str

The status of a workload deployment pattern.


=head2 StatusMessage => Str

A message about a workload deployment pattern's status.


=head2 WorkloadName => Str

The name of the workload.


=head2 WorkloadVersionName => Str

The name of the workload deployment pattern version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LaunchWizard>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

