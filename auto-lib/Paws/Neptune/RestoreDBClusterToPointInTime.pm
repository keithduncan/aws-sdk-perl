
package Paws::Neptune::RestoreDBClusterToPointInTime;
  use Moose;
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has EnableCloudwatchLogsExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has RestoreToTime => (is => 'ro', isa => 'Str');
  has RestoreType => (is => 'ro', isa => 'Str');
  has ServerlessV2ScalingConfiguration => (is => 'ro', isa => 'Paws::Neptune::ServerlessV2ScalingConfiguration');
  has SourceDBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has StorageType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Neptune::Tag]');
  has UseLatestRestorableTime => (is => 'ro', isa => 'Bool');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreDBClusterToPointInTime');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::RestoreDBClusterToPointInTimeResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RestoreDBClusterToPointInTimeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::RestoreDBClusterToPointInTime - Arguments for method RestoreDBClusterToPointInTime on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreDBClusterToPointInTime on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method RestoreDBClusterToPointInTime.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreDBClusterToPointInTime.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $RestoreDBClusterToPointInTimeResult =
      $rds->RestoreDBClusterToPointInTime(
      DBClusterIdentifier              => 'MyString',
      SourceDBClusterIdentifier        => 'MyString',
      DBClusterParameterGroupName      => 'MyString',               # OPTIONAL
      DBSubnetGroupName                => 'MyString',               # OPTIONAL
      DeletionProtection               => 1,                        # OPTIONAL
      EnableCloudwatchLogsExports      => [ 'MyString', ... ],      # OPTIONAL
      EnableIAMDatabaseAuthentication  => 1,                        # OPTIONAL
      KmsKeyId                         => 'MyString',               # OPTIONAL
      OptionGroupName                  => 'MyString',               # OPTIONAL
      Port                             => 1,                        # OPTIONAL
      RestoreToTime                    => '1970-01-01T01:00:00',    # OPTIONAL
      RestoreType                      => 'MyString',               # OPTIONAL
      ServerlessV2ScalingConfiguration => {
        MaxCapacity => 1,                                           # OPTIONAL
        MinCapacity => 1,                                           # OPTIONAL
      },    # OPTIONAL
      StorageType => 'MyString',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                            # OPTIONAL
      UseLatestRestorableTime => 1,                      # OPTIONAL
      VpcSecurityGroupIds     => [ 'MyString', ... ],    # OPTIONAL
      );

    # Results:
    my $DBCluster = $RestoreDBClusterToPointInTimeResult->DBCluster;

    # Returns a L<Paws::Neptune::RestoreDBClusterToPointInTimeResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RestoreDBClusterToPointInTime>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterIdentifier => Str

The name of the new DB cluster to be created.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens

=item *

First character must be a letter

=item *

Cannot end with a hyphen or contain two consecutive hyphens

=back




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

The DB subnet group name to use for the new DB cluster.

Constraints: If supplied, must match the name of an existing
DBSubnetGroup.

Example: C<mySubnetgroup>



=head2 DeletionProtection => Bool

A value that indicates whether the DB cluster has deletion protection
enabled. The database can't be deleted when deletion protection is
enabled. By default, deletion protection is disabled.



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

The list of logs that the restored DB cluster is to export to
CloudWatch Logs.



=head2 EnableIAMDatabaseAuthentication => Bool

True to enable mapping of Amazon Identity and Access Management (IAM)
accounts to database accounts, and otherwise false.

Default: C<false>



=head2 KmsKeyId => Str

The Amazon KMS key identifier to use when restoring an encrypted DB
cluster from an encrypted DB cluster.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are restoring a DB cluster with the same Amazon
account that owns the KMS encryption key used to encrypt the new DB
cluster, then you can use the KMS key alias instead of the ARN for the
KMS encryption key.

You can restore to a new DB cluster and encrypt the new DB cluster with
a KMS key that is different than the KMS key used to encrypt the source
DB cluster. The new DB cluster is encrypted with the KMS key identified
by the C<KmsKeyId> parameter.

If you do not specify a value for the C<KmsKeyId> parameter, then the
following will occur:

=over

=item *

If the DB cluster is encrypted, then the restored DB cluster is
encrypted using the KMS key that was used to encrypt the source DB
cluster.

=item *

If the DB cluster is not encrypted, then the restored DB cluster is not
encrypted.

=back

If C<DBClusterIdentifier> refers to a DB cluster that is not encrypted,
then the restore request is rejected.



=head2 OptionGroupName => Str

I<(Not supported by Neptune)>



=head2 Port => Int

The port number on which the new DB cluster accepts connections.

Constraints: Value must be C<1150-65535>

Default: The same port as the original DB cluster.



=head2 RestoreToTime => Str

The date and time to restore the DB cluster to.

Valid Values: Value must be a time in Universal Coordinated Time (UTC)
format

Constraints:

=over

=item *

Must be before the latest restorable time for the DB instance

=item *

Must be specified if C<UseLatestRestorableTime> parameter is not
provided

=item *

Cannot be specified if C<UseLatestRestorableTime> parameter is true

=item *

Cannot be specified if C<RestoreType> parameter is C<copy-on-write>

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

If you don't specify a C<RestoreType> value, then the new DB cluster is
restored as a full copy of the source DB cluster.



=head2 ServerlessV2ScalingConfiguration => L<Paws::Neptune::ServerlessV2ScalingConfiguration>

Contains the scaling configuration of a Neptune Serverless DB cluster.

For more information, see Using Amazon Neptune Serverless
(https://docs.aws.amazon.com/neptune/latest/userguide/neptune-serverless-using.html)
in the I<Amazon Neptune User Guide>.



=head2 B<REQUIRED> SourceDBClusterIdentifier => Str

The identifier of the source DB cluster from which to restore.

Constraints:

=over

=item *

Must match the identifier of an existing DBCluster.

=back




=head2 StorageType => Str

Specifies the storage type to be associated with the DB cluster.

Valid values: C<standard>, C<iopt1>

Default: C<standard>



=head2 Tags => ArrayRef[L<Paws::Neptune::Tag>]

The tags to be applied to the restored DB cluster.



=head2 UseLatestRestorableTime => Bool

A value that is set to C<true> to restore the DB cluster to the latest
restorable backup time, and C<false> otherwise.

Default: C<false>

Constraints: Cannot be specified if C<RestoreToTime> parameter is
provided.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of VPC security groups that the new DB cluster belongs to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreDBClusterToPointInTime in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

