
package Paws::RDS::DescribeDBSnapshots;
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has DbiResourceId => (is => 'ro', isa => 'Str');
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has IncludePublic => (is => 'ro', isa => 'Bool');
  has IncludeShared => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SnapshotType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBSnapshotMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBSnapshotsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBSnapshots - Arguments for method DescribeDBSnapshots on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBSnapshots on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeDBSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBSnapshots.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
# To list DB snapshot attributes
# This example lists all manually-created, shared snapshots for the specified DB
# instance.
    my $DBSnapshotMessage = $rds->DescribeDBSnapshots(
      'DBInstanceIdentifier' => 'mymysqlinstance',
      'IncludePublic'        => 0,
      'IncludeShared'        => 1,
      'SnapshotType'         => 'manual'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBSnapshots>

=head1 ATTRIBUTES


=head2 DBInstanceIdentifier => Str

The ID of the DB instance to retrieve the list of DB snapshots for.
This parameter isn't case-sensitive.

Constraints:

=over

=item *

If supplied, must match the identifier of an existing DBInstance.

=back




=head2 DbiResourceId => Str

A specific DB resource ID to describe.



=head2 DBSnapshotIdentifier => Str

A specific DB snapshot identifier to describe. This value is stored as
a lowercase string.

Constraints:

=over

=item *

If supplied, must match the identifier of an existing DBSnapshot.

=item *

If this identifier is for an automated snapshot, the C<SnapshotType>
parameter must also be specified.

=back




=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

A filter that specifies one or more DB snapshots to describe.

Supported filters:

=over

=item *

C<db-instance-id> - Accepts DB instance identifiers and DB instance
Amazon Resource Names (ARNs).

=item *

C<db-snapshot-id> - Accepts DB snapshot identifiers.

=item *

C<dbi-resource-id> - Accepts identifiers of source DB instances.

=item *

C<snapshot-type> - Accepts types of DB snapshots.

=item *

C<engine> - Accepts names of database engines.

=back




=head2 IncludePublic => Bool

Specifies whether to include manual DB cluster snapshots that are
public and can be copied or restored by any Amazon Web Services
account. By default, the public snapshots are not included.

You can share a manual DB snapshot as public by using the
ModifyDBSnapshotAttribute API.

This setting doesn't apply to RDS Custom.



=head2 IncludeShared => Bool

Specifies whether to include shared manual DB cluster snapshots from
other Amazon Web Services accounts that this Amazon Web Services
account has been given permission to copy or restore. By default, these
snapshots are not included.

You can give an Amazon Web Services account permission to restore a
manual DB snapshot from another Amazon Web Services account by using
the C<ModifyDBSnapshotAttribute> API action.

This setting doesn't apply to RDS Custom.



=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeDBSnapshots> request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that you can
retrieve the remaining results.

Default: 100

Constraints: Minimum 20, maximum 100.



=head2 SnapshotType => Str

The type of snapshots to be returned. You can specify one of the
following values:

=over

=item *

C<automated> - Return all DB snapshots that have been automatically
taken by Amazon RDS for my Amazon Web Services account.

=item *

C<manual> - Return all DB snapshots that have been taken by my Amazon
Web Services account.

=item *

C<shared> - Return all manual DB snapshots that have been shared to my
Amazon Web Services account.

=item *

C<public> - Return all DB snapshots that have been marked as public.

=item *

C<awsbackup> - Return the DB snapshots managed by the Amazon Web
Services Backup service.

For information about Amazon Web Services Backup, see the I<Amazon Web
Services Backup Developer Guide.>
(https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html)

The C<awsbackup> type does not apply to Aurora.

=back

If you don't specify a C<SnapshotType> value, then both automated and
manual snapshots are returned. Shared and public DB snapshots are not
included in the returned results by default. You can include shared
snapshots with these results by enabling the C<IncludeShared>
parameter. You can include public snapshots with these results by
enabling the C<IncludePublic> parameter.

The C<IncludeShared> and C<IncludePublic> parameters don't apply for
C<SnapshotType> values of C<manual> or C<automated>. The
C<IncludePublic> parameter doesn't apply when C<SnapshotType> is set to
C<shared>. The C<IncludeShared> parameter doesn't apply when
C<SnapshotType> is set to C<public>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBSnapshots in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

