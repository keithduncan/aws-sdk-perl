
package Paws::ElastiCache::AllowedNodeTypeModificationsMessage;
  use Moose;
  has ScaleDownModifications => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ScaleUpModifications => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::AllowedNodeTypeModificationsMessage

=head1 ATTRIBUTES


=head2 ScaleDownModifications => ArrayRef[Str|Undef]

A string list, each element of which specifies a cache node type which
you can use to scale your cluster or replication group. When scaling
down a Valkey or Redis OSS cluster or replication group using
ModifyCacheCluster or ModifyReplicationGroup, use a value from this
list for the CacheNodeType parameter.


=head2 ScaleUpModifications => ArrayRef[Str|Undef]

A string list, each element of which specifies a cache node type which
you can use to scale your cluster or replication group.

When scaling up a Valkey or Redis OSS cluster or replication group
using C<ModifyCacheCluster> or C<ModifyReplicationGroup>, use a value
from this list for the C<CacheNodeType> parameter.


=head2 _request_id => Str


=cut

