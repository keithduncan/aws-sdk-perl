
package Paws::DocDB::RestoreDBClusterFromSnapshot;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has EnableCloudwatchLogsExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has EngineVersion => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has StorageType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::Tag]');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreDBClusterFromSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::RestoreDBClusterFromSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreDBClusterFromSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::RestoreDBClusterFromSnapshot - Arguments for method RestoreDBClusterFromSnapshot on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreDBClusterFromSnapshot on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method RestoreDBClusterFromSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreDBClusterFromSnapshot.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $RestoreDBClusterFromSnapshotResult = $rds->RestoreDBClusterFromSnapshot(
      DBClusterIdentifier         => 'MyString',
      Engine                      => 'MyString',
      SnapshotIdentifier          => 'MyString',
      AvailabilityZones           => [ 'MyString', ... ],    # OPTIONAL
      DBClusterParameterGroupName => 'MyString',             # OPTIONAL
      DBSubnetGroupName           => 'MyString',             # OPTIONAL
      DeletionProtection          => 1,                      # OPTIONAL
      EnableCloudwatchLogsExports => [ 'MyString', ... ],    # OPTIONAL
      EngineVersion               => 'MyString',             # OPTIONAL
      KmsKeyId                    => 'MyString',             # OPTIONAL
      Port                        => 1,                      # OPTIONAL
      StorageType                 => 'MyString',             # OPTIONAL
      Tags                        => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                     # OPTIONAL
      VpcSecurityGroupIds => [ 'MyString', ... ],            # OPTIONAL
    );

    # Results:
    my $DBCluster = $RestoreDBClusterFromSnapshotResult->DBCluster;

    # Returns a L<Paws::DocDB::RestoreDBClusterFromSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RestoreDBClusterFromSnapshot>

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

Provides the list of Amazon EC2 Availability Zones that instances in
the restored DB cluster can be created in.



=head2 B<REQUIRED> DBClusterIdentifier => Str

The name of the cluster to create from the snapshot or cluster
snapshot. This parameter isn't case sensitive.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

The first character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back

Example: C<my-snapshot-id>



=head2 DBClusterParameterGroupName => Str

The name of the DB cluster parameter group to associate with this DB
cluster.

I<Type:> String. I<Required:> No.

If this argument is omitted, the default DB cluster parameter group is
used. If supplied, must match the name of an existing default DB
cluster parameter group. The string must consist of from 1 to 255
letters, numbers or hyphens. Its first character must be a letter, and
it cannot end with a hyphen or contain two consecutive hyphens.



=head2 DBSubnetGroupName => Str

The name of the subnet group to use for the new cluster.

Constraints: If provided, must match the name of an existing
C<DBSubnetGroup>.

Example: C<mySubnetgroup>



=head2 DeletionProtection => Bool

Specifies whether this cluster can be deleted. If C<DeletionProtection>
is enabled, the cluster cannot be deleted unless it is modified and
C<DeletionProtection> is disabled. C<DeletionProtection> protects
clusters from being accidentally deleted.



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

A list of log types that must be enabled for exporting to Amazon
CloudWatch Logs.



=head2 B<REQUIRED> Engine => Str

The database engine to use for the new cluster.

Default: The same as source.

Constraint: Must be compatible with the engine of the source.



=head2 EngineVersion => Str

The version of the database engine to use for the new cluster.



=head2 KmsKeyId => Str

The KMS key identifier to use when restoring an encrypted cluster from
a DB snapshot or cluster snapshot.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are restoring a cluster with the same Amazon Web
Services account that owns the KMS encryption key used to encrypt the
new cluster, then you can use the KMS key alias instead of the ARN for
the KMS encryption key.

If you do not specify a value for the C<KmsKeyId> parameter, then the
following occurs:

=over

=item *

If the snapshot or cluster snapshot in C<SnapshotIdentifier> is
encrypted, then the restored cluster is encrypted using the KMS key
that was used to encrypt the snapshot or the cluster snapshot.

=item *

If the snapshot or the cluster snapshot in C<SnapshotIdentifier> is not
encrypted, then the restored DB cluster is not encrypted.

=back




=head2 Port => Int

The port number on which the new cluster accepts connections.

Constraints: Must be a value from C<1150> to C<65535>.

Default: The same port as the original cluster.



=head2 B<REQUIRED> SnapshotIdentifier => Str

The identifier for the snapshot or cluster snapshot to restore from.

You can use either the name or the Amazon Resource Name (ARN) to
specify a cluster snapshot. However, you can use only the ARN to
specify a snapshot.

Constraints:

=over

=item *

Must match the identifier of an existing snapshot.

=back




=head2 StorageType => Str

The storage type to associate with the DB cluster.

For information on storage types for Amazon DocumentDB clusters, see
Cluster storage configurations in the I<Amazon DocumentDB Developer
Guide>.

Valid values for storage type - C<standard | iopt1>

Default value is C<standard>



=head2 Tags => ArrayRef[L<Paws::DocDB::Tag>]

The tags to be assigned to the restored cluster.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of virtual private cloud (VPC) security groups that the new
cluster will belong to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreDBClusterFromSnapshot in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

