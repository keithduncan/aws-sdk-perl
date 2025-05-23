
package Paws::Glue::SearchTables;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Glue::PropertyPredicate]');
  has IncludeStatusDetails => (is => 'ro', isa => 'Bool');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceShareType => (is => 'ro', isa => 'Str');
  has SearchText => (is => 'ro', isa => 'Str');
  has SortCriteria => (is => 'ro', isa => 'ArrayRef[Paws::Glue::SortCriterion]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchTables');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::SearchTablesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::SearchTables - Arguments for method SearchTables on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchTables on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method SearchTables.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchTables.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $SearchTablesResponse = $glue->SearchTables(
      CatalogId => 'MyCatalogIdString',    # OPTIONAL
      Filters   => [
        {
          Comparator => 'EQUALS'
          , # values: EQUALS, GREATER_THAN, LESS_THAN, GREATER_THAN_EQUALS, LESS_THAN_EQUALS; OPTIONAL
          Key   => 'MyValueString',    # min: 1, max: 1024; OPTIONAL
          Value => 'MyValueString',    # min: 1, max: 1024; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      IncludeStatusDetails => 1,                  # OPTIONAL
      MaxResults           => 1,                  # OPTIONAL
      NextToken            => 'MyToken',          # OPTIONAL
      ResourceShareType    => 'FOREIGN',          # OPTIONAL
      SearchText           => 'MyValueString',    # OPTIONAL
      SortCriteria         => [
        {
          FieldName => 'MyValueString',    # min: 1, max: 1024; OPTIONAL
          Sort      => 'ASC',              # values: ASC, DESC; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $NextToken = $SearchTablesResponse->NextToken;
    my $TableList = $SearchTablesResponse->TableList;

    # Returns a L<Paws::Glue::SearchTablesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/SearchTables>

=head1 ATTRIBUTES


=head2 CatalogId => Str

A unique identifier, consisting of C< I<account_id> >.



=head2 Filters => ArrayRef[L<Paws::Glue::PropertyPredicate>]

A list of key-value pairs, and a comparator used to filter the search
results. Returns all entities matching the predicate.

The C<Comparator> member of the C<PropertyPredicate> struct is used
only for time fields, and can be omitted for other field types. Also,
when comparing string values, such as when C<Key=Name>, a fuzzy match
algorithm is used. The C<Key> field (for example, the value of the
C<Name> field) is split on certain punctuation characters, for example,
-, :, #, etc. into tokens. Then each token is exact-match compared with
the C<Value> member of C<PropertyPredicate>. For example, if
C<Key=Name> and C<Value=link>, tables named C<customer-link> and
C<xx-link-yy> are returned, but C<xxlinkyy> is not returned.



=head2 IncludeStatusDetails => Bool

Specifies whether to include status details related to a request to
create or update an Glue Data Catalog view.



=head2 MaxResults => Int

The maximum number of tables to return in a single response.



=head2 NextToken => Str

A continuation token, included if this is a continuation call.



=head2 ResourceShareType => Str

Allows you to specify that you want to search the tables shared with
your account. The allowable values are C<FOREIGN> or C<ALL>.

=over

=item *

If set to C<FOREIGN>, will search the tables shared with your account.

=item *

If set to C<ALL>, will search the tables shared with your account, as
well as the tables in yor local account.

=back


Valid values are: C<"FOREIGN">, C<"ALL">, C<"FEDERATED">

=head2 SearchText => Str

A string used for a text search.

Specifying a value in quotes filters based on an exact match to the
value.



=head2 SortCriteria => ArrayRef[L<Paws::Glue::SortCriterion>]

A list of criteria for sorting the results by a field name, in an
ascending or descending order.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchTables in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

