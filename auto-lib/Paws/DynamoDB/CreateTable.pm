
package Paws::DynamoDB::CreateTable;
  use Moose;
  has AttributeDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::AttributeDefinition]', required => 1);
  has BillingMode => (is => 'ro', isa => 'Str');
  has DeletionProtectionEnabled => (is => 'ro', isa => 'Bool');
  has GlobalSecondaryIndexes => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::GlobalSecondaryIndex]');
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::KeySchemaElement]', required => 1);
  has LocalSecondaryIndexes => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::LocalSecondaryIndex]');
  has OnDemandThroughput => (is => 'ro', isa => 'Paws::DynamoDB::OnDemandThroughput');
  has ProvisionedThroughput => (is => 'ro', isa => 'Paws::DynamoDB::ProvisionedThroughput');
  has ResourcePolicy => (is => 'ro', isa => 'Str');
  has SSESpecification => (is => 'ro', isa => 'Paws::DynamoDB::SSESpecification');
  has StreamSpecification => (is => 'ro', isa => 'Paws::DynamoDB::StreamSpecification');
  has TableClass => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::Tag]');
  has WarmThroughput => (is => 'ro', isa => 'Paws::DynamoDB::WarmThroughput');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::CreateTableOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::CreateTable - Arguments for method CreateTable on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTable on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method CreateTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTable.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    # To create a table
    # This example creates a table named Music.
    my $CreateTableOutput = $dynamodb->CreateTable(
      'AttributeDefinitions' => [

        {
          'AttributeName' => 'Artist',
          'AttributeType' => 'S'
        },

        {
          'AttributeName' => 'SongTitle',
          'AttributeType' => 'S'
        }
      ],
      'KeySchema' => [

        {
          'AttributeName' => 'Artist',
          'KeyType'       => 'HASH'
        },

        {
          'AttributeName' => 'SongTitle',
          'KeyType'       => 'RANGE'
        }
      ],
      'ProvisionedThroughput' => {
        'ReadCapacityUnits'  => 5,
        'WriteCapacityUnits' => 5
      },
      'TableName' => 'Music'
    );

    # Results:
    my $TableDescription = $CreateTableOutput->TableDescription;

    # Returns a L<Paws::DynamoDB::CreateTableOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/CreateTable>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeDefinitions => ArrayRef[L<Paws::DynamoDB::AttributeDefinition>]

An array of attributes that describe the key schema for the table and
indexes.



=head2 BillingMode => Str

Controls how you are charged for read and write throughput and how you
manage capacity. This setting can be changed later.

=over

=item *

C<PAY_PER_REQUEST> - We recommend using C<PAY_PER_REQUEST> for most
DynamoDB workloads. C<PAY_PER_REQUEST> sets the billing mode to
On-demand capacity mode
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/on-demand-capacity-mode.html).

=item *

C<PROVISIONED> - We recommend using C<PROVISIONED> for steady workloads
with predictable growth where capacity requirements can be reliably
forecasted. C<PROVISIONED> sets the billing mode to Provisioned
capacity mode
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/provisioned-capacity-mode.html).

=back


Valid values are: C<"PROVISIONED">, C<"PAY_PER_REQUEST">

=head2 DeletionProtectionEnabled => Bool

Indicates whether deletion protection is to be enabled (true) or
disabled (false) on the table.



=head2 GlobalSecondaryIndexes => ArrayRef[L<Paws::DynamoDB::GlobalSecondaryIndex>]

One or more global secondary indexes (the maximum is 20) to be created
on the table. Each global secondary index in the array includes the
following:

=over

=item *

C<IndexName> - The name of the global secondary index. Must be unique
only for this table.

=item *

C<KeySchema> - Specifies the key schema for the global secondary index.

=item *

C<Projection> - Specifies attributes that are copied (projected) from
the table into the index. These are in addition to the primary key
attributes and index key attributes, which are automatically projected.
Each attribute specification is composed of:

=over

=item *

C<ProjectionType> - One of the following:

=over

=item *

C<KEYS_ONLY> - Only the index and primary keys are projected into the
index.

=item *

C<INCLUDE> - Only the specified table attributes are projected into the
index. The list of projected attributes is in C<NonKeyAttributes>.

=item *

C<ALL> - All of the table attributes are projected into the index.

=back

=item *

C<NonKeyAttributes> - A list of one or more non-key attribute names
that are projected into the secondary index. The total count of
attributes provided in C<NonKeyAttributes>, summed across all of the
secondary indexes, must not exceed 100. If you project the same
attribute into two different indexes, this counts as two distinct
attributes when determining the total. This limit only applies when you
specify the ProjectionType of C<INCLUDE>. You still can specify the
ProjectionType of C<ALL> to project all attributes from the source
table, even if the table has more than 100 attributes.

=back

=item *

C<ProvisionedThroughput> - The provisioned throughput settings for the
global secondary index, consisting of read and write capacity units.

=back




=head2 B<REQUIRED> KeySchema => ArrayRef[L<Paws::DynamoDB::KeySchemaElement>]

Specifies the attributes that make up the primary key for a table or an
index. The attributes in C<KeySchema> must also be defined in the
C<AttributeDefinitions> array. For more information, see Data Model
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html)
in the I<Amazon DynamoDB Developer Guide>.

Each C<KeySchemaElement> in the array is composed of:

=over

=item *

C<AttributeName> - The name of this key attribute.

=item *

C<KeyType> - The role that the key attribute will assume:

=over

=item *

C<HASH> - partition key

=item *

C<RANGE> - sort key

=back

=back

