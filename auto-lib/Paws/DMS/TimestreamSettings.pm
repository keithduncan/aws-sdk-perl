# Generated by default/object.tt
package Paws::DMS::TimestreamSettings;
  use Moose;
  has CdcInsertsAndUpdates => (is => 'ro', isa => 'Bool');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has EnableMagneticStoreWrites => (is => 'ro', isa => 'Bool');
  has MagneticDuration => (is => 'ro', isa => 'Int', required => 1);
  has MemoryDuration => (is => 'ro', isa => 'Int', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::TimestreamSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::TimestreamSettings object:

  $service_obj->Method(Att1 => { CdcInsertsAndUpdates => $value, ..., MemoryDuration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::TimestreamSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->CdcInsertsAndUpdates

=head1 DESCRIPTION

Provides information that defines an Amazon Timestream endpoint.

=head1 ATTRIBUTES


=head2 CdcInsertsAndUpdates => Bool

Set this attribute to C<true> to specify that DMS only applies inserts
and updates, and not deletes. Amazon Timestream does not allow deleting
records, so if this value is C<false>, DMS nulls out the corresponding
record in the Timestream database rather than deleting it.


=head2 B<REQUIRED> DatabaseName => Str

Database name for the endpoint.


=head2 EnableMagneticStoreWrites => Bool

Set this attribute to C<true> to enable memory store writes. When this
value is C<false>, DMS does not write records that are older in days
than the value specified in C<MagneticDuration>, because Amazon
Timestream does not allow memory writes by default. For more
information, see Storage
(https://docs.aws.amazon.com/timestream/latest/developerguide/storage.html)
in the Amazon Timestream Developer Guide
(https://docs.aws.amazon.com/timestream/latest/developerguide/).


=head2 B<REQUIRED> MagneticDuration => Int

Set this attribute to specify the default magnetic duration applied to
the Amazon Timestream tables in days. This is the number of days that
records remain in magnetic store before being discarded. For more
information, see Storage
(https://docs.aws.amazon.com/timestream/latest/developerguide/storage.html)
in the Amazon Timestream Developer Guide
(https://docs.aws.amazon.com/timestream/latest/developerguide/).


=head2 B<REQUIRED> MemoryDuration => Int

Set this attribute to specify the length of time to store all of the
tables in memory that are migrated into Amazon Timestream from the
source database. Time is measured in units of hours. When Timestream
data comes in, it first resides in memory for the specified duration,
which allows quick access to it.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

