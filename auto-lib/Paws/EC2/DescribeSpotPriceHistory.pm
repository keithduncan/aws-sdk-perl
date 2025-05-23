
package Paws::EC2::DescribeSpotPriceHistory;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZone' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has InstanceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'InstanceType' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ProductDescriptions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ProductDescription' );
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSpotPriceHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeSpotPriceHistoryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSpotPriceHistory - Arguments for method DescribeSpotPriceHistory on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSpotPriceHistory on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeSpotPriceHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSpotPriceHistory.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
 # To describe Spot price history for Linux/UNIX (Amazon VPC)
 # This example returns the Spot Price history for m1.xlarge, Linux/UNIX (Amazon
 # VPC) instances for a particular day in January.
    my $DescribeSpotPriceHistoryResult = $ec2->DescribeSpotPriceHistory(
      'EndTime'             => '2014-01-06T08:09:10',
      'InstanceTypes'       => ['m1.xlarge'],
      'ProductDescriptions' => ['Linux/UNIX (Amazon VPC)'],
      'StartTime'           => '2014-01-06T07:08:09'
    );

    # Results:
    my $SpotPriceHistory = $DescribeSpotPriceHistoryResult->SpotPriceHistory;

    # Returns a L<Paws::EC2::DescribeSpotPriceHistoryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeSpotPriceHistory>

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

Filters the results by the specified Availability Zone.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EndTime => Str

The date and time, up to the current date, from which to stop
retrieving the price history data, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z).



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

The filters.

=over

=item *

C<availability-zone> - The Availability Zone for which prices should be
returned.

=item *

C<instance-type> - The type of instance (for example, C<m3.medium>).

=item *

C<product-description> - The product description for the Spot price
(C<Linux/UNIX> | C<Red Hat Enterprise Linux> | C<SUSE Linux> |
C<Windows> | C<Linux/UNIX (Amazon VPC)> | C<Red Hat Enterprise Linux
(Amazon VPC)> | C<SUSE Linux (Amazon VPC)> | C<Windows (Amazon VPC)>).

=item *

C<spot-price> - The Spot price. The value must match exactly (or use
wildcards; greater than or less than comparison is not supported).

=item *

C<timestamp> - The time stamp of the Spot price history, in UTC format
(for example, I<ddd MMM dd HH>:I<mm>:I<ss> UTC I<YYYY>). You can use
wildcards (C<*> and C<?>). Greater than or less than comparison is not
supported.

=back




=head2 InstanceTypes => ArrayRef[Str|Undef]

Filters the results by the specified instance types.



=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.



=head2 ProductDescriptions => ArrayRef[Str|Undef]

Filters the results by the specified basic product descriptions.



=head2 StartTime => Str

The date and time, up to the past 90 days, from which to start
retrieving the price history data, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSpotPriceHistory in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

