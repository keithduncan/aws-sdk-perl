
package Paws::DynamoDB::GetItemOutput;
  use Moose;
  has ConsumedCapacity => (is => 'ro', isa => 'Paws::DynamoDB::ConsumedCapacity');
  has Item => (is => 'ro', isa => 'Paws::DynamoDB::AttributeMap');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::GetItemOutput

=head1 ATTRIBUTES


=head2 ConsumedCapacity => L<Paws::DynamoDB::ConsumedCapacity>

The capacity units consumed by the C<GetItem> operation. The data
returned includes the total provisioned throughput consumed, along with
statistics for the table and any indexes involved in the operation.
C<ConsumedCapacity> is only returned if the C<ReturnConsumedCapacity>
parameter was specified. For more information, see Capacity unit
consumption for read operations
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/read-write-operations.html#read-operation-consumption)
in the I<Amazon DynamoDB Developer Guide>.


=head2 Item => L<Paws::DynamoDB::AttributeMap>

A map of attribute names to C<AttributeValue> objects, as specified by
C<ProjectionExpression>.


=head2 _request_id => Str


=cut

1;