
package Paws::RDS::DescribeDBClusterSnapshots;
  use Moose;
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has DbClusterResourceId => (is => 'ro', isa => 'Str');
  has DBClusterSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has IncludePublic => (is => 'ro', isa => 'Bool');
  has IncludeShared => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SnapshotType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBClusterSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBClusterSnapshotMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBClusterSnapshotsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBClusterSnapshots - Arguments for method DescribeDBClusterSnapshots on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBClusterSnapshots on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeDBClusterSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBClusterSnapshots.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To list DB cluster snapshots
    # This example lists settings for the specified, manually-created cluster
    # snapshot.
    my $DBClusterSnapshotMessage = $rds->DescribeDBClusterSnapshots(
      'DBClusterSnapshotIdentifier' => 'mydbclustersnapshot',
      'SnapshotType'                => 'manual'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBClusterSnapshots>

=head1 ATTRIBUTES


=head2 DBClusterIdentifier => Str

The ID of the DB cluster to retrieve the list of DB cluster snapshots
for. This parameter can't be used in conjunction with the
C<DBClusterSnapshotIdentifier> parameter. This parameter isn't
case-sensitive.

Constraints:

=over

=item *

If supplied, must match the identifier of an existing DBCluster.

=back




=head2 DbClusterResourceId => Str

A specific DB cluster resource ID to describe.



=head2 DBClusterSnapshotIdentifier => Str

A specific DB cluster snapshot identifier to describe. This parameter
can't be used in conjunction with the C<DBClusterIdentifier> parameter.
This value is stored as a lowercase string.

Constraints:

=over

=item *

If supplied, must match the identifier of an existing
DBClusterSnapshot.

=item *

If this identifier is for an automated snapshot, the C<SnapshotType>
parameter must also be specified.

=back




=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

A filter that specifies one or more DB cluster snapshots to describe.

Supported filters:

=over

=item *

C<db-cluster-id> - Accepts DB cluster identifiers and DB cluster Amazon
Resource Names (ARNs).

=item *

C<db-cluster-snapshot-id> - Accepts DB cluster snapshot identifiers.

=item *

C<snapshot-type> - Accepts types of DB cluster snapshots.

=item *

C<engine> - Accepts names of database engines.

=back




=head2 IncludePublic => Bool

Specifies whether to include manual DB cluster snapshots that are
public and can be copied or restored by any Amazon Web Services
account. By default, the public snapshots are not included.

You can share a manual DB cluster snapshot as public by using the
ModifyDBClusterSnapshotAttribute API action.



=head2 IncludeShared => Bool

Specifies whether to include shared manual DB cluster snapshots from
other Amazon Web Services accounts that this Amazon Web Services
account has been given permission to copy or restore. By default, these
snapshots are not included.

You can give an Amazon Web Services account permission to restore a
manual DB cluster snapshot from another Amazon Web Services account by
the C<ModifyDBClusterSnapshotAttribute> API action.



=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeDBClusterSnapshots> request. If this parameter is specified,
the response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so you can retrieve
the remaining results.

Default: 100

Constraints: Minimum 20, maximum 100.



=head2 SnapshotType => Str

The type of DB cluster snapshots to be returned. You can specify one of
the following values:

=over

=item *

C<automated> - Return all DB cluster snapshots that have been
automatically taken by Amazon RDS for my Amazon Web Services account.

=item *

C<manual> - Return all DB cluster snapshots that have been taken by my
Amazon Web Services account.

=item *

C<shared> - Return all manual DB cluster snapshots that have been
shared to my Amazon Web Services account.

=item *

C<public> - Return all DB cluster snapshots that have been marked as
public.

=back

If you don't specify a C<SnapshotType> value, then both automated and
manual DB cluster snapshots are returned. You can include shared DB
cluster snapshots with these results by enabling the C<IncludeShared>
parameter. You can include public DB cluster snapshots with these
results by enabling the C<IncludePublic> parameter.

The C<IncludeShared> and C<IncludePublic> parameters don't apply for
C<SnapshotType> values of C<manual> or C<automated>. The
C<IncludePublic> parameter doesn't apply when C<SnapshotType> is set to
C<shared>. The C<IncludeShared> parameter doesn't apply when
C<SnapshotType> is set to C<public>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBClusterSnapshots in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

