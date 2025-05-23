# Generated by default/object.tt
package Paws::LookoutEquipment::LargeTimestampGaps;
  use Moose;
  has MaxTimestampGapInDays => (is => 'ro', isa => 'Int');
  has NumberOfLargeTimestampGaps => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::LargeTimestampGaps

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LookoutEquipment::LargeTimestampGaps object:

  $service_obj->Method(Att1 => { MaxTimestampGapInDays => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LookoutEquipment::LargeTimestampGaps object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxTimestampGapInDays

=head1 DESCRIPTION

Entity that comprises information on large gaps between consecutive
timestamps in data.

=head1 ATTRIBUTES


=head2 MaxTimestampGapInDays => Int

Indicates the size of the largest timestamp gap, in days.


=head2 NumberOfLargeTimestampGaps => Int

Indicates the number of large timestamp gaps, if there are any.


=head2 B<REQUIRED> Status => Str

Indicates whether there is a potential data issue related to large gaps
in timestamps.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

