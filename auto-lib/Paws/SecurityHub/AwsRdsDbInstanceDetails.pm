# Generated by default/object.tt
package Paws::SecurityHub::AwsRdsDbInstanceDetails;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AssociatedRoles => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsRdsDbInstanceAssociatedRole]');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CACertificateIdentifier => (is => 'ro', isa => 'Str');
  has CharacterSetName => (is => 'ro', isa => 'Str');
  has CopyTagsToSnapshot => (is => 'ro', isa => 'Bool');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has DbInstancePort => (is => 'ro', isa => 'Int');
  has DbInstanceStatus => (is => 'ro', isa => 'Str');
  has DbiResourceId => (is => 'ro', isa => 'Str');
  has DBName => (is => 'ro', isa => 'Str');
  has DbParameterGroups => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsRdsDbParameterGroup]');
  has DbSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DbSubnetGroup => (is => 'ro', isa => 'Paws::SecurityHub::AwsRdsDbSubnetGroup');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has DomainMemberships => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsRdsDbDomainMembership]');
  has EnabledCloudWatchLogsExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Endpoint => (is => 'ro', isa => 'Paws::SecurityHub::AwsRdsDbInstanceEndpoint');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has EnhancedMonitoringResourceArn => (is => 'ro', isa => 'Str');
  has IAMDatabaseAuthenticationEnabled => (is => 'ro', isa => 'Bool');
  has InstanceCreateTime => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LatestRestorableTime => (is => 'ro', isa => 'Str');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has ListenerEndpoint => (is => 'ro', isa => 'Paws::SecurityHub::AwsRdsDbInstanceEndpoint');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has MaxAllocatedStorage => (is => 'ro', isa => 'Int');
  has MonitoringInterval => (is => 'ro', isa => 'Int');
  has MonitoringRoleArn => (is => 'ro', isa => 'Str');
  has MultiAz => (is => 'ro', isa => 'Bool');
  has OptionGroupMemberships => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsRdsDbOptionGroupMembership]');
  has PendingModifiedValues => (is => 'ro', isa => 'Paws::SecurityHub::AwsRdsDbPendingModifiedValues');
  has PerformanceInsightsEnabled => (is => 'ro', isa => 'Bool');
  has PerformanceInsightsKmsKeyId => (is => 'ro', isa => 'Str');
  has PerformanceInsightsRetentionPeriod => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has ProcessorFeatures => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsRdsDbProcessorFeature]');
  has PromotionTier => (is => 'ro', isa => 'Int');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has ReadReplicaDBClusterIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ReadReplicaDBInstanceIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ReadReplicaSourceDBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has SecondaryAvailabilityZone => (is => 'ro', isa => 'Str');
  has StatusInfos => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsRdsDbStatusInfo]');
  has StorageEncrypted => (is => 'ro', isa => 'Bool');
  has StorageType => (is => 'ro', isa => 'Str');
  has TdeCredentialArn => (is => 'ro', isa => 'Str');
  has Timezone => (is => 'ro', isa => 'Str');
  has VpcSecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsRdsDbInstanceVpcSecurityGroup]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsRdsDbInstanceDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsRdsDbInstanceDetails object:

  $service_obj->Method(Att1 => { AllocatedStorage => $value, ..., VpcSecurityGroups => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsRdsDbInstanceDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocatedStorage

=head1 DESCRIPTION

Contains the details of an Amazon RDS DB instance.

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

The amount of storage (in gigabytes) to initially allocate for the DB
instance.


=head2 AssociatedRoles => ArrayRef[L<Paws::SecurityHub::AwsRdsDbInstanceAssociatedRole>]

The IAM roles associated with the DB instance.


=head2 AutoMinorVersionUpgrade => Bool

Indicates whether minor version patches are applied automatically.


=head2 AvailabilityZone => Str

The Availability Zone where the DB instance will be created.


=head2 BackupRetentionPeriod => Int

The number of days for which to retain automated backups.


=head2 CACertificateIdentifier => Str

The identifier of the CA certificate for this DB instance.


=head2 CharacterSetName => Str

The name of the character set that this DB instance is associated with.


=head2 CopyTagsToSnapshot => Bool

Whether to copy resource tags to snapshots of the DB instance.


=head2 DBClusterIdentifier => Str

If the DB instance is a member of a DB cluster, contains the name of
the DB cluster that the DB instance is a member of.


=head2 DBInstanceClass => Str

Contains the name of the compute and memory capacity class of the DB
instance.


=head2 DBInstanceIdentifier => Str

Contains a user-supplied database identifier. This identifier is the
unique key that identifies a DB instance.


=head2 DbInstancePort => Int

Specifies the port that the DB instance listens on. If the DB instance
is part of a DB cluster, this can be a different port than the DB
cluster port.


=head2 DbInstanceStatus => Str

The current status of the DB instance.


=head2 DbiResourceId => Str

The Amazon Web Services Region-unique, immutable identifier for the DB
instance. This identifier is found in CloudTrail log entries whenever
the KMS key for the DB instance is accessed.


=head2 DBName => Str

The meaning of this parameter differs according to the database engine
you use.

B<MySQL, MariaDB, SQL Server, PostgreSQL>

Contains the name of the initial database of this instance that was
provided at create time, if one was specified when the DB instance was
created. This same name is returned for the life of the DB instance.

B<Oracle>

Contains the Oracle System ID (SID) of the created DB instance. Not
shown when the returned parameters don't apply to an Oracle DB
instance.


=head2 DbParameterGroups => ArrayRef[L<Paws::SecurityHub::AwsRdsDbParameterGroup>]

A list of the DB parameter groups to assign to the DB instance.


=head2 DbSecurityGroups => ArrayRef[Str|Undef]

A list of the DB security groups to assign to the DB instance.


=head2 DbSubnetGroup => L<Paws::SecurityHub::AwsRdsDbSubnetGroup>

Information about the subnet group that is associated with the DB
instance.


=head2 DeletionProtection => Bool

Indicates whether the DB instance has deletion protection enabled.

When deletion protection is enabled, the database cannot be deleted.


=head2 DomainMemberships => ArrayRef[L<Paws::SecurityHub::AwsRdsDbDomainMembership>]

The Active Directory domain membership records associated with the DB
instance.


=head2 EnabledCloudWatchLogsExports => ArrayRef[Str|Undef]

A list of log types that this DB instance is configured to export to
CloudWatch Logs.


=head2 Endpoint => L<Paws::SecurityHub::AwsRdsDbInstanceEndpoint>

Specifies the connection endpoint.


=head2 Engine => Str

Provides the name of the database engine to use for this DB instance.


=head2 EngineVersion => Str

Indicates the database engine version.


=head2 EnhancedMonitoringResourceArn => Str

The ARN of the CloudWatch Logs log stream that receives the enhanced
monitoring metrics data for the DB instance.


=head2 IAMDatabaseAuthenticationEnabled => Bool

True if mapping of IAM accounts to database accounts is enabled, and
otherwise false.

IAM database authentication can be enabled for the following database
engines.

=over

=item *

For MySQL 5.6, minor version 5.6.34 or higher

=item *

For MySQL 5.7, minor version 5.7.16 or higher

=item *

Aurora 5.6 or higher

=back



=head2 InstanceCreateTime => Str

Indicates when the DB instance was created.

For more information about the validation and formatting of timestamp
fields in Security Hub, see Timestamps
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps).


=head2 Iops => Int

Specifies the provisioned IOPS (I/O operations per second) for this DB
instance.


=head2 KmsKeyId => Str

If C<StorageEncrypted> is true, the KMS key identifier for the
encrypted DB instance.


=head2 LatestRestorableTime => Str

Specifies the latest time to which a database can be restored with
point-in-time restore.

For more information about the validation and formatting of timestamp
fields in Security Hub, see Timestamps
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/Welcome.html#timestamps).


=head2 LicenseModel => Str

License model information for this DB instance.


=head2 ListenerEndpoint => L<Paws::SecurityHub::AwsRdsDbInstanceEndpoint>




=head2 MasterUsername => Str

The master user name of the DB instance.


=head2 MaxAllocatedStorage => Int

The upper limit to which Amazon RDS can automatically scale the storage
of the DB instance.


=head2 MonitoringInterval => Int

The interval, in seconds, between points when enhanced monitoring
metrics are collected for the DB instance.


=head2 MonitoringRoleArn => Str

The ARN for the IAM role that permits Amazon RDS to send enhanced
monitoring metrics to CloudWatch Logs.


=head2 MultiAz => Bool

Whether the DB instance is a multiple Availability Zone deployment.


=head2 OptionGroupMemberships => ArrayRef[L<Paws::SecurityHub::AwsRdsDbOptionGroupMembership>]

The list of option group memberships for this DB instance.


=head2 PendingModifiedValues => L<Paws::SecurityHub::AwsRdsDbPendingModifiedValues>

Changes to the DB instance that are currently pending.


=head2 PerformanceInsightsEnabled => Bool

Indicates whether Performance Insights is enabled for the DB instance.


=head2 PerformanceInsightsKmsKeyId => Str

The identifier of the KMS key used to encrypt the Performance Insights
data.


=head2 PerformanceInsightsRetentionPeriod => Int

The number of days to retain Performance Insights data.


=head2 PreferredBackupWindow => Str

The range of time each day when automated backups are created, if
automated backups are enabled.

Uses the format C<HH:MM-HH:MM>. For example, C<04:52-05:22>.


=head2 PreferredMaintenanceWindow => Str

The weekly time range during which system maintenance can occur, in
Universal Coordinated Time (UTC).

Uses the format C<E<lt>dayE<gt>:HH:MM-E<lt>dayE<gt>:HH:MM>.

For the day values, use
C<mon>|C<tue>|C<wed>|C<thu>|C<fri>|C<sat>|C<sun>.

For example, C<sun:09:32-sun:10:02>.


=head2 ProcessorFeatures => ArrayRef[L<Paws::SecurityHub::AwsRdsDbProcessorFeature>]

The number of CPU cores and the number of threads per core for the DB
instance class of the DB instance.


=head2 PromotionTier => Int

The order in which to promote an Aurora replica to the primary instance
after a failure of the existing primary instance.


=head2 PubliclyAccessible => Bool

Specifies the accessibility options for the DB instance.

A value of true specifies an Internet-facing instance with a publicly
resolvable DNS name, which resolves to a public IP address.

A value of false specifies an internal instance with a DNS name that
resolves to a private IP address.


=head2 ReadReplicaDBClusterIdentifiers => ArrayRef[Str|Undef]

List of identifiers of Aurora DB clusters to which the RDS DB instance
is replicated as a read replica.


=head2 ReadReplicaDBInstanceIdentifiers => ArrayRef[Str|Undef]

List of identifiers of the read replicas associated with this DB
instance.


=head2 ReadReplicaSourceDBInstanceIdentifier => Str

If this DB instance is a read replica, contains the identifier of the
source DB instance.


=head2 SecondaryAvailabilityZone => Str

For a DB instance with multi-Availability Zone support, the name of the
secondary Availability Zone.


=head2 StatusInfos => ArrayRef[L<Paws::SecurityHub::AwsRdsDbStatusInfo>]

The status of a read replica. If the instance isn't a read replica,
this is empty.


=head2 StorageEncrypted => Bool

Specifies whether the DB instance is encrypted.


=head2 StorageType => Str

The storage type for the DB instance.


=head2 TdeCredentialArn => Str

The ARN from the key store with which the instance is associated for
TDE encryption.


=head2 Timezone => Str

The time zone of the DB instance.


=head2 VpcSecurityGroups => ArrayRef[L<Paws::SecurityHub::AwsRdsDbInstanceVpcSecurityGroup>]

A list of VPC security groups that the DB instance belongs to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

