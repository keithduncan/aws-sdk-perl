# Generated by default/object.tt
package Paws::MigrationHubOrchestrator::WorkflowStepAutomationConfiguration;
  use Moose;
  has Command => (is => 'ro', isa => 'Paws::MigrationHubOrchestrator::PlatformCommand', request_name => 'command', traits => ['NameInRequest']);
  has RunEnvironment => (is => 'ro', isa => 'Str', request_name => 'runEnvironment', traits => ['NameInRequest']);
  has ScriptLocationS3Bucket => (is => 'ro', isa => 'Str', request_name => 'scriptLocationS3Bucket', traits => ['NameInRequest']);
  has ScriptLocationS3Key => (is => 'ro', isa => 'Paws::MigrationHubOrchestrator::PlatformScriptKey', request_name => 'scriptLocationS3Key', traits => ['NameInRequest']);
  has TargetType => (is => 'ro', isa => 'Str', request_name => 'targetType', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::WorkflowStepAutomationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MigrationHubOrchestrator::WorkflowStepAutomationConfiguration object:

  $service_obj->Method(Att1 => { Command => $value, ..., TargetType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MigrationHubOrchestrator::WorkflowStepAutomationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Command

=head1 DESCRIPTION

The custom script to run tests on source or target environments.

=head1 ATTRIBUTES


=head2 Command => L<Paws::MigrationHubOrchestrator::PlatformCommand>

The command required to run the script.


=head2 RunEnvironment => Str

The source or target environment.


=head2 ScriptLocationS3Bucket => Str

The Amazon S3 bucket where the script is located.


=head2 ScriptLocationS3Key => L<Paws::MigrationHubOrchestrator::PlatformScriptKey>

The Amazon S3 key for the script location.


=head2 TargetType => Str

The servers on which to run the script.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MigrationHubOrchestrator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

