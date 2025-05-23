
package Paws::EC2::SearchLocalGatewayRoutes;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has LocalGatewayRouteTableId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchLocalGatewayRoutes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::SearchLocalGatewayRoutesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SearchLocalGatewayRoutes - Arguments for method SearchLocalGatewayRoutes on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchLocalGatewayRoutes on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method SearchLocalGatewayRoutes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchLocalGatewayRoutes.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $SearchLocalGatewayRoutesResult = $ec2->SearchLocalGatewayRoutes(
      LocalGatewayRouteTableId => 'MyLocalGatewayRoutetableId',
      DryRun                   => 1,                              # OPTIONAL
      Filters                  => [
        {
          Name   => 'MyString',                                   # OPTIONAL
          Values => [
            'MyString', ...                                       # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $SearchLocalGatewayRoutesResult->NextToken;
    my $Routes    = $SearchLocalGatewayRoutesResult->Routes;

    # Returns a L<Paws::EC2::SearchLocalGatewayRoutesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/SearchLocalGatewayRoutes>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<prefix-list-id> - The ID of the prefix list.

=item *

C<route-search.exact-match> - The exact match of the specified filter.

=item *

C<route-search.longest-prefix-match> - The longest prefix that matches
the route.

=item *

C<route-search.subnet-of-match> - The routes with a subnet that match
the specified CIDR filter.

=item *

C<route-search.supernet-of-match> - The routes with a CIDR that
encompass the CIDR filter. For example, if you have 10.0.1.0/29 and
10.0.1.0/31 routes in your route table and you specify
C<supernet-of-match> as 10.0.1.0/30, then the result returns
10.0.1.0/29.

=item *

C<state> - The state of the route.

=item *

C<type> - The route type.

=back




=head2 B<REQUIRED> LocalGatewayRouteTableId => Str

The ID of the local gateway route table.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchLocalGatewayRoutes in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

