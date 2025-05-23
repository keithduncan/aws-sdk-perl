
package Paws::CostExplorer::GetReservationUtilization;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::CostExplorer::Expression');
  has Granularity => (is => 'ro', isa => 'Str');
  has GroupBy => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::GroupDefinition]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextPageToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Paws::CostExplorer::SortDefinition');
  has TimePeriod => (is => 'ro', isa => 'Paws::CostExplorer::DateInterval', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetReservationUtilization');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::GetReservationUtilizationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetReservationUtilization - Arguments for method GetReservationUtilization on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetReservationUtilization on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method GetReservationUtilization.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetReservationUtilization.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $GetReservationUtilizationResponse = $ce->GetReservationUtilization(
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
      MaxResults    => 1,                    # OPTIONAL
      NextPageToken => 'MyNextPageToken',    # OPTIONAL
      SortBy        => {
        Key       => 'MySortDefinitionKey',    # max: 1024
        SortOrder => 'ASCENDING',    # values: ASCENDING, DESCENDING; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $NextPageToken = $GetReservationUtilizationResponse->NextPageToken;
    my $Total         = $GetReservationUtilizationResponse->Total;
    my $UtilizationsByTime =
      $GetReservationUtilizationResponse->UtilizationsByTime;

    # Returns a L<Paws::CostExplorer::GetReservationUtilizationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/GetReservationUtilization>

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

If not specified, the C<SERVICE> filter defaults to Amazon Elastic
Compute Cloud - Compute. Supported values for C<SERVICE> are Amazon
Elastic Compute Cloud - Compute, Amazon Relational Database Service,
Amazon ElastiCache, Amazon Redshift, and Amazon Elasticsearch Service.
The value for the C<SERVICE> filter should not exceed "1".

=item *

SCOPE

=item *

TENANCY

=back

C<GetReservationUtilization> uses the same Expression
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html)
object as the other operations, but only C<AND> is supported among each
dimension, and nesting is supported up to only one level deep. If there
are multiple values for a dimension, they are OR'd together.



=head2 Granularity => Str

If C<GroupBy> is set, C<Granularity> can't be set. If C<Granularity>
isn't set, the response object doesn't include C<Granularity>, either
C<MONTHLY> or C<DAILY>. If both C<GroupBy> and C<Granularity> aren't
set, C<GetReservationUtilization> defaults to C<DAILY>.

The C<GetReservationUtilization> operation supports only C<DAILY> and
C<MONTHLY> granularities.

Valid values are: C<"DAILY">, C<"MONTHLY">, C<"HOURLY">

=head2 GroupBy => ArrayRef[L<Paws::CostExplorer::GroupDefinition>]

Groups only by C<SUBSCRIPTION_ID>. Metadata is included.



=head2 MaxResults => Int

The maximum number of objects that you returned for this request. If
more objects are available, in the response, Amazon Web Services
provides a NextPageToken value that you can use in a subsequent call to
get the next batch of objects.



=head2 NextPageToken => Str

The token to retrieve the next set of results. Amazon Web Services
provides the token when the response from a previous call has more
results than the maximum page size.



=head2 SortBy => L<Paws::CostExplorer::SortDefinition>

The value that you want to sort the data by.

The following values are supported for C<Key>:

=over

=item *

C<UtilizationPercentage>

=item *

C<UtilizationPercentageInUnits>

=item *

C<PurchasedHours>

=item *

C<PurchasedUnits>

=item *

C<TotalActualHours>

=item *

C<TotalActualUnits>

=item *

C<UnusedHours>

=item *

C<UnusedUnits>

=item *

C<OnDemandCostOfRIHoursUsed>

=item *

C<NetRISavings>

=item *

C<TotalPotentialRISavings>

=item *

C<AmortizedUpfrontFee>

=item *

C<AmortizedRecurringFee>

=item *

C<TotalAmortizedFee>

=item *

C<RICostForUnusedHours>

=item *

C<RealizedSavings>

=item *

C<UnrealizedSavings>

=back

The supported values for C<SortOrder> are C<ASCENDING> and
C<DESCENDING>.



=head2 B<REQUIRED> TimePeriod => L<Paws::CostExplorer::DateInterval>

Sets the start and end dates for retrieving Reserved Instance (RI)
utilization. The start date is inclusive, but the end date is
exclusive. For example, if C<start> is C<2017-01-01> and C<end> is
C<2017-05-01>, then the cost and usage data is retrieved from
C<2017-01-01> up to and including C<2017-04-30> but not including
C<2017-05-01>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetReservationUtilization in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