The partition key of an item is also known as its I<hash attribute>.
The term "hash attribute" derives from the DynamoDB usage of an
internal hash function to evenly distribute data items across
partitions, based on their partition key values.

The sort key of an item is also known as its I<range attribute>. The
term "range attribute" derives from the way DynamoDB stores items with
the same partition key physically close together, in sorted order by
the sort key value.

For a simple primary key (partition key), you must provide exactly one
element with a C<KeyType> of C<HASH>.

For a composite primary key (partition key and sort key), you must
provide exactly two elements, in this order: The first element must
have a C<KeyType> of C<HASH>, and the second element must have a
C<KeyType> of C<RANGE>.

For more information, see Working with Tables
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#WorkingWithTables.primary.key)
in the I<Amazon DynamoDB Developer Guide>.



=head2 LocalSecondaryIndexes => ArrayRef[L<Paws::DynamoDB::LocalSecondaryIndex>]

One or more local secondary indexes (the maximum is 5) to be created on
the table. Each index is scoped to a given partition key value. There
is a 10 GB size limit per partition key value; otherwise, the size of a
local secondary index is unconstrained.

Each local secondary index in the array includes the following:

=over

=item *

C<IndexName> - The name of the local secondary index. Must be unique
only for this table.

=item *

C<KeySchema> - Specifies the key schema for the local secondary index.
The key schema must begin with the same partition key as the table.

=item *

C<Projection> - Specifies attributes that are copied (projected) from
the table into the index. These are in addition to the primary key
attributes and index key attributes, which are automatically projected.
Each attribute specification is composed of:

=over

=item *

C<ProjectionType> - One of the following:

=over

=item *

C<KEYS_ONLY> - Only the index and primary keys are projected into the
index.

=item *

C<INCLUDE> - Only the specified table attributes are projected into the
index. The list of projected attributes is in C<NonKeyAttributes>.

=item *

C<ALL> - All of the table attributes are projected into the index.

=back

=item *

C<NonKeyAttributes> - A list of one or more non-key attribute names
that are projected into the secondary index. The total count of
attributes provided in C<NonKeyAttributes>, summed across all of the
secondary indexes, must not exceed 100. If you project the same
attribute into two different indexes, this counts as two distinct
attributes when determining the total. This limit only applies when you
specify the ProjectionType of C<INCLUDE>. You still can specify the
ProjectionType of C<ALL> to project all attributes from the source
table, even if the table has more than 100 attributes.

=back

=back




=head2 OnDemandThroughput => L<Paws::DynamoDB::OnDemandThroughput>

Sets the maximum number of read and write units for the specified table
in on-demand capacity mode. If you use this parameter, you must specify
C<MaxReadRequestUnits>, C<MaxWriteRequestUnits>, or both.



=head2 ProvisionedThroughput => L<Paws::DynamoDB::ProvisionedThroughput>

Represents the provisioned throughput settings for a specified table or
index. The settings can be modified using the C<UpdateTable> operation.

If you set BillingMode as C<PROVISIONED>, you must specify this
property. If you set BillingMode as C<PAY_PER_REQUEST>, you cannot
specify this property.

For current minimum and maximum provisioned throughput values, see
Service, Account, and Table Quotas
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html)
in the I<Amazon DynamoDB Developer Guide>.



=head2 ResourcePolicy => Str

An Amazon Web Services resource-based policy document in JSON format
that will be attached to the table.

When you attach a resource-based policy while creating a table, the
policy application is I<strongly consistent>.

The maximum size supported for a resource-based policy document is 20
KB. DynamoDB counts whitespaces when calculating the size of a policy
against this limit. For a full list of all considerations that apply
for resource-based policies, see Resource-based policy considerations
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/rbac-considerations.html).

You need to specify the C<CreateTable> and C<PutResourcePolicy> IAM
actions for authorizing a user to create a table with a resource-based
policy.



=head2 SSESpecification => L<Paws::DynamoDB::SSESpecification>

Represents the settings used to enable server-side encryption.



=head2 StreamSpecification => L<Paws::DynamoDB::StreamSpecification>

The settings for DynamoDB Streams on the table. These settings consist
of:

=over

=item *

C<StreamEnabled> - Indicates whether DynamoDB Streams is to be enabled
(true) or disabled (false).

=item *

C<StreamViewType> - When an item in the table is modified,
C<StreamViewType> determines what information is written to the table's
stream. Valid values for C<StreamViewType> are:

=over

=item *

C<KEYS_ONLY> - Only the key attributes of the modified item are written
to the stream.

=item *

C<NEW_IMAGE> - The entire item, as it appears after it was modified, is
written to the stream.

=item *

C<OLD_IMAGE> - The entire item, as it appeared before it was modified,
is written to the stream.

=item *

C<NEW_AND_OLD_IMAGES> - Both the new and the old item images of the
item are written to the stream.

=back

=back




=head2 TableClass => Str

The table class of the new table. Valid values are C<STANDARD> and
C<STANDARD_INFREQUENT_ACCESS>.

Valid values are: C<"STANDARD">, C<"STANDARD_INFREQUENT_ACCESS">

=head2 B<REQUIRED> TableName => Str

The name of the table to create. You can also provide the Amazon
Resource Name (ARN) of the table in this parameter.



=head2 Tags => ArrayRef[L<Paws::DynamoDB::Tag>]

A list of key-value pairs to label the table. For more information, see
Tagging for DynamoDB
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html).



=head2 WarmThroughput => L<Paws::DynamoDB::WarmThroughput>

Represents the warm throughput (in read units per second and write
units per second) for creating a table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTable in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

