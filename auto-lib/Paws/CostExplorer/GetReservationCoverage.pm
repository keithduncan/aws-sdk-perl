
package Paws::CostExplorer::GetReservationCoverage;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::CostExplorer::Expression');
  has Granularity => (is => 'ro', isa => 'Str');
  has GroupBy => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::GroupDefinition]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has Metrics => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextPageToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Paws::CostExplorer::SortDefinition');
  has TimePeriod => (is => 'ro', isa => 'Paws::CostExplorer::DateInterval', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReservationCoverage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::GetReservationCoverageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetReservationCoverage - Arguments for method GetReservationCoverage on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReservationCoverage on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method GetReservationCoverage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReservationCoverage.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $GetReservationCoverageResponse = $ce->GetReservationCoverage(
      TimePeriod => {
        End   => 'MyYearMonthDay',    # max: 40
        Start => 'MyYearMonthDay',    # max: 40

      },
      Filter => {
        And            => [ <Expression>, ... ],    # OPTIONAL
        CostCategories => {
          Key          => 'MyCostCategoryName',     # min: 1, max: 50; OPTIONAL
          MatchOptions => [
            'EQUALS',
            ... # values: EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
          ],    # OPTIONAL
          Values => [
            'MyValue', ...    # max: 1024
          ],    # OPTIONAL
        },    # OPTIONAL
        Dimensions => {
          Key => 'AZ'
          , # values: AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE, INVOICING_ENTITY, ANOMALY_TOTAL_IMPACT_ABSOLUTE, ANOMALY_TOTAL_IMPACT_PERCENTAGE; OPTIONAL
          MatchOptions => [
            'EQUALS',
            ... # values: EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
          ],    # OPTIONAL
          Values => [
            'MyValue', ...    # max: 1024
          ],    # OPTIONAL
        },    # OPTIONAL
        Not  => <Expression>,
        Or   => [ <Expression>, ... ],    # OPTIONAL
        Tags => {
          Key          => 'MyTagKey',     # max: 1024; OPTIONAL
          MatchOptions => [
            'EQUALS',
            ... # values: EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE, GREATER_THAN_OR_EQUAL
          ],    # OPTIONAL
          Values => [
            'MyValue', ...    # max: 1024
          ],    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Granularity => 'DAILY',    # OPTIONAL
      GroupBy     => [
        {
          Key  => 'MyGroupDefinitionKey',    # max: 1024; OPTIONAL
          Type => 'DIMENSION', # values: DIMENSION, TAG, COST_CATEGORY; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,    # OPTIONAL
      Metrics    => [
        'MyMetricName', ...    # max: 1024
      ],    # OPTIONAL
      NextPageToken => 'MyNextPageToken',    # OPTIONAL
      SortBy        => {
        Key       => 'MySortDefinitionKey',    # max: 1024
        SortOrder => 'ASCENDING',    # values: ASCENDING, DESCENDING; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $CoveragesByTime = $GetReservationCoverageResponse->CoveragesByTime;
    my $NextPageToken   = $GetReservationCoverageResponse->NextPageToken;
    my $Total           = $GetReservationCoverageResponse->Total;

    # Returns a L<Paws::CostExplorer::GetReservationCoverageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/GetReservationCoverage>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::CostExplorer::Expression>

Filters utilization data by dimensions. You can filter by the following
dimensions:

=over

=item *

AZ

=item *

CACHE_ENGINE

=item *

DATABASE_ENGINE

=item *

DEPLOYMENT_OPTION

=item *

INSTANCE_TYPE

=item *

LINKED_ACCOUNT

=item *

OPERATING_SYSTEM

=item *

PLATFORM

=item *

REGION

=item *

SERVICE

=item *

TAG

=item *

TENANCY

=back

C<GetReservationCoverage> uses the same Expression
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html)
object as the other operations, but only C<AND> is supported among each
dimension. You can nest only one level deep. If there are multiple
values for a dimension, they are OR'd together.

If you don't provide a C<SERVICE> filter, Cost Explorer defaults to
EC2.

Cost category is also supported.



=head2 Granularity => Str

The granularity of the Amazon Web Services cost data for the
reservation. Valid values are C<MONTHLY> and C<DAILY>.

If C<GroupBy> is set, C<Granularity> can't be set. If C<Granularity>
isn't set, the response object doesn't include C<Granularity>, either
C<MONTHLY> or C<DAILY>.

The C<GetReservationCoverage> operation supports only C<DAILY> and
C<MONTHLY> granularities.

Valid values are: C<"DAILY">, C<"MONTHLY">, C<"HOURLY">

=head2 GroupBy => ArrayRef[L<Paws::CostExplorer::GroupDefinition>]

You can group the data by the following attributes:

=over

=item *

AZ

=item *

CACHE_ENGINE

=item *

DATABASE_ENGINE

=item *

DEPLOYMENT_OPTION

=item *

INSTANCE_TYPE

=item *

INVOICING_ENTITY

=item *

LINKED_ACCOUNT

=item *

OPERATING_SYSTEM

=item *

PLATFORM

=item *

REGION

=item *

TENANCY

=back




=head2 MaxResults => Int

The maximum number of objects that you returned for this request. If
more objects are available, in the response, Amazon Web Services
provides a NextPageToken value that you can use in a subsequent call to
get the next batch of objects.



=head2 Metrics => ArrayRef[Str|Undef]

The measurement that you want your reservation coverage reported in.

Valid values are C<Hour>, C<Unit>, and C<Cost>. You can use multiple
values in a request.



=head2 NextPageToken => Str

The token to retrieve the next set of results. Amazon Web Services
provides the token when the response from a previous call has more
results than the maximum page size.



=head2 SortBy => L<Paws::CostExplorer::SortDefinition>

The value by which you want to sort the data.

The following values are supported for C<Key>:

=over

=item *

C<OnDemandCost>

=item *

C<CoverageHoursPercentage>

=item *

C<OnDemandHours>

=item *

C<ReservedHours>

=item *

C<TotalRunningHours>

=item *

C<CoverageNormalizedUnitsPercentage>

=item *

C<OnDemandNormalizedUnits>

=item *

C<ReservedNormalizedUnits>

=item *

C<TotalRunningNormalizedUnits>

=item *

C<Time>

=back

Supported values for C<SortOrder> are C<ASCENDING> or C<DESCENDING>.



=head2 B<REQUIRED> TimePeriod => L<Paws::CostExplorer::DateInterval>

The start and end dates of the period that you want to retrieve data
about reservation coverage for. You can retrieve data for a maximum of
13 months: the last 12 months and the current month. The start date is
inclusive, but the end date is exclusive. For example, if C<start> is
C<2017-01-01> and C<end> is C<2017-05-01>, then the cost and usage data
is retrieved from C<2017-01-01> up to and including C<2017-04-30> but
not including C<2017-05-01>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReservationCoverage in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

