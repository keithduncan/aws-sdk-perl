
package Paws::DocDB::CreateDBCluster;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has EnableCloudwatchLogsExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Engine => (is => 'ro', isa => 'Str', required => 1);
  has EngineVersion => (is => 'ro', isa => 'Str');
  has GlobalClusterIdentifier => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has ManageMasterUserPassword => (is => 'ro', isa => 'Bool');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has MasterUserSecretKmsKeyId => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PreSignedUrl => (is => 'ro', isa => 'Str');
  has StorageEncrypted => (is => 'ro', isa => 'Bool');
  has StorageType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DocDB::Tag]');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDBCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::CreateDBClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDBClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::CreateDBCluster - Arguments for method CreateDBCluster on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDBCluster on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method CreateDBCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDBCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $CreateDBClusterResult = $rds->CreateDBCluster(
      DBClusterIdentifier         => 'MyString',
      Engine                      => 'MyString',
      AvailabilityZones           => [ 'MyString', ... ],            # OPTIONAL
      BackupRetentionPeriod       => 1,                              # OPTIONAL
      DBClusterParameterGroupName => 'MyString',                     # OPTIONAL
      DBSubnetGroupName           => 'MyString',                     # OPTIONAL
      DeletionProtection          => 1,                              # OPTIONAL
      EnableCloudwatchLogsExports => [ 'MyString', ... ],            # OPTIONAL
      EngineVersion               => 'MyString',                     # OPTIONAL
      GlobalClusterIdentifier     => 'MyGlobalClusterIdentifier',    # OPTIONAL
      KmsKeyId                    => 'MyString',                     # OPTIONAL
      ManageMasterUserPassword    => 1,                              # OPTIONAL
      MasterUserPassword          => 'MyString',                     # OPTIONAL
      MasterUserSecretKmsKeyId    => 'MyString',                     # OPTIONAL
      MasterUsername              => 'MyString',                     # OPTIONAL
      Port                        => 1,                              # OPTIONAL
      PreSignedUrl                => 'MyString',                     # OPTIONAL
      PreferredBackupWindow       => 'MyString',                     # OPTIONAL
      PreferredMaintenanceWindow  => 'MyString',                     # OPTIONAL
      StorageEncrypted            => 1,                              # OPTIONAL
      StorageType                 => 'MyString',                     # OPTIONAL
      Tags                        => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                             # OPTIONAL
      VpcSecurityGroupIds => [ 'MyString', ... ],                    # OPTIONAL
    );

    # Results:
    my $DBCluster = $CreateDBClusterResult->DBCluster;

    # Returns a L<Paws::DocDB::CreateDBClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateDBCluster>

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

A list of Amazon EC2 Availability Zones that instances in the cluster
can be created in.



=head2 BackupRetentionPeriod => Int

The number of days for which automated backups are retained. You must
specify a minimum value of 1.

Default: 1

Constraints:

=over

=item *

Must be a value from 1 to 35.

=back




=head2 B<REQUIRED> DBClusterIdentifier => Str

The cluster identifier. This parameter is stored as a lowercase string.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

The first character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back

Example: C<my-cluster>



=head2 DBClusterParameterGroupName => Str

The name of the cluster parameter group to associate with this cluster.



=head2 DBSubnetGroupName => Str

A subnet group to associate with this cluster.

Constraints: Must match the name of an existing C<DBSubnetGroup>. Must
not be default.

Example: C<mySubnetgroup>



=head2 DeletionProtection => Bool

Specifies whether this cluster can be deleted. If C<DeletionProtection>
is enabled, the cluster cannot be deleted unless it is modified and
C<DeletionProtection> is disabled. C<DeletionProtection> protects
clusters from being accidentally deleted.



=head2 EnableCloudwatchLogsExports => ArrayRef[Str|Undef]

