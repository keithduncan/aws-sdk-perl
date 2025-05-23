# Generated by default/object.tt
package Paws::GuardDuty::ScannedItemCount;
  use Moose;
  has Files => (is => 'ro', isa => 'Int', request_name => 'files', traits => ['NameInRequest']);
  has TotalGb => (is => 'ro', isa => 'Int', request_name => 'totalGb', traits => ['NameInRequest']);
  has Volumes => (is => 'ro', isa => 'Int', request_name => 'volumes', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ScannedItemCount

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::ScannedItemCount object:

  $service_obj->Method(Att1 => { Files => $value, ..., Volumes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::ScannedItemCount object:

  $result = $service_obj->Method(...);
  $result->Att1->Files

=head1 DESCRIPTION

Total number of scanned files.

=head1 ATTRIBUTES


=head2 Files => Int

Number of files scanned.


=head2 TotalGb => Int

Total GB of files scanned for malware.


=head2 Volumes => Int

Total number of scanned volumes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

