# Generated by default/object.tt
package Paws::ElastiCache::ConfigureShard;
  use Moose;
  has NewReplicaCount => (is => 'ro', isa => 'Int', required => 1);
  has NodeGroupId => (is => 'ro', isa => 'Str', required => 1);
  has PreferredAvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'PreferredAvailabilityZone', traits => ['NameInRequest']);
  has PreferredOutpostArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'PreferredOutpostArn', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ConfigureShard

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElastiCache::ConfigureShard object:

  $service_obj->Method(Att1 => { NewReplicaCount => $value, ..., PreferredOutpostArns => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElastiCache::ConfigureShard object:

  $result = $service_obj->Method(...);
  $result->Att1->NewReplicaCount

=head1 DESCRIPTION

Node group (shard) configuration options when adding or removing
replicas. Each node group (shard) configuration has the following
members: NodeGroupId, NewReplicaCount, and PreferredAvailabilityZones.

=head1 ATTRIBUTES


=head2 B<REQUIRED> NewReplicaCount => Int

The number of replicas you want in this node group at the end of this
operation. The maximum value for C<NewReplicaCount> is 5. The minimum
value depends upon the type of Valkey or Redis OSS replication group
you are working with.

The minimum number of replicas in a shard or replication group is:

=over

=item *

Valkey or Redis OSS (cluster mode disabled)

=over

=item *

If Multi-AZ: 1

=item *

If Multi-AZ: 0

=back

=item *

Valkey or Redis OSS (cluster mode enabled): 0 (though you will not be
able to failover to a replica if your primary node fails)

=back



=head2 B<REQUIRED> NodeGroupId => Str

The 4-digit id for the node group you are configuring. For Valkey or
Redis OSS (cluster mode disabled) replication groups, the node group id
is always 0001. To find a Valkey or Redis OSS (cluster mode enabled)'s
node group's (shard's) id, see Finding a Shard's Id
(https://docs.aws.amazon.com/AmazonElastiCache/latest/dg/shard-find-id.html).


=head2 PreferredAvailabilityZones => ArrayRef[Str|Undef]

A list of C<PreferredAvailabilityZone> strings that specify which
availability zones the replication group's nodes are to be in. The
nummber of C<PreferredAvailabilityZone> values must equal the value of
C<NewReplicaCount> plus 1 to account for the primary node. If this
member of C<ReplicaConfiguration> is omitted, ElastiCache selects the
availability zone for each of the replicas.


=head2 PreferredOutpostArns => ArrayRef[Str|Undef]

The outpost ARNs in which the cache cluster is created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

