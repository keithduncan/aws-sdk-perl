
package Paws::DynamoDB::DeleteItem;
  use Moose;
  has ConditionalOperator => (is => 'ro', isa => 'Str');
  has ConditionExpression => (is => 'ro', isa => 'Str');
  has Expected => (is => 'ro', isa => 'Paws::DynamoDB::ExpectedAttributeMap');
  has ExpressionAttributeNames => (is => 'ro', isa => 'Paws::DynamoDB::ExpressionAttributeNameMap');
  has ExpressionAttributeValues => (is => 'ro', isa => 'Paws::DynamoDB::ExpressionAttributeValueMap');
  has Key => (is => 'ro', isa => 'Paws::DynamoDB::Key', required => 1);
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has ReturnItemCollectionMetrics => (is => 'ro', isa => 'Str');
  has ReturnValues => (is => 'ro', isa => 'Str');
  has ReturnValuesOnConditionCheckFailure => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteItem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::DeleteItemOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DeleteItem - Arguments for method DeleteItem on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteItem on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method DeleteItem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteItem.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    # To delete an item
    # This example deletes an item from the Music table.
    my $DeleteItemOutput = $dynamodb->DeleteItem(
      'Key' => {
        'Artist' => {
          'S' => 'No One You Know'
        },
        'SongTitle' => {
          'S' => 'Scared of My Shadow'
        }
      },
      'TableName' => 'Music'
    );

    # Results:
    my $ConsumedCapacity = $DeleteItemOutput->ConsumedCapacity;

    # Returns a L<Paws::DynamoDB::DeleteItemOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/DeleteItem>

=head1 ATTRIBUTES


=head2 ConditionalOperator => Str

This is a legacy parameter. Use C<ConditionExpression> instead. For
more information, see ConditionalOperator
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html)
in the I<Amazon DynamoDB Developer Guide>.

Valid values are: C<"AND">, C<"OR">

=head2 ConditionExpression => Str

A condition that must be satisfied in order for a conditional
C<DeleteItem> to succeed.

An expression can contain any of the following:

=over

=item *

Functions: C<attribute_exists | attribute_not_exists | attribute_type |
contains | begins_with | size>

These function names are case-sensitive.

=item *

Comparison operators: C<= | E<lt>E<gt> | E<lt> | E<gt> | E<lt>= |
E<gt>= | BETWEEN | IN>

=item *

Logical operators: C<AND | OR | NOT>

=back

For more information about condition expressions, see Condition
Expressions
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html)
in the I<Amazon DynamoDB Developer Guide>.



=head2 Expected => L<Paws::DynamoDB::ExpectedAttributeMap>

This is a legacy parameter. Use C<ConditionExpression> instead. For
more information, see Expected
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html)
in the I<Amazon DynamoDB Developer Guide>.



=head2 ExpressionAttributeNames => L<Paws::DynamoDB::ExpressionAttributeNameMap>

One or more substitution tokens for attribute names in an expression.
The following are some use cases for using C<ExpressionAttributeNames>:

=over

=item *

To access an attribute whose name conflicts with a DynamoDB reserved
word.

=item *

To create a placeholder for repeating occurrences of an attribute name
in an expression.

=item *

To prevent special characters in an attribute name from being
misinterpreted in an expression.

=back

Use the B<#> character in an expression to dereference an attribute
name. For example, consider the following attribute name:

=over

=item *

C<Percentile>

=back

The name of this attribute conflicts with a reserved word, so it cannot
be used directly in an expression. (For the complete list of reserved
words, see Reserved Words
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html)
in the I<Amazon DynamoDB Developer Guide>). To work around this, you
could specify the following for C<ExpressionAttributeNames>:

=over

=item *

C<{"#P":"Percentile"}>

=back

You could then use this substitution in an expression, as in this
example:

=over

=item *

C<#P = :val>

=back

Tokens that begin with the B<:> character are I<expression attribute
values>, which are placeholders for the actual value at runtime.

For more information on expression attribute names, see Specifying Item
Attributes
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html)
in the I<Amazon DynamoDB Developer Guide>.



=head2 ExpressionAttributeValues => L<Paws::DynamoDB::ExpressionAttributeValueMap>

One or more values that can be substituted in an expression.

Use the B<:> (colon) character in an expression to dereference an
attribute value. For example, suppose that you wanted to check whether
the value of the I<ProductStatus> attribute was one of the following:

C<Available | Backordered | Discontinued>

You would first need to specify C<ExpressionAttributeValues> as
follows:

C<{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
":disc":{"S":"Discontinued"} }>

You could then use these values in an expression, such as this:

C<ProductStatus IN (:avail, :back, :disc)>

For more information on expression attribute values, see Condition
Expressions
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html)
in the I<Amazon DynamoDB Developer Guide>.



=head2 B<REQUIRED> Key => L<Paws::DynamoDB::Key>

A map of attribute names to C<AttributeValue> objects, representing the
primary key of the item to delete.

For the primary key, you must provide all of the key attributes. For
example, with a simple primary key, you only need to provide a value
for the partition key. For a composite primary key, you must provide
values for both the partition key and the sort key.



=head2 ReturnConsumedCapacity => Str



Valid values are: C<"INDEXES">, C<"TOTAL">, C<"NONE">

=head2 ReturnItemCollectionMetrics => Str

Determines whether item collection metrics are returned. If set to
C<SIZE>, the response includes statistics about item collections, if
any, that were modified during the operation are returned in the
response. If set to C<NONE> (the default), no statistics are returned.

Valid values are: C<"SIZE">, C<"NONE">

=head2 ReturnValues => Str

Use C<ReturnValues> if you want to get the item attributes as they
appeared before they were deleted. For C<DeleteItem>, the valid values
are:

=over

=item *

C<NONE> - If C<ReturnValues> is not specified, or if its value is
C<NONE>, then nothing is returned. (This setting is the default for
C<ReturnValues>.)

=item *

C<ALL_OLD> - The content of the old item is returned.

=back

There is no additional cost associated with requesting a return value
aside from the small network and processing overhead of receiving a
larger response. No read capacity units are consumed.

The C<ReturnValues> parameter is used by several DynamoDB operations;
however, C<DeleteItem> does not recognize any values other than C<NONE>
or C<ALL_OLD>.

Valid values are: C<"NONE">, C<"ALL_OLD">, C<"UPDATED_OLD">, C<"ALL_NEW">, C<"UPDATED_NEW">

=head2 ReturnValuesOnConditionCheckFailure => Str

An optional parameter that returns the item attributes for a
C<DeleteItem> operation that failed a condition check.

There is no additional cost associated with requesting a return value
aside from the small network and processing overhead of receiving a
larger response. No read capacity units are consumed.

Valid values are: C<"ALL_OLD">, C<"NONE">

=head2 B<REQUIRED> TableName => Str

The name of the table from which to delete the item. You can also
provide the Amazon Resource Name (ARN) of the table in this parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteItem in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

