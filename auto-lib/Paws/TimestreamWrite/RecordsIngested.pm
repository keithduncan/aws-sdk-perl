# Generated by default/object.tt
package Paws::TimestreamWrite::RecordsIngested;
  use Moose;
  has MagneticStore => (is => 'ro', isa => 'Int');
  has MemoryStore => (is => 'ro', isa => 'Int');
  has Total => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::RecordsIngested

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::TimestreamWrite::RecordsIngested object:

  $service_obj->Method(Att1 => { MagneticStore => $value, ..., Total => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::TimestreamWrite::RecordsIngested object:

  $result = $service_obj->Method(...);
  $result->Att1->MagneticStore

=head1 DESCRIPTION

Information on the records ingested by this request.

=head1 ATTRIBUTES


=head2 MagneticStore => Int

Count of records ingested into the magnetic store.


=head2 MemoryStore => Int

Count of records ingested into the memory store.


=head2 Total => Int

Total count of successfully ingested records.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::TimestreamWrite>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

