# Generated by default/object.tt
package Paws::Synthetics::CanaryRun;
  use Moose;
  has ArtifactS3Location => (is => 'ro', isa => 'Str');
  has DryRunConfig => (is => 'ro', isa => 'Paws::Synthetics::CanaryDryRunConfigOutput');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RetryAttempt => (is => 'ro', isa => 'Int');
  has ScheduledRunId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Paws::Synthetics::CanaryRunStatus');
  has Timeline => (is => 'ro', isa => 'Paws::Synthetics::CanaryRunTimeline');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::CanaryRun

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Synthetics::CanaryRun object:

  $service_obj->Method(Att1 => { ArtifactS3Location => $value, ..., Timeline => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Synthetics::CanaryRun object:

  $result = $service_obj->Method(...);
  $result->Att1->ArtifactS3Location

=head1 DESCRIPTION

This structure contains the details about one run of one canary.

=head1 ATTRIBUTES


=head2 ArtifactS3Location => Str

The location where the canary stored artifacts from the run. Artifacts
include the log file, screenshots, and HAR files.


=head2 DryRunConfig => L<Paws::Synthetics::CanaryDryRunConfigOutput>

Returns the dry run configurations for a canary.


=head2 Id => Str

A unique ID that identifies this canary run.


=head2 Name => Str

The name of the canary.


=head2 RetryAttempt => Int

The count in number of the retry attempt.


=head2 ScheduledRunId => Str

The ID of the scheduled canary run.


=head2 Status => L<Paws::Synthetics::CanaryRunStatus>

The status of this run.


=head2 Timeline => L<Paws::Synthetics::CanaryRunTimeline>

A structure that contains the start and end times of this run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Synthetics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

