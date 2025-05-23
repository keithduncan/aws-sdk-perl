
package Paws::PerformanceInsights::DescribeDimensionKeys;
  use Moose;
  has AdditionalMetrics => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has Filter => (is => 'ro', isa => 'Paws::PerformanceInsights::MetricQueryFilterMap');
  has GroupBy => (is => 'ro', isa => 'Paws::PerformanceInsights::DimensionGroup', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has Metric => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has PartitionBy => (is => 'ro', isa => 'Paws::PerformanceInsights::DimensionGroup');
  has PeriodInSeconds => (is => 'ro', isa => 'Int');
  has ServiceType => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDimensionKeys');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PerformanceInsights::DescribeDimensionKeysResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::DescribeDimensionKeys - Arguments for method DescribeDimensionKeys on L<Paws::PerformanceInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDimensionKeys on the
L<AWS Performance Insights|Paws::PerformanceInsights> service. Use the attributes of this class
as arguments to method DescribeDimensionKeys.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDimensionKeys.

=head1 SYNOPSIS

    my $pi = Paws->service('PerformanceInsights');
    my $DescribeDimensionKeysResponse = $pi->DescribeDimensionKeys(
      EndTime => '1970-01-01T01:00:00',
      GroupBy => {
        Group      => 'MySanitizedString',    # max: 256
        Dimensions => [
          'MySanitizedString', ...            # max: 256
        ],    # min: 1, max: 10; OPTIONAL
        Limit => 1,    # min: 1, max: 25; OPTIONAL
      },
      Identifier        => 'MyIdentifierString',
      Metric            => 'MyRequestString',
      ServiceType       => 'RDS',
      StartTime         => '1970-01-01T01:00:00',
      AdditionalMetrics => [
        'MySanitizedString', ...    # max: 256
      ],    # OPTIONAL
      Filter => {
        'MySanitizedString' =>
          'MyRequestString',    # key: max: 256, value: max: 256
      },    # OPTIONAL
      MaxResults  => 1,                # OPTIONAL
      NextToken   => 'MyNextToken',    # OPTIONAL
      PartitionBy => {
        Group      => 'MySanitizedString',    # max: 256
        Dimensions => [
          'MySanitizedString', ...            # max: 256
        ],    # min: 1, max: 10; OPTIONAL
        Limit => 1,    # min: 1, max: 25; OPTIONAL
      },    # OPTIONAL
      PeriodInSeconds => 1,    # OPTIONAL
    );

    # Results:
    my $AlignedEndTime   = $DescribeDimensionKeysResponse->AlignedEndTime;
    my $AlignedStartTime = $DescribeDimensionKeysResponse->AlignedStartTime;
    my $Keys             = $DescribeDimensionKeysResponse->Keys;
    my $NextToken        = $DescribeDimensionKeysResponse->NextToken;
    my $PartitionKeys    = $DescribeDimensionKeysResponse->PartitionKeys;

 # Returns a L<Paws::PerformanceInsights::DescribeDimensionKeysResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pi/DescribeDimensionKeys>

=head1 ATTRIBUTES


=head2 AdditionalMetrics => ArrayRef[Str|Undef]

Additional metrics for the top C<N> dimension keys. If the specified
dimension group in the C<GroupBy> parameter is C<db.sql_tokenized>, you
can specify per-SQL metrics to get the values for the top C<N> SQL
digests. The response syntax is as follows: C<"AdditionalMetrics" : {
"I<string>" : "I<string>" }>.

The only supported statistic function is C<.avg>.



=head2 B<REQUIRED> EndTime => Str

The date and time specifying the end of the requested time series data.
The value specified is I<exclusive>, which means that data points less
than (but not equal to) C<EndTime> are returned.

The value for C<EndTime> must be later than the value for C<StartTime>.



=head2 Filter => L<Paws::PerformanceInsights::MetricQueryFilterMap>

One or more filters to apply in the request. Restrictions:

=over

=item *

Any number of filters by the same dimension, as specified in the
C<GroupBy> or C<Partition> parameters.

=item *

A single filter for any other dimension in this dimension group.

=back

The C<db.sql.db_id> filter isn't available for RDS for SQL Server DB
instances.



=head2 B<REQUIRED> GroupBy => L<Paws::PerformanceInsights::DimensionGroup>

A specification for how to aggregate the data points from a query
result. You must specify a valid dimension group. Performance Insights
returns all dimensions within this group, unless you provide the names
of specific dimensions within this group. You can also request that
Performance Insights return a limited number of values for a dimension.



=head2 B<REQUIRED> Identifier => Str

An immutable, Amazon Web Services Region-unique identifier for a data
source. Performance Insights gathers metrics from this data source.

To use an Amazon RDS instance as a data source, you specify its
C<DbiResourceId> value. For example, specify
C<db-FAIHNTYBKTGAUSUZQYPDS2GW4A>.



=head2 MaxResults => Int

The maximum number of items to return in the response. If more items
exist than the specified C<MaxRecords> value, a pagination token is
included in the response so that the remaining results can be
retrieved.



=head2 B<REQUIRED> Metric => Str

The name of a Performance Insights metric to be measured.

Valid values for C<Metric> are:

=over

=item *

C<db.load.avg> - A scaled representation of the number of active
sessions for the database engine.

=item *

C<db.sampledload.avg> - The raw number of active sessions for the
database engine.

=back

If the number of active sessions is less than an internal Performance
Insights threshold, C<db.load.avg> and C<db.sampledload.avg> are the
same value. If the number of active sessions is greater than the
internal threshold, Performance Insights samples the active sessions,
with C<db.load.avg> showing the scaled values, C<db.sampledload.avg>
showing the raw values, and C<db.sampledload.avg> less than
C<db.load.avg>. For most use cases, you can query C<db.load.avg> only.



=head2 NextToken => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
token, up to the value specified by C<MaxRecords>.



=head2 PartitionBy => L<Paws::PerformanceInsights::DimensionGroup>

For each dimension specified in C<GroupBy>, specify a secondary
dimension to further subdivide the partition keys in the response.



=head2 PeriodInSeconds => Int

The granularity, in seconds, of the data points returned from
Performance Insights. A period can be as short as one second, or as
long as one day (86400 seconds). Valid values are:

=over

=item *

C<1> (one second)

=item *

C<60> (one minute)

=item *

C<300> (five minutes)

=item *

C<3600> (one hour)

=item *

C<86400> (twenty-four hours)

=back

If you don't specify C<PeriodInSeconds>, then Performance Insights
chooses a value for you, with a goal of returning roughly 100-200 data
points in the response.



=head2 B<REQUIRED> ServiceType => Str

The Amazon Web Services service for which Performance Insights will
return metrics. Valid values are as follows:

=over

=item *

C<RDS>

=item *

C<DOCDB>

=back


Valid values are: C<"RDS">, C<"DOCDB">

=head2 B<REQUIRED> StartTime => Str

The date and time specifying the beginning of the requested time series
data. You must specify a C<StartTime> within the past 7 days. The value
specified is I<inclusive>, which means that data points equal to or
greater than C<StartTime> are returned.

The value for C<StartTime> must be earlier than the value for
C<EndTime>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDimensionKeys in L<Paws::PerformanceInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

