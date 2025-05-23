# Generated by default/object.tt
package Paws::Glue::IcebergRetentionConfiguration;
  use Moose;
  has CleanExpiredFiles => (is => 'ro', isa => 'Bool', request_name => 'cleanExpiredFiles', traits => ['NameInRequest']);
  has NumberOfSnapshotsToRetain => (is => 'ro', isa => 'Int', request_name => 'numberOfSnapshotsToRetain', traits => ['NameInRequest']);
  has SnapshotRetentionPeriodInDays => (is => 'ro', isa => 'Int', request_name => 'snapshotRetentionPeriodInDays', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::IcebergRetentionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::IcebergRetentionConfiguration object:

  $service_obj->Method(Att1 => { CleanExpiredFiles => $value, ..., SnapshotRetentionPeriodInDays => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::IcebergRetentionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CleanExpiredFiles

=head1 DESCRIPTION

The configuration for an Iceberg snapshot retention optimizer.

=head1 ATTRIBUTES


=head2 CleanExpiredFiles => Bool

If set to false, snapshots are only deleted from table metadata, and
the underlying data and metadata files are not deleted.


=head2 NumberOfSnapshotsToRetain => Int

The number of Iceberg snapshots to retain within the retention period.
If an input is not provided, the corresponding Iceberg table
configuration field will be used or if not present, the default value 1
will be used.


=head2 SnapshotRetentionPeriodInDays => Int

The number of days to retain the Iceberg snapshots. If an input is not
provided, the corresponding Iceberg table configuration field will be
used or if not present, the default value 5 will be used.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

