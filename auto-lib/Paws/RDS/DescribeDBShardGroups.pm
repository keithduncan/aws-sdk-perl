
package Paws::RDS::DescribeDBShardGroups;
  use Moose;
  has DBShardGroupIdentifier => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBShardGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DescribeDBShardGroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBShardGroupsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBShardGroups - Arguments for method DescribeDBShardGroups on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBShardGroups on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeDBShardGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBShardGroups.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DescribeDBShardGroupsResponse = $rds->DescribeDBShardGroups(
      DBShardGroupIdentifier => 'MyDBShardGroupIdentifier',    # OPTIONAL
      Filters                => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],                                                       # OPTIONAL
      Marker     => 'MyString',                                # OPTIONAL
      MaxRecords => 1,                                         # OPTIONAL
    );

    # Results:
    my $DBShardGroups = $DescribeDBShardGroupsResponse->DBShardGroups;
    my $Marker        = $DescribeDBShardGroupsResponse->Marker;

    # Returns a L<Paws::RDS::DescribeDBShardGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBShardGroups>

=head1 ATTRIBUTES


=head2 DBShardGroupIdentifier => Str

The user-supplied DB shard group identifier. If this parameter is
specified, information for only the specific DB shard group is
returned. This parameter isn't case-sensitive.

Constraints:

=over

=item *

If supplied, must match an existing DB shard group identifier.

=back




=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

A filter that specifies one or more DB shard groups to describe.



=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeDBShardGroups> request. If this parameter is specified, the
response includes only records beyond the marker, up to the value
specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so you can retrieve
the remaining results.

Default: 100

Constraints: Minimum 20, maximum 100




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDBShardGroups in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

