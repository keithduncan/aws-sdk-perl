
package Paws::ElastiCache::CreateCacheCluster;
  use Moose;
  has AuthToken => (is => 'ro', isa => 'Str');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AZMode => (is => 'ro', isa => 'Str');
  has CacheClusterId => (is => 'ro', isa => 'Str', required => 1);
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has CacheSecurityGroupNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has IpDiscovery => (is => 'ro', isa => 'Str');
  has LogDeliveryConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::LogDeliveryConfigurationRequest]');
  has NetworkType => (is => 'ro', isa => 'Str');
  has NotificationTopicArn => (is => 'ro', isa => 'Str');
  has NumCacheNodes => (is => 'ro', isa => 'Int');
  has OutpostMode => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredAvailabilityZone => (is => 'ro', isa => 'Str');
  has PreferredAvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PreferredOutpostArn => (is => 'ro', isa => 'Str');
  has PreferredOutpostArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ReplicationGroupId => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SnapshotArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SnapshotName => (is => 'ro', isa => 'Str');
  has SnapshotRetentionLimit => (is => 'ro', isa => 'Int');
  has SnapshotWindow => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::Tag]');
  has TransitEncryptionEnabled => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCacheCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::CreateCacheClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCacheClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CreateCacheCluster - Arguments for method CreateCacheCluster on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCacheCluster on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method CreateCacheCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCacheCluster.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    # CreateCacheCluster
    # Creates a Memcached cluster with 2 nodes.
    my $CreateCacheClusterResult = $elasticache->CreateCacheCluster(
      'AZMode'               => 'cross-az',
      'CacheClusterId'       => 'my-memcached-cluster',
      'CacheNodeType'        => 'cache.r3.large',
      'CacheSubnetGroupName' => 'default',
      'Engine'               => 'memcached',
      'EngineVersion'        => '1.4.24',
      'NumCacheNodes'        => 2,
      'Port'                 => 11211
    );

    # Results:
    my $CacheCluster = $CreateCacheClusterResult->CacheCluster;

    # Returns a L<Paws::ElastiCache::CreateCacheClusterResult> object.
    # CreateCacheCluster
    # Creates a Redis cluster with 1 node.
    my $CreateCacheClusterResult = $elasticache->CreateCacheCluster(
      'AutoMinorVersionUpgrade'   => 1,
      'CacheClusterId'            => 'my-redis',
      'CacheNodeType'             => 'cache.r3.larage',
      'CacheSubnetGroupName'      => 'default',
      'Engine'                    => 'redis',
      'EngineVersion'             => '3.2.4',
      'NumCacheNodes'             => 1,
      'Port'                      => 6379,
      'PreferredAvailabilityZone' => 'us-east-1c',
      'SnapshotRetentionLimit'    => 7
    );

    # Results:
    my $CacheCluster = $CreateCacheClusterResult->CacheCluster;

    # Returns a L<Paws::ElastiCache::CreateCacheClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/CreateCacheCluster>

=head1 ATTRIBUTES


=head2 AuthToken => Str

B<Reserved parameter.> The password used to access a password protected
server.

Password constraints:

=over

=item *

Must be only printable ASCII characters.

=item *

Must be at least 16 characters and no more than 128 characters in
length.

=item *

The only permitted printable special characters are !, &, #, $, ^,
E<lt>, E<gt>, and -. Other printable special characters cannot be used
in the AUTH token.

=back

