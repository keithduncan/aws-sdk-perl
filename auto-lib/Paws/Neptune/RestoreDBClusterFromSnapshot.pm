
package Paws::Neptune::RestoreDBClusterFromSnapshot;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has EnableCloudwatchLogsExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has EngineVersion => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has ServerlessV2ScalingConfiguration => (is => 'ro', isa => 'Paws::Neptune::ServerlessV2ScalingConfiguration');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has StorageType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::Tag]');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreDBClusterFromSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::RestoreDBClusterFromSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreDBClusterFromSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::RestoreDBClusterFromSnapshot - Arguments for method RestoreDBClusterFromSnapshot on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreDBClusterFromSnapshot on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method RestoreDBClusterFromSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreDBClusterFromSnapshot.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $RestoreDBClusterFromSnapshotResult = $rds->RestoreDBClusterFromSnapshot(
      DBClusterIdentifier              => 'MyString',
      Engine                           => 'MyString',
      SnapshotIdentifier               => 'MyString',
      AvailabilityZones                => [ 'MyString', ... ],    # OPTIONAL
      CopyTagsToSnapshot               => 1,                      # OPTIONAL
      DBClusterParameterGroupName      => 'MyString',             # OPTIONAL
      DBSubnetGroupName                => 'MyString',             # OPTIONAL
      DatabaseName                     => 'MyString',             # OPTIONAL
      DeletionProtection               => 1,                      # OPTIONAL
      EnableCloudwatchLogsExports      => [ 'MyString', ... ],    # OPTIONAL
      EnableIAMDatabaseAuthentication  => 1,                      # OPTIONAL
      EngineVersion                    => 'MyString',             # OPTIONAL
      KmsKeyId                         => 'MyString',             # OPTIONAL
      OptionGroupName                  => 'MyString',             # OPTIONAL
      Port                             => 1,                      # OPTIONAL
      ServerlessV2ScalingConfiguration => {
        MaxCapacity => 1,                                         # OPTIONAL
        MinCapacity => 1,                                         # OPTIONAL
      },    # OPTIONAL
      StorageType => 'MyString',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                            # OPTIONAL
      VpcSecurityGroupIds => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $DBCluster = $RestoreDBClusterFromSnapshotResult->DBCluster;

    # Returns a L<Paws::Neptune::RestoreDBClusterFromSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RestoreDBClusterFromSnapshot>

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

Provides the list of EC2 Availability Zones that instances in the
restored DB cluster can be created in.



=head2 CopyTagsToSnapshot => Bool

I<If set to C<true>, tags are copied to any snapshot of the restored DB
cluster that is created.>



=head2 DatabaseName => Str

Not supported.



=head2 B<REQUIRED> DBClusterIdentifier => Str

The name of the DB cluster to create from the DB snapshot or DB cluster
snapshot. This parameter isn't case-sensitive.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens

=item *

First character must be a letter

=item *

Cannot end with a hyphen or contain two consecutive hyphens

=back

Example: C<my-snapshot-id>



=head2 DBClusterParameterGroupName => Str

The name of the DB cluster parameter group to associate with the new DB
cluster.

Constraints:

=over

=item *

If supplied, must match the name of an existing
DBClusterParameterGroup.

=back




=head2 DBSubnetGroupName => Str

The name of the DB subnet group to use for the new DB cluster.

Constraints: If supplied, must match the name of an existing
DBSubnetGroup.

Example: C<mySubnetgroup>



=head2 DeletionProtection => Bool

A value that indicates whether the DB cluster has deletion protection
enabled. The database can't be deleted when deletion protection is
enabled. By default, deletion protection is disabled.



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

The list of logs that the restored DB cluster is to export to Amazon
CloudWatch Logs.



=head2 EnableIAMDatabaseAuthentication => Bool

True to enable mapping of Amazon Identity and Access Management (IAM)
accounts to database accounts, and otherwise false.

Default: C<false>



=head2 B<REQUIRED> Engine => Str

The database engine to use for the new DB cluster.

Default: The same as source

Constraint: Must be compatible with the engine of the source



=head2 EngineVersion => Str

The version of the database engine to use for the new DB cluster.



=head2 KmsKeyId => Str

The Amazon KMS key identifier to use when restoring an encrypted DB
cluster from a DB snapshot or DB cluster snapshot.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are restoring a DB cluster with the same Amazon
account that owns the KMS encryption key used to encrypt the new DB
cluster, then you can use the KMS key alias instead of the ARN for the
KMS encryption key.

If you do not specify a value for the C<KmsKeyId> parameter, then the
following will occur:

=over

=item *

If the DB snapshot or DB cluster snapshot in C<SnapshotIdentifier> is
encrypted, then the restored DB cluster is encrypted using the KMS key
that was used to encrypt the DB snapshot or DB cluster snapshot.

=item *

If the DB snapshot or DB cluster snapshot in C<SnapshotIdentifier> is
not encrypted, then the restored DB cluster is not encrypted.

=back




=head2 OptionGroupName => Str

I<(Not supported by Neptune)>



=head2 Port => Int

The port number on which the new DB cluster accepts connections.

Constraints: Value must be C<1150-65535>

Default: The same port as the original DB cluster.



=head2 ServerlessV2ScalingConfiguration => L<Paws::Neptune::ServerlessV2ScalingConfiguration>

Contains the scaling configuration of a Neptune Serverless DB cluster.

For more information, see Using Amazon Neptune Serverless
(https://docs.aws.amazon.com/neptune/latest/userguide/neptune-serverless-using.html)
in the I<Amazon Neptune User Guide>.



=head2 B<REQUIRED> SnapshotIdentifier => Str

The identifier for the DB snapshot or DB cluster snapshot to restore
from.

You can use either the name or the Amazon Resource Name (ARN) to
specify a DB cluster snapshot. However, you can use only the ARN to
specify a DB snapshot.

Constraints:

=over

=item *

Must match the identifier of an existing Snapshot.

=back




=head2 StorageType => Str

Specifies the storage type to be associated with the DB cluster.

Valid values: C<standard>, C<iopt1>

Default: C<standard>



=head2 Tags => ArrayRef[L<Paws::Neptune::Tag>]

The tags to be assigned to the restored DB cluster.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of VPC security groups that the new DB cluster will belong to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreDBClusterFromSnapshot in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

