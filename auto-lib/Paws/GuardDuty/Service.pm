# Generated by default/object.tt
package Paws::GuardDuty::Service;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::GuardDuty::Action', request_name => 'action', traits => ['NameInRequest']);
  has AdditionalInfo => (is => 'ro', isa => 'Paws::GuardDuty::ServiceAdditionalInfo', request_name => 'additionalInfo', traits => ['NameInRequest']);
  has Archived => (is => 'ro', isa => 'Bool', request_name => 'archived', traits => ['NameInRequest']);
  has Count => (is => 'ro', isa => 'Int', request_name => 'count', traits => ['NameInRequest']);
  has Detection => (is => 'ro', isa => 'Paws::GuardDuty::Detection', request_name => 'detection', traits => ['NameInRequest']);
  has DetectorId => (is => 'ro', isa => 'Str', request_name => 'detectorId', traits => ['NameInRequest']);
  has EbsVolumeScanDetails => (is => 'ro', isa => 'Paws::GuardDuty::EbsVolumeScanDetails', request_name => 'ebsVolumeScanDetails', traits => ['NameInRequest']);
  has EventFirstSeen => (is => 'ro', isa => 'Str', request_name => 'eventFirstSeen', traits => ['NameInRequest']);
  has EventLastSeen => (is => 'ro', isa => 'Str', request_name => 'eventLastSeen', traits => ['NameInRequest']);
  has Evidence => (is => 'ro', isa => 'Paws::GuardDuty::Evidence', request_name => 'evidence', traits => ['NameInRequest']);
  has FeatureName => (is => 'ro', isa => 'Str', request_name => 'featureName', traits => ['NameInRequest']);
  has MalwareScanDetails => (is => 'ro', isa => 'Paws::GuardDuty::MalwareScanDetails', request_name => 'malwareScanDetails', traits => ['NameInRequest']);
  has ResourceRole => (is => 'ro', isa => 'Str', request_name => 'resourceRole', traits => ['NameInRequest']);
  has RuntimeDetails => (is => 'ro', isa => 'Paws::GuardDuty::RuntimeDetails', request_name => 'runtimeDetails', traits => ['NameInRequest']);
  has ServiceName => (is => 'ro', isa => 'Str', request_name => 'serviceName', traits => ['NameInRequest']);
  has UserFeedback => (is => 'ro', isa => 'Str', request_name => 'userFeedback', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::Service

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::Service object:

  $service_obj->Method(Att1 => { Action => $value, ..., UserFeedback => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::Service object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Contains additional information about the generated finding.

=head1 ATTRIBUTES


=head2 Action => L<Paws::GuardDuty::Action>

Information about the activity that is described in a finding.


=head2 AdditionalInfo => L<Paws::GuardDuty::ServiceAdditionalInfo>

Contains additional information about the generated finding.


=head2 Archived => Bool

Indicates whether this finding is archived.


=head2 Count => Int

The total count of the occurrences of this finding type.


=head2 Detection => L<Paws::GuardDuty::Detection>

Contains information about the detected unusual behavior.


=head2 DetectorId => Str

The detector ID for the GuardDuty service.


=head2 EbsVolumeScanDetails => L<Paws::GuardDuty::EbsVolumeScanDetails>

Returns details from the malware scan that created a finding.


=head2 EventFirstSeen => Str

The first-seen timestamp of the activity that prompted GuardDuty to
generate this finding.


=head2 EventLastSeen => Str

The last-seen timestamp of the activity that prompted GuardDuty to
generate this finding.


=head2 Evidence => L<Paws::GuardDuty::Evidence>

An evidence object associated with the service.


=head2 FeatureName => Str

The name of the feature that generated a finding.


=head2 MalwareScanDetails => L<Paws::GuardDuty::MalwareScanDetails>

Returns details from the malware scan that generated a GuardDuty
finding.


=head2 ResourceRole => Str

The resource role information for this finding.


=head2 RuntimeDetails => L<Paws::GuardDuty::RuntimeDetails>

Information about the process and any required context values for a
specific finding


=head2 ServiceName => Str

The name of the Amazon Web Services service (GuardDuty) that generated
a finding.


=head2 UserFeedback => Str

Feedback that was submitted about the finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

