
package Paws::EC2::DescribeVolumeStatus;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has VolumeIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'VolumeId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVolumeStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeVolumeStatusResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVolumeStatus - Arguments for method DescribeVolumeStatus on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVolumeStatus on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeVolumeStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVolumeStatus.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
   # To describe the status of a single volume
   # This example describes the status for the volume ``vol-1234567890abcdef0``.
    my $DescribeVolumeStatusResult =
      $ec2->DescribeVolumeStatus( 'VolumeIds' => ['vol-1234567890abcdef0'] );

    # Results:
    my $VolumeStatuses = $DescribeVolumeStatusResult->VolumeStatuses;

  # Returns a L<Paws::EC2::DescribeVolumeStatusResult> object.
  # To describe the status of impaired volumes
  # This example describes the status for all volumes that are impaired. In this
  # example output, there are no impaired volumes.
    my $DescribeVolumeStatusResult = $ec2->DescribeVolumeStatus(
      'Filters' => [

        {
          'Name'   => 'volume-status.status',
          'Values' => ['impaired']
        }
      ]
    );

    # Results:
    my $VolumeStatuses = $DescribeVolumeStatusResult->VolumeStatuses;

    # Returns a L<Paws::EC2::DescribeVolumeStatusResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeVolumeStatus>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

The filters.

=over

=item *

C<action.code> - The action code for the event (for example,
C<enable-volume-io>).

=item *

C<action.description> - A description of the action.

=item *

C<action.event-id> - The event ID associated with the action.

=item *

C<availability-zone> - The Availability Zone of the instance.

=item *

C<event.description> - A description of the event.

=item *

C<event.event-id> - The event ID.

=item *

C<event.event-type> - The event type (for C<io-enabled>: C<passed> |
C<failed>; for C<io-performance>: C<io-performance:degraded> |
C<io-performance:severely-degraded> | C<io-performance:stalled>).

=item *

C<event.not-after> - The latest end time for the event.

=item *

C<event.not-before> - The earliest start time for the event.

=item *

C<volume-status.details-name> - The cause for C<volume-status.status>
(C<io-enabled> | C<io-performance>).

=item *

C<volume-status.details-status> - The status of
C<volume-status.details-name> (for C<io-enabled>: C<passed> |
C<failed>; for C<io-performance>: C<normal> | C<degraded> |
C<severely-degraded> | C<stalled>).

=item *

C<volume-status.status> - The status of the volume (C<ok> | C<impaired>
| C<warning> | C<insufficient-data>).

=back




=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.



=head2 VolumeIds => ArrayRef[Str|Undef]

The IDs of the volumes.

Default: Describes all your volumes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVolumeStatus in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

