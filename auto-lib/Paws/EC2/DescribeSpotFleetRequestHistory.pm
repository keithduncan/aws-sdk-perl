
package Paws::EC2::DescribeSpotFleetRequestHistory;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has EventType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventType' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SpotFleetRequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spotFleetRequestId' , required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSpotFleetRequestHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeSpotFleetRequestHistoryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSpotFleetRequestHistory - Arguments for method DescribeSpotFleetRequestHistory on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSpotFleetRequestHistory on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeSpotFleetRequestHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSpotFleetRequestHistory.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
 # To describe Spot fleet history
 # This example returns the history for the specified Spot fleet starting at the
 # specified time.
    my $DescribeSpotFleetRequestHistoryResponse =
      $ec2->DescribeSpotFleetRequestHistory(
      'SpotFleetRequestId' => 'sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE',
      'StartTime'          => '2015-05-26T00:00:00Z'
      );

    # Results:
    my $HistoryRecords =
      $DescribeSpotFleetRequestHistoryResponse->HistoryRecords;
    my $NextToken = $DescribeSpotFleetRequestHistoryResponse->NextToken;
    my $SpotFleetRequestId =
      $DescribeSpotFleetRequestHistoryResponse->SpotFleetRequestId;
    my $StartTime = $DescribeSpotFleetRequestHistoryResponse->StartTime;

    # Returns a L<Paws::EC2::DescribeSpotFleetRequestHistoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeSpotFleetRequestHistory>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EventType => Str

The type of events to describe. By default, all events are described.

Valid values are: C<"instanceChange">, C<"fleetRequestChange">, C<"error">, C<"information">

=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NextToken => Str

The token to include in another request to get the next page of items.
This value is C<null> when there are no more items to return.



=head2 B<REQUIRED> SpotFleetRequestId => Str

The ID of the Spot Fleet request.



=head2 B<REQUIRED> StartTime => Str

The starting date and time for the events, in UTC format (for example,
I<YYYY>-I<MM>-I<DD>TI<HH>:I<MM>:I<SS>Z).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSpotFleetRequestHistory in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

