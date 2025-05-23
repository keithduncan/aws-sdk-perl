
package Paws::CostExplorer::GetUsageForecast;
  use Moose;
  has BillingViewArn => (is => 'ro', isa => 'Str');
  has Filter => (is => 'ro', isa => 'Paws::CostExplorer::Expression');
  has Granularity => (is => 'ro', isa => 'Str', required => 1);
  has Metric => (is => 'ro', isa => 'Str', required => 1);
  has PredictionIntervalLevel => (is => 'ro', isa => 'Int');
  has TimePeriod => (is => 'ro', isa => 'Paws::CostExplorer::DateInterval', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUsageForecast');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::GetUsageForecastResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetUsageForecast - Arguments for method GetUsageForecast on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUsageForecast on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method GetUsageForecast.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUsageForecast.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $GetUsageForecastResponse = $ce->GetUsageForecast(
      Granularity => 'DAILY',
      Metric      => 'BLENDED_COST',
      TimePeriod  => {
        End   => 'MyYearMonthDay',    # max: 40
        Start => 'MyYearMonthDay',    # max: 40

      },
      BillingViewArn => 'MyBillingViewArn',    # OPTIONAL
      Filter         => {
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
      PredictionIntervalLevel => 1,    # OPTIONAL
    );

    # Results:
    my $ForecastResultsByTime =
      $GetUsageForecastResponse->ForecastResultsByTime;
    my $Total = $GetUsageForecastResponse->Total;

    # Returns a L<Paws::CostExplorer::GetUsageForecastResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/GetUsageForecast>

=head1 ATTRIBUTES


=head2 BillingViewArn => Str

The Amazon Resource Name (ARN) that uniquely identifies a specific
billing view. The ARN is used to specify which particular billing view
you want to interact with or retrieve information from when making API
calls related to Amazon Web Services Billing and Cost Management
features. The BillingViewArn can be retrieved by calling the
ListBillingViews API.



=head2 Filter => L<Paws::CostExplorer::Expression>

The filters that you want to use to filter your forecast. The
C<GetUsageForecast> API supports filtering by the following dimensions:

=over

=item *

C<AZ>

=item *

C<INSTANCE_TYPE>

=item *

C<LINKED_ACCOUNT>

=item *

C<LINKED_ACCOUNT_NAME>

=item *

C<OPERATION>

=item *

C<PURCHASE_TYPE>

=item *

C<REGION>

=item *

C<SERVICE>

=item *

C<USAGE_TYPE>

=item *

C<USAGE_TYPE_GROUP>

=item *

C<RECORD_TYPE>

=item *

C<OPERATING_SYSTEM>

=item *

C<TENANCY>

=item *

C<SCOPE>

=item *

C<PLATFORM>

=item *

C<SUBSCRIPTION_ID>

=item *

C<LEGAL_ENTITY_NAME>

=item *

C<DEPLOYMENT_OPTION>

=item *

C<DATABASE_ENGINE>

=item *

C<INSTANCE_TYPE_FAMILY>

=item *

C<BILLING_ENTITY>

=item *

C<RESERVATION_ID>

=item *

C<SAVINGS_PLAN_ARN>

=back




=head2 B<REQUIRED> Granularity => Str

How granular you want the forecast to be. You can get 3 months of
C<DAILY> forecasts or 12 months of C<MONTHLY> forecasts.

The C<GetUsageForecast> operation supports only C<DAILY> and C<MONTHLY>
granularities.

Valid values are: C<"DAILY">, C<"MONTHLY">, C<"HOURLY">

=head2 B<REQUIRED> Metric => Str

Which metric Cost Explorer uses to create your forecast.

Valid values for a C<GetUsageForecast> call are the following:

=over

=item *

USAGE_QUANTITY

=item *

NORMALIZED_USAGE_AMOUNT

=back


Valid values are: C<"BLENDED_COST">, C<"UNBLENDED_COST">, C<"AMORTIZED_COST">, C<"NET_UNBLENDED_COST">, C<"NET_AMORTIZED_COST">, C<"USAGE_QUANTITY">, C<"NORMALIZED_USAGE_AMOUNT">

=head2 PredictionIntervalLevel => Int

Amazon Web Services Cost Explorer always returns the mean forecast as a
single point. You can request a prediction interval around the mean by
specifying a confidence level. The higher the confidence level, the
more confident Cost Explorer is about the actual value falling in the
prediction interval. Higher confidence levels result in wider
prediction intervals.



=head2 B<REQUIRED> TimePeriod => L<Paws::CostExplorer::DateInterval>

The start and end dates of the period that you want to retrieve usage
forecast for. The start date is included in the period, but the end
date isn't included in the period. For example, if C<start> is
C<2017-01-01> and C<end> is C<2017-05-01>, then the cost and usage data
is retrieved from C<2017-01-01> up to and including C<2017-04-30> but
not including C<2017-05-01>. The start date must be equal to or later
than the current date to avoid a validation error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUsageForecast in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

