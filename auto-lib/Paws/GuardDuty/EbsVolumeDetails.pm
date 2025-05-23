# Generated by default/object.tt
package Paws::GuardDuty::EbsVolumeDetails;
  use Moose;
  has ScannedVolumeDetails => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::VolumeDetail]', request_name => 'scannedVolumeDetails', traits => ['NameInRequest']);
  has SkippedVolumeDetails => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::VolumeDetail]', request_name => 'skippedVolumeDetails', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::EbsVolumeDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::EbsVolumeDetails object:

  $service_obj->Method(Att1 => { ScannedVolumeDetails => $value, ..., SkippedVolumeDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::EbsVolumeDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->ScannedVolumeDetails

=head1 DESCRIPTION

Contains list of scanned and skipped EBS volumes with details.

=head1 ATTRIBUTES


=head2 ScannedVolumeDetails => ArrayRef[L<Paws::GuardDuty::VolumeDetail>]

List of EBS volumes that were scanned.


=head2 SkippedVolumeDetails => ArrayRef[L<Paws::GuardDuty::VolumeDetail>]

List of EBS volumes that were skipped from the malware scan.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

