
package Paws::PerformanceInsights::DescribeDimensionKeysResponse;
  use Moose;
  has AlignedEndTime => (is => 'ro', isa => 'Str');
  has AlignedStartTime => (is => 'ro', isa => 'Str');
  has Keys => (is => 'ro', isa => 'ArrayRef[Paws::PerformanceInsights::DimensionKeyDescription]');
  has NextToken => (is => 'ro', isa => 'Str');
  has PartitionKeys => (is => 'ro', isa => 'ArrayRef[Paws::PerformanceInsights::ResponsePartitionKey]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::DescribeDimensionKeysResponse

=head1 ATTRIBUTES


=head2 AlignedEndTime => Str

The end time for the returned dimension keys, after alignment to a
granular boundary (as specified by C<PeriodInSeconds>).
C<AlignedEndTime> will be greater than or equal to the value of the
user-specified C<Endtime>.


=head2 AlignedStartTime => Str

The start time for the returned dimension keys, after alignment to a
granular boundary (as specified by C<PeriodInSeconds>).
C<AlignedStartTime> will be less than or equal to the value of the
user-specified C<StartTime>.


=head2 Keys => ArrayRef[L<Paws::PerformanceInsights::DimensionKeyDescription>]

The dimension keys that were requested.


=head2 NextToken => Str

A pagination token that indicates the response didnE<rsquo>t return all
available records because C<MaxRecords> was specified in the previous
request. To get the remaining records, specify C<NextToken> in a
separate request with this value.


=head2 PartitionKeys => ArrayRef[L<Paws::PerformanceInsights::ResponsePartitionKey>]

If C<PartitionBy> was present in the request, C<PartitionKeys> contains
the breakdown of dimension keys by the specified partitions.


=head2 _request_id => Str


=cut

1;