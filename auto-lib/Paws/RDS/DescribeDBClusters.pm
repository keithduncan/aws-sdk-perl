
package Paws::RDS::DescribeDBClusters;
  use Moose;
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Filter]');
  has IncludeShared => (is => 'ro', isa => 'Bool');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDBClusters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DBClusterMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDBClustersResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeDBClusters - Arguments for method DescribeDBClusters on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDBClusters on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DescribeDBClusters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDBClusters.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To list DB clusters
    # This example lists settings for the specified DB cluster.
    my $DBClusterMessage =
      $rds->DescribeDBClusters( 'DBClusterIdentifier' => 'mynewdbcluster' );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DescribeDBClusters>

=head1 ATTRIBUTES


=head2 DBClusterIdentifier => Str

The user-supplied DB cluster identifier or the Amazon Resource Name
(ARN) of the DB cluster. If this parameter is specified, information
for only the specific DB cluster is returned. This parameter isn't
case-sensitive.

Constraints:

=over

=item *

If supplied, must match an existing DB cluster identifier.

=back




=head2 Filters => ArrayRef[L<Paws::RDS::Filter>]

A filter that specifies one or more DB clusters to describe.

Supported Filters:

=over

=item *

C<clone-group-id> - Accepts clone group identifiers. The results list
only includes information about the DB clusters associated with these
clone groups.

=item *

C<db-cluster-id> - Accepts DB cluster identifiers and DB cluster Amazon
Resource Names (ARNs). The results list only includes information about
the DB clusters identified by these ARNs.

=item *

C<db-cluster-resource-id> - Accepts DB cluster resource identifiers.
The results list will only include information about the DB clusters
identified by these DB cluster resource identifiers.

=item *

C<domain> - Accepts Active Directory directory IDs. The results list
only includes information about the DB clusters associated with these
domains.

=item *

C<engine> - Accepts engine names. The results list only includes
information about the DB clusters for these engines.

=back




=head2 IncludeShared => Bool

Specifies whether the output includes information about clusters shared
from other Amazon Web Services accounts.



=head2 Marker => Str

An optional pagination token provided by a previous
C<DescribeDBClusters> request. If this parameter is specified, the
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

This class forms part of L<Paws>, documenting arguments for method DescribeDBClusters in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