For more information, see AUTH password (http://redis.io/commands/AUTH)
at http://redis.io/commands/AUTH.



=head2 AutoMinorVersionUpgrade => Bool

If you are running Valkey 7.2 and above or Redis OSS engine version 6.0
and above, set this parameter to yes to opt-in to the next auto minor
version upgrade campaign. This parameter is disabled for previous
versions.



=head2 AZMode => Str

Specifies whether the nodes in this Memcached cluster are created in a
single Availability Zone or created across multiple Availability Zones
in the cluster's region.

This parameter is only supported for Memcached clusters.

If the C<AZMode> and C<PreferredAvailabilityZones> are not specified,
ElastiCache assumes C<single-az> mode.

Valid values are: C<"single-az">, C<"cross-az">

=head2 B<REQUIRED> CacheClusterId => Str

The node group (shard) identifier. This parameter is stored as a
lowercase string.

B<Constraints:>

=over

=item *

A name must contain from 1 to 50 alphanumeric characters or hyphens.

=item *

The first character must be a letter.

=item *

A name cannot end with a hyphen or contain two consecutive hyphens.

=back




=head2 CacheNodeType => Str

The compute and memory capacity of the nodes in the node group (shard).

The following node types are supported by ElastiCache. Generally
speaking, the current generation types provide more memory and
computational power at lower cost when compared to their equivalent
previous generation counterparts.

=over

=item *

General purpose:

=over

=item *

Current generation:

B<M7g node types>: C<cache.m7g.large>, C<cache.m7g.xlarge>,
C<cache.m7g.2xlarge>, C<cache.m7g.4xlarge>, C<cache.m7g.8xlarge>,
C<cache.m7g.12xlarge>, C<cache.m7g.16xlarge>

For region availability, see Supported Node Types
(https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion)

B<M6g node types> (available only for Redis OSS engine version 5.0.6
onward and for Memcached engine version 1.5.16 onward):
C<cache.m6g.large>, C<cache.m6g.xlarge>, C<cache.m6g.2xlarge>,
C<cache.m6g.4xlarge>, C<cache.m6g.8xlarge>, C<cache.m6g.12xlarge>,
C<cache.m6g.16xlarge>

B<M5 node types:> C<cache.m5.large>, C<cache.m5.xlarge>,
C<cache.m5.2xlarge>, C<cache.m5.4xlarge>, C<cache.m5.12xlarge>,
C<cache.m5.24xlarge>

B<M4 node types:> C<cache.m4.large>, C<cache.m4.xlarge>,
C<cache.m4.2xlarge>, C<cache.m4.4xlarge>, C<cache.m4.10xlarge>

B<T4g node types> (available only for Redis OSS engine version 5.0.6
onward and Memcached engine version 1.5.16 onward): C<cache.t4g.micro>,
C<cache.t4g.small>, C<cache.t4g.medium>

B<T3 node types:> C<cache.t3.micro>, C<cache.t3.small>,
C<cache.t3.medium>

B<T2 node types:> C<cache.t2.micro>, C<cache.t2.small>,
C<cache.t2.medium>

=item *

Previous generation: (not recommended. Existing clusters are still
supported but creation of new clusters is not supported for these
types.)

B<T1 node types:> C<cache.t1.micro>

B<M1 node types:> C<cache.m1.small>, C<cache.m1.medium>,
C<cache.m1.large>, C<cache.m1.xlarge>

B<M3 node types:> C<cache.m3.medium>, C<cache.m3.large>,
C<cache.m3.xlarge>, C<cache.m3.2xlarge>

=back

=item *

Compute optimized:

=over

=item *

Previous generation: (not recommended. Existing clusters are still
supported but creation of new clusters is not supported for these
types.)

B<C1 node types:> C<cache.c1.xlarge>

=back

=item *

Memory optimized:

=over

=item *

Current generation:

B<R7g node types>: C<cache.r7g.large>, C<cache.r7g.xlarge>,
C<cache.r7g.2xlarge>, C<cache.r7g.4xlarge>, C<cache.r7g.8xlarge>,
C<cache.r7g.12xlarge>, C<cache.r7g.16xlarge>

For region availability, see Supported Node Types
(https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/CacheNodes.SupportedTypes.html#CacheNodes.SupportedTypesByRegion)

B<R6g node types> (available only for Redis OSS engine version 5.0.6
onward and for Memcached engine version 1.5.16 onward):
C<cache.r6g.large>, C<cache.r6g.xlarge>, C<cache.r6g.2xlarge>,
C<cache.r6g.4xlarge>, C<cache.r6g.8xlarge>, C<cache.r6g.12xlarge>,
C<cache.r6g.16xlarge>

B<R5 node types:> C<cache.r5.large>, C<cache.r5.xlarge>,
C<cache.r5.2xlarge>, C<cache.r5.4xlarge>, C<cache.r5.12xlarge>,
C<cache.r5.24xlarge>

B<R4 node types:> C<cache.r4.large>, C<cache.r4.xlarge>,
C<cache.r4.2xlarge>, C<cache.r4.4xlarge>, C<cache.r4.8xlarge>,
C<cache.r4.16xlarge>

=item *

Previous generation: (not recommended. Existing clusters are still
supported but creation of new clusters is not supported for these
types.)

B<M2 node types:> C<cache.m2.xlarge>, C<cache.m2.2xlarge>,
C<cache.m2.4xlarge>

B<R3 node types:> C<cache.r3.large>, C<cache.r3.xlarge>,
C<cache.r3.2xlarge>, C<cache.r3.4xlarge>, C<cache.r3.8xlarge>

=back

=back

B<Additional node type info>

=over

=item *

All current generation instance types are created in Amazon VPC by
default.

=item *

Valkey or Redis OSS append-only files (AOF) are not supported for T1 or
T2 instances.

=item *

Valkey or Redis OSS Multi-AZ with automatic failover is not supported
on T1 instances.

=item *

The configuration variables C<appendonly> and C<appendfsync> are not
supported on Valkey, or on Redis OSS version 2.8.22 and later.

=back




=head2 CacheParameterGroupName => Str

The name of the parameter group to associate with this cluster. If this
argument is omitted, the default parameter group for the specified
engine is used. You cannot use any parameter group which has
C<cluster-enabled='yes'> when creating a cluster.



=head2 CacheSecurityGroupNames => ArrayRef[Str|Undef]

A list of security group names to associate with this cluster.

Use this parameter only when you are creating a cluster outside of an
Amazon Virtual Private Cloud (Amazon VPC).



=head2 CacheSubnetGroupName => Str

The name of the subnet group to be used for the cluster.

Use this parameter only when you are creating a cluster in an Amazon
Virtual Private Cloud (Amazon VPC).

If you're going to launch your cluster in an Amazon VPC, you need to
create a subnet group before you start creating a cluster. For more
information, see Subnets and Subnet Groups
(https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SubnetGroups.html).



=head2 Engine => Str

The name of the cache engine to be used for this cluster.

Valid values for this parameter are: C<memcached> | C<redis>



=head2 EngineVersion => Str

The version number of the cache engine to be used for this cluster. To
view the supported cache engine versions, use the
DescribeCacheEngineVersions operation.

B<Important:> You can upgrade to a newer engine version (see Selecting
a Cache Engine and Version
(https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/SelectEngine.html#VersionManagement)),
but you cannot downgrade to an earlier engine version. If you want to
use an earlier engine version, you must delete the existing cluster or
replication group and create it anew with the earlier engine version.



=head2 IpDiscovery => Str

The network type you choose when modifying a cluster, either C<ipv4> |
C<ipv6>. IPv6 is supported for workloads using Valkey 7.2 and above,
Redis OSS engine version 6.2 to 7.1 and Memcached engine version 1.6.6
and above on all instances built on the Nitro system
(http://aws.amazon.com/ec2/nitro/).

Valid values are: C<"ipv4">, C<"ipv6">

=head2 LogDeliveryConfigurations => ArrayRef[L<Paws::ElastiCache::LogDeliveryConfigurationRequest>]

Specifies the destination, format and type of the logs.



=head2 NetworkType => Str

Must be either C<ipv4> | C<ipv6> | C<dual_stack>. IPv6 is supported for
workloads using Valkey 7.2 and above, Redis OSS engine version 6.2 to
7.1 and Memcached engine version 1.6.6 and above on all instances built
on the Nitro system (http://aws.amazon.com/ec2/nitro/).

Valid values are: C<"ipv4">, C<"ipv6">, C<"dual_stack">

=head2 NotificationTopicArn => Str

The Amazon Resource Name (ARN) of the Amazon Simple Notification
Service (SNS) topic to which notifications are sent.

The Amazon SNS topic owner must be the same as the cluster owner.



=head2 NumCacheNodes => Int

The initial number of cache nodes that the cluster has.

For clusters running Valkey or Redis OSS, this value must be 1. For
clusters running Memcached, this value must be between 1 and 40.

If you need more than 40 nodes for your Memcached cluster, please fill
out the ElastiCache Limit Increase Request form at
http://aws.amazon.com/contact-us/elasticache-node-limit-request/
(http://aws.amazon.com/contact-us/elasticache-node-limit-request/).



=head2 OutpostMode => Str

Specifies whether the nodes in the cluster are created in a single
outpost or across multiple outposts.

Valid values are: C<"single-outpost">, C<"cross-outpost">

=head2 Port => Int

The port number on which each of the cache nodes accepts connections.



=head2 PreferredAvailabilityZone => Str

The EC2 Availability Zone in which the cluster is created.

All nodes belonging to this cluster are placed in the preferred
Availability Zone. If you want to create your nodes across multiple
Availability Zones, use C<PreferredAvailabilityZones>.

Default: System chosen Availability Zone.



=head2 PreferredAvailabilityZones => ArrayRef[Str|Undef]

A list of the Availability Zones in which cache nodes are created. The
order of the zones in the list is not important.

This option is only supported on Memcached.

If you are creating your cluster in an Amazon VPC (recommended) you can
only locate nodes in Availability Zones that are associated with the
subnets in the selected subnet group.

The number of Availability Zones listed must equal the value of
C<NumCacheNodes>.

If you want all the nodes in the same Availability Zone, use
C<PreferredAvailabilityZone> instead, or repeat the Availability Zone
multiple times in the list.

Default: System chosen Availability Zones.



=head2 PreferredMaintenanceWindow => Str

Specifies the weekly time range during which maintenance on the cluster
is performed. It is specified as a range in the format
ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window
is a 60 minute period.



=head2 PreferredOutpostArn => Str

The outpost ARN in which the cache cluster is created.



=head2 PreferredOutpostArns => ArrayRef[Str|Undef]

The outpost ARNs in which the cache cluster is created.



=head2 ReplicationGroupId => Str

The ID of the replication group to which this cluster should belong. If
this parameter is specified, the cluster is added to the specified
replication group as a read replica; otherwise, the cluster is a
standalone primary that is not part of any replication group.

If the specified replication group is Multi-AZ enabled and the
Availability Zone is not specified, the cluster is created in
Availability Zones that provide the best spread of read replicas across
Availability Zones.

This parameter is only valid if the C<Engine> parameter is C<redis>.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

One or more VPC security groups associated with the cluster.

Use this parameter only when you are creating a cluster in an Amazon
Virtual Private Cloud (Amazon VPC).



=head2 SnapshotArns => ArrayRef[Str|Undef]

A single-element string list containing an Amazon Resource Name (ARN)
that uniquely identifies a Valkey or Redis OSS RDB snapshot file stored
in Amazon S3. The snapshot file is used to populate the node group
(shard). The Amazon S3 object name in the ARN cannot contain any
commas.

This parameter is only valid if the C<Engine> parameter is C<redis>.

Example of an Amazon S3 ARN: C<arn:aws:s3:::my_bucket/snapshot1.rdb>



=head2 SnapshotName => Str

The name of a Valkey or Redis OSS snapshot from which to restore data
into the new node group (shard). The snapshot status changes to
C<restoring> while the new node group (shard) is being created.

This parameter is only valid if the C<Engine> parameter is C<redis>.



=head2 SnapshotRetentionLimit => Int

The number of days for which ElastiCache retains automatic snapshots
before deleting them. For example, if you set C<SnapshotRetentionLimit>
to 5, a snapshot taken today is retained for 5 days before being
deleted.

This parameter is only valid if the C<Engine> parameter is C<redis>.

Default: 0 (i.e., automatic backups are disabled for this cache
cluster).



=head2 SnapshotWindow => Str

The daily time range (in UTC) during which ElastiCache begins taking a
daily snapshot of your node group (shard).

Example: C<05:00-09:00>

If you do not specify this parameter, ElastiCache automatically chooses
an appropriate time range.

This parameter is only valid if the C<Engine> parameter is C<redis>.



=head2 Tags => ArrayRef[L<Paws::ElastiCache::Tag>]

A list of tags to be added to this resource.



=head2 TransitEncryptionEnabled => Bool

A flag that enables in-transit encryption when set to true.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCacheCluster in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