A list of log types that need to be enabled for exporting to Amazon
CloudWatch Logs. You can enable audit logs or profiler logs. For more
information, see Auditing Amazon DocumentDB Events
(https://docs.aws.amazon.com/documentdb/latest/developerguide/event-auditing.html)
and Profiling Amazon DocumentDB Operations
(https://docs.aws.amazon.com/documentdb/latest/developerguide/profiling.html).



=head2 B<REQUIRED> Engine => Str

The name of the database engine to be used for this cluster.

Valid values: C<docdb>



=head2 EngineVersion => Str

The version number of the database engine to use. The
C<--engine-version> will default to the latest major engine version.
For production workloads, we recommend explicitly declaring this
parameter with the intended major engine version.



=head2 GlobalClusterIdentifier => Str

The cluster identifier of the new global cluster.



=head2 KmsKeyId => Str

The KMS key identifier for an encrypted cluster.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are creating a cluster using the same Amazon Web
Services account that owns the KMS encryption key that is used to
encrypt the new cluster, you can use the KMS key alias instead of the
ARN for the KMS encryption key.

If an encryption key is not specified in C<KmsKeyId>:

=over

=item *

If the C<StorageEncrypted> parameter is C<true>, Amazon DocumentDB uses
your default encryption key.

=back

KMS creates the default encryption key for your Amazon Web Services
account. Your Amazon Web Services account has a different default
encryption key for each Amazon Web Services Regions.



=head2 ManageMasterUserPassword => Bool

Specifies whether to manage the master user password with Amazon Web
Services Secrets Manager.

Constraint: You can't manage the master user password with Amazon Web
Services Secrets Manager if C<MasterUserPassword> is specified.



=head2 MasterUsername => Str

The name of the master user for the cluster.

Constraints:

=over

=item *

Must be from 1 to 63 letters or numbers.

=item *

The first character must be a letter.

=item *

Cannot be a reserved word for the chosen database engine.

=back




=head2 MasterUserPassword => Str

The password for the master database user. This password can contain
any printable ASCII character except forward slash (/), double quote
("), or the "at" symbol (@).

Constraints: Must contain from 8 to 100 characters.



=head2 MasterUserSecretKmsKeyId => Str

The Amazon Web Services KMS key identifier to encrypt a secret that is
automatically generated and managed in Amazon Web Services Secrets
Manager. This setting is valid only if the master user password is
managed by Amazon DocumentDB in Amazon Web Services Secrets Manager for
the DB cluster.

The Amazon Web Services KMS key identifier is the key ARN, key ID,
alias ARN, or alias name for the KMS key. To use a KMS key in a
different Amazon Web Services account, specify the key ARN or alias
ARN.

If you don't specify C<MasterUserSecretKmsKeyId>, then the
C<aws/secretsmanager> KMS key is used to encrypt the secret. If the
secret is in a different Amazon Web Services account, then you can't
use the C<aws/secretsmanager> KMS key to encrypt the secret, and you
must use a customer managed KMS key.

There is a default KMS key for your Amazon Web Services account. Your
Amazon Web Services account has a different default KMS key for each
Amazon Web Services Region.



=head2 Port => Int

The port number on which the instances in the cluster accept
connections.



=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created if
automated backups are enabled using the C<BackupRetentionPeriod>
parameter.

The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Web Services Region.

Constraints:

=over

=item *

Must be in the format C<hh24:mi-hh24:mi>.

=item *

Must be in Universal Coordinated Time (UTC).

=item *

Must not conflict with the preferred maintenance window.

=item *

Must be at least 30 minutes.

=back




=head2 PreferredMaintenanceWindow => Str

The weekly time range during which system maintenance can occur, in
Universal Coordinated Time (UTC).

Format: C<ddd:hh24:mi-ddd:hh24:mi>

The default is a 30-minute window selected at random from an 8-hour
block of time for each Amazon Web Services Region, occurring on a
random day of the week.

Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun

Constraints: Minimum 30-minute window.



=head2 PreSignedUrl => Str

Not currently supported.



=head2 StorageEncrypted => Bool

Specifies whether the cluster is encrypted.



=head2 StorageType => Str

The storage type to associate with the DB cluster.

For information on storage types for Amazon DocumentDB clusters, see
Cluster storage configurations in the I<Amazon DocumentDB Developer
Guide>.

Valid values for storage type - C<standard | iopt1>

Default value is C<standard>

When you create a DocumentDB DB cluster with the storage type set to
C<iopt1>, the storage type is returned in the response. The storage
type isn't returned when you set it to C<standard>.



=head2 Tags => ArrayRef[L<Paws::DocDB::Tag>]

The tags to be assigned to the cluster.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups to associate with this cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDBCluster in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

