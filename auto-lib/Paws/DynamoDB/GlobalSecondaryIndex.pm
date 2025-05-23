# Generated by default/object.tt
package Paws::DynamoDB::GlobalSecondaryIndex;
  use Moose;
  has IndexName => (is => 'ro', isa => 'Str', required => 1);
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::KeySchemaElement]', required => 1);
  has OnDemandThroughput => (is => 'ro', isa => 'Paws::DynamoDB::OnDemandThroughput');
  has Projection => (is => 'ro', isa => 'Paws::DynamoDB::Projection', required => 1);
  has ProvisionedThroughput => (is => 'ro', isa => 'Paws::DynamoDB::ProvisionedThroughput');
  has WarmThroughput => (is => 'ro', isa => 'Paws::DynamoDB::WarmThroughput');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::GlobalSecondaryIndex

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::GlobalSecondaryIndex object:

  $service_obj->Method(Att1 => { IndexName => $value, ..., WarmThroughput => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::GlobalSecondaryIndex object:

  $result = $service_obj->Method(...);
  $result->Att1->IndexName

=head1 DESCRIPTION

Represents the properties of a global secondary index.

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexName => Str

The name of the global secondary index. The name must be unique among
all other indexes on this table.


=head2 B<REQUIRED> KeySchema => ArrayRef[L<Paws::DynamoDB::KeySchemaElement>]

The complete key schema for a global secondary index, which consists of
one or more pairs of attribute names and key types:

=over

=item *

C<HASH> - partition key

=item *

C<RANGE> - sort key

=back

The partition key of an item is also known as its I<hash attribute>.
The term "hash attribute" derives from DynamoDB's usage of an internal
hash function to evenly distribute data items across partitions, based
on their partition key values.

The sort key of an item is also known as its I<range attribute>. The
term "range attribute" derives from the way DynamoDB stores items with
the same partition key physically close together, in sorted order by
the sort key value.


=head2 OnDemandThroughput => L<Paws::DynamoDB::OnDemandThroughput>

The maximum number of read and write units for the specified global
secondary index. If you use this parameter, you must specify
C<MaxReadRequestUnits>, C<MaxWriteRequestUnits>, or both. You must use
either C<OnDemandThroughput> or C<ProvisionedThroughput> based on your
table's capacity mode.


=head2 B<REQUIRED> Projection => L<Paws::DynamoDB::Projection>

Represents attributes that are copied (projected) from the table into
the global secondary index. These are in addition to the primary key
attributes and index key attributes, which are automatically projected.


=head2 ProvisionedThroughput => L<Paws::DynamoDB::ProvisionedThroughput>

Represents the provisioned throughput settings for the specified global
secondary index. You must use either C<OnDemandThroughput> or
C<ProvisionedThroughput> based on your table's capacity mode.

For current minimum and maximum provisioned throughput values, see
Service, Account, and Table Quotas
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html)
in the I<Amazon DynamoDB Developer Guide>.


=head2 WarmThroughput => L<Paws::DynamoDB::WarmThroughput>

Represents the warm throughput value (in read units per second and
write units per second) for the specified secondary index. If you use
this parameter, you must specify C<ReadUnitsPerSecond>,
C<WriteUnitsPerSecond>, or both.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

