
package Paws::DMS::DescribeReplicationsResponse;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has Replications => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Replication]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeReplicationsResponse

=head1 ATTRIBUTES


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 Replications => ArrayRef[L<Paws::DMS::Replication>]

The replication descriptions.


=head2 _request_id => Str


=cut

1;