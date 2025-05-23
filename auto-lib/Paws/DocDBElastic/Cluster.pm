# Generated by default/object.tt
package Paws::DocDBElastic::Cluster;
  use Moose;
  has AdminUserName => (is => 'ro', isa => 'Str', request_name => 'adminUserName', traits => ['NameInRequest'], required => 1);
  has AuthType => (is => 'ro', isa => 'Str', request_name => 'authType', traits => ['NameInRequest'], required => 1);
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int', request_name => 'backupRetentionPeriod', traits => ['NameInRequest']);
  has ClusterArn => (is => 'ro', isa => 'Str', request_name => 'clusterArn', traits => ['NameInRequest'], required => 1);
  has ClusterEndpoint => (is => 'ro', isa => 'Str', request_name => 'clusterEndpoint', traits => ['NameInRequest'], required => 1);
  has ClusterName => (is => 'ro', isa => 'Str', request_name => 'clusterName', traits => ['NameInRequest'], required => 1);
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest'], required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str', request_name => 'kmsKeyId', traits => ['NameInRequest'], required => 1);
  has PreferredBackupWindow => (is => 'ro', isa => 'Str', request_name => 'preferredBackupWindow', traits => ['NameInRequest']);
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str', request_name => 'preferredMaintenanceWindow', traits => ['NameInRequest'], required => 1);
  has ShardCapacity => (is => 'ro', isa => 'Int', request_name => 'shardCapacity', traits => ['NameInRequest'], required => 1);
  has ShardCount => (is => 'ro', isa => 'Int', request_name => 'shardCount', traits => ['NameInRequest'], required => 1);
  has ShardInstanceCount => (is => 'ro', isa => 'Int', request_name => 'shardInstanceCount', traits => ['NameInRequest']);
  has Shards => (is => 'ro', isa => 'ArrayRef[Paws::DocDBElastic::Shard]', request_name => 'shards', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'subnetIds', traits => ['NameInRequest'], required => 1);
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'vpcSecurityGroupIds', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDBElastic::Cluster

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DocDBElastic::Cluster object:

  $service_obj->Method(Att1 => { AdminUserName => $value, ..., VpcSecurityGroupIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DocDBElastic::Cluster object:

  $result = $service_obj->Method(...);
  $result->Att1->AdminUserName

=head1 DESCRIPTION

Returns information about a specific elastic cluster.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AdminUserName => Str

The name of the elastic cluster administrator.


=head2 B<REQUIRED> AuthType => Str

The authentication type for the elastic cluster.


=head2 BackupRetentionPeriod => Int

The number of days for which automatic snapshots are retained.


=head2 B<REQUIRED> ClusterArn => Str

The ARN identifier of the elastic cluster.


=head2 B<REQUIRED> ClusterEndpoint => Str

The URL used to connect to the elastic cluster.


=head2 B<REQUIRED> ClusterName => Str

The name of the elastic cluster.


=head2 B<REQUIRED> CreateTime => Str

The time when the elastic cluster was created in Universal Coordinated
Time (UTC).


=head2 B<REQUIRED> KmsKeyId => Str

The KMS key identifier to use to encrypt the elastic cluster.


=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created if
automated backups are enabled, as determined by
C<backupRetentionPeriod>.


=head2 B<REQUIRED> PreferredMaintenanceWindow => Str

The weekly time range during which system maintenance can occur, in
Universal Coordinated Time (UTC).

I<Format>: C<ddd:hh24:mi-ddd:hh24:mi>


=head2 B<REQUIRED> ShardCapacity => Int

The number of vCPUs assigned to each elastic cluster shard. Maximum is
64. Allowed values are 2, 4, 8, 16, 32, 64.


=head2 B<REQUIRED> ShardCount => Int

The number of shards assigned to the elastic cluster. Maximum is 32.


=head2 ShardInstanceCount => Int

The number of replica instances applying to all shards in the cluster.
A C<shardInstanceCount> value of 1 means there is one writer instance,
and any additional instances are replicas that can be used for reads
and to improve availability.


=head2 Shards => ArrayRef[L<Paws::DocDBElastic::Shard>]

The total number of shards in the cluster.


=head2 B<REQUIRED> Status => Str

The status of the elastic cluster.


=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

The Amazon EC2 subnet IDs for the elastic cluster.


=head2 B<REQUIRED> VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups associated with thie elastic cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DocDBElastic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

