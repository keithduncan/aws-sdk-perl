
package Paws::Kinesis::GetRecordsOutput;
  use Moose;
  has ChildShards => (is => 'ro', isa => 'ArrayRef[Paws::Kinesis::ChildShard]');
  has MillisBehindLatest => (is => 'ro', isa => 'Int');
  has NextShardIterator => (is => 'ro', isa => 'Str');
  has Records => (is => 'ro', isa => 'ArrayRef[Paws::Kinesis::Record]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::GetRecordsOutput

=head1 ATTRIBUTES


=head2 ChildShards => ArrayRef[L<Paws::Kinesis::ChildShard>]

The list of the current shard's child shards, returned in the
C<GetRecords> API's response only when the end of the current shard is
reached.


=head2 MillisBehindLatest => Int

The number of milliseconds the GetRecords response is from the tip of
the stream, indicating how far behind current time the consumer is. A
value of zero indicates that record processing is caught up, and there
are no new records to process at this moment.


=head2 NextShardIterator => Str

The next position in the shard from which to start sequentially reading
data records. If set to C<null>, the shard has been closed and the
requested iterator does not return any more data.


=head2 B<REQUIRED> Records => ArrayRef[L<Paws::Kinesis::Record>]

The data records retrieved from the shard.


=head2 _request_id => Str


=cut

1;