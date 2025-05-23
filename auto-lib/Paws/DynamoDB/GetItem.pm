
package Paws::DynamoDB::GetItem;
  use Moose;
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ConsistentRead => (is => 'ro', isa => 'Bool');
  has ExpressionAttributeNames => (is => 'ro', isa => 'Paws::DynamoDB::ExpressionAttributeNameMap');
  has Key => (is => 'ro', isa => 'Paws::DynamoDB::Key', required => 1);
  has ProjectionExpression => (is => 'ro', isa => 'Str');
  has ReturnConsumedCapacity => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetItem');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::GetItemOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::GetItem - Arguments for method GetItem on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetItem on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method GetItem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetItem.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
# To read an item from a table
# This example retrieves an item from the Music table. The table has a partition
# key and a sort key (Artist and SongTitle), so you must specify both of these
# attributes.
    my $GetItemOutput = $dynamodb->GetItem(
      'Key' => {
        'Artist' => {
          'S' => 'Acme Band'
        },
        'SongTitle' => {
          'S' => 'Happy Day'
        }
      },
      'TableName' => 'Music'
    );

    # Results:
    my $Item = $GetItemOutput->Item;

    # Returns a L<Paws::DynamoDB::GetItemOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/GetItem>

=head1 ATTRIBUTES


=head2 AttributesToGet => ArrayRef[Str|Undef]

This is a legacy parameter. Use C<ProjectionExpression> instead. For
more information, see AttributesToGet
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html)
in the I<Amazon DynamoDB Developer Guide>.



=head2 ConsistentRead => Bool

Determines the read consistency model: If set to C<true>, then the
operation uses strongly consistent reads; otherwise, the operation uses
eventually consistent reads.



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



=head2 B<REQUIRED> Key => L<Paws::DynamoDB::Key>

A map of attribute names to C<AttributeValue> objects, representing the
primary key of the item to retrieve.

For the primary key, you must provide all of the attributes. For
example, with a simple primary key, you only need to provide a value
for the partition key. For a composite primary key, you must provide
values for both the partition key and the sort key.



=head2 ProjectionExpression => Str

A string that identifies one or more attributes to retrieve from the
table. These attributes can include scalars, sets, or elements of a
JSON document. The attributes in the expression must be separated by
commas.

If no attribute names are specified, then all attributes are returned.
If any of the requested attributes are not found, they do not appear in
the result.

For more information, see Specifying Item Attributes
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html)
in the I<Amazon DynamoDB Developer Guide>.



=head2 ReturnConsumedCapacity => Str



Valid values are: C<"INDEXES">, C<"TOTAL">, C<"NONE">

=head2 B<REQUIRED> TableName => Str

The name of the table containing the requested item. You can also
provide the Amazon Resource Name (ARN) of the table in this parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetItem in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

