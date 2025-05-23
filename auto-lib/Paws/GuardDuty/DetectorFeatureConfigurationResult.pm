# Generated by default/object.tt
package Paws::GuardDuty::DetectorFeatureConfigurationResult;
  use Moose;
  has AdditionalConfiguration => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::DetectorAdditionalConfigurationResult]', request_name => 'additionalConfiguration', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has UpdatedAt => (is => 'ro', isa => 'Str', request_name => 'updatedAt', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::DetectorFeatureConfigurationResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::DetectorFeatureConfigurationResult object:

  $service_obj->Method(Att1 => { AdditionalConfiguration => $value, ..., UpdatedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::DetectorFeatureConfigurationResult object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalConfiguration

=head1 DESCRIPTION

Contains information about a GuardDuty feature.

Specifying both EKS Runtime Monitoring (C<EKS_RUNTIME_MONITORING>) and
Runtime Monitoring (C<RUNTIME_MONITORING>) will cause an error. You can
add only one of these two features because Runtime Monitoring already
includes the threat detection for Amazon EKS resources. For more
information, see Runtime Monitoring
(https://docs.aws.amazon.com/guardduty/latest/ug/runtime-monitoring.html).

=head1 ATTRIBUTES


=head2 AdditionalConfiguration => ArrayRef[L<Paws::GuardDuty::DetectorAdditionalConfigurationResult>]

Additional configuration for a resource.


=head2 Name => Str

Indicates the name of the feature that can be enabled for the detector.


=head2 Status => Str

Indicates the status of the feature that is enabled for the detector.


=head2 UpdatedAt => Str

The timestamp at which the feature object was updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

