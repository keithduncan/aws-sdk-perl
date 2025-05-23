
package Paws::DocDB::RestoreDBClusterToPointInTime;
  use Moose;
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has EnableCloudwatchLogsExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has RestoreToTime => (is => 'ro', isa => 'Str');
  has RestoreType => (is => 'ro', isa => 'Str');
  has SourceDBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has StorageType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::Tag]');
  has UseLatestRestorableTime => (is => 'ro', isa => 'Bool');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreDBClusterToPointInTime');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::RestoreDBClusterToPointInTimeResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreDBClusterToPointInTimeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::RestoreDBClusterToPointInTime - Arguments for method RestoreDBClusterToPointInTime on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreDBClusterToPointInTime on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method RestoreDBClusterToPointInTime.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreDBClusterToPointInTime.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $RestoreDBClusterToPointInTimeResult =
      $rds->RestoreDBClusterToPointInTime(
      DBClusterIdentifier         => 'MyString',
      SourceDBClusterIdentifier   => 'MyString',
      DBSubnetGroupName           => 'MyString',               # OPTIONAL
      DeletionProtection          => 1,                        # OPTIONAL
      EnableCloudwatchLogsExports => [ 'MyString', ... ],      # OPTIONAL
      KmsKeyId                    => 'MyString',               # OPTIONAL
      Port                        => 1,                        # OPTIONAL
      RestoreToTime               => '1970-01-01T01:00:00',    # OPTIONAL
      RestoreType                 => 'MyString',               # OPTIONAL
      StorageType                 => 'MyString',               # OPTIONAL
      Tags                        => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                       # OPTIONAL
      UseLatestRestorableTime => 1,                            # OPTIONAL
      VpcSecurityGroupIds     => [ 'MyString', ... ],          # OPTIONAL
      );

    # Results:
    my $DBCluster = $RestoreDBClusterToPointInTimeResult->DBCluster;

    # Returns a L<Paws::DocDB::RestoreDBClusterToPointInTimeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RestoreDBClusterToPointInTime>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterIdentifier => Str

The name of the new cluster to be created.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

The first character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back




=head2 DBSubnetGroupName => Str

The subnet group name to use for the new cluster.

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



=head2 KmsKeyId => Str

The KMS key identifier to use when restoring an encrypted cluster from
an encrypted cluster.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are restoring a cluster with the same Amazon Web
Services account that owns the KMS encryption key used to encrypt the
new cluster, then you can use the KMS key alias instead of the ARN for
the KMS encryption key.

You can restore to a new cluster and encrypt the new cluster with an
KMS key that is different from the KMS key used to encrypt the source
cluster. The new DB cluster is encrypted with the KMS key identified by
the C<KmsKeyId> parameter.

If you do not specify a value for the C<KmsKeyId> parameter, then the
following occurs:

=over

=item *

If the cluster is encrypted, then the restored cluster is encrypted
using the KMS key that was used to encrypt the source cluster.

=item *

If the cluster is not encrypted, then the restored cluster is not
encrypted.

=back

If C<DBClusterIdentifier> refers to a cluster that is not encrypted,
then the restore request is rejected.



=head2 Port => Int

The port number on which the new cluster accepts connections.

Constraints: Must be a value from C<1150> to C<65535>.

Default: The default port for the engine.



=head2 RestoreToTime => Str

The date and time to restore the cluster to.

Valid values: A time in Universal Coordinated Time (UTC) format.

Constraints:

=over

=item *

Must be before the latest restorable time for the instance.

=item *

Must be specified if the C<UseLatestRestorableTime> parameter is not
provided.

=item *

Cannot be specified if the C<UseLatestRestorableTime> parameter is
C<true>.

=item *

Cannot be specified if the C<RestoreType> parameter is
C<copy-on-write>.

=back

Example: C<2015-03-07T23:45:00Z>



=head2 RestoreType => Str

The type of restore to be performed. You can specify one of the
following values:

=over

=item *

C<full-copy> - The new DB cluster is restored as a full copy of the
source DB cluster.

=item *

C<copy-on-write> - The new DB cluster is restored as a clone of the
source DB cluster.

=back

Constraints: You can't specify C<copy-on-write> if the engine version
of the source DB cluster is earlier than 1.11.

If you don't specify a C<RestoreType> value, then the new DB cluster is
restored as a full copy of the source DB cluster.



=head2 B<REQUIRED> SourceDBClusterIdentifier => Str

The identifier of the source cluster from which to restore.

Constraints:

=over

=item *

Must match the identifier of an existing C<DBCluster>.

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



=head2 UseLatestRestorableTime => Bool

A value that is set to C<true> to restore the cluster to the latest
restorable backup time, and C<false> otherwise.

Default: C<false>

Constraints: Cannot be specified if the C<RestoreToTime> parameter is
provided.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of VPC security groups that the new cluster belongs to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreDBClusterToPointInTime in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

