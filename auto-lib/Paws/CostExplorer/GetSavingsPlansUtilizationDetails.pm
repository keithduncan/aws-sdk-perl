
package Paws::CostExplorer::GetSavingsPlansUtilizationDetails;
  use Moose;
  has DataType => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Filter => (is => 'ro', isa => 'Paws::CostExplorer::Expression');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Paws::CostExplorer::SortDefinition');
  has TimePeriod => (is => 'ro', isa => 'Paws::CostExplorer::DateInterval', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSavingsPlansUtilizationDetails');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::GetSavingsPlansUtilizationDetailsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetSavingsPlansUtilizationDetails - Arguments for method GetSavingsPlansUtilizationDetails on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSavingsPlansUtilizationDetails on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method GetSavingsPlansUtilizationDetails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSavingsPlansUtilizationDetails.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $GetSavingsPlansUtilizationDetailsResponse =
      $ce->GetSavingsPlansUtilizationDetails(
      TimePeriod => {
        End   => 'MyYearMonthDay',    # max: 40
        Start => 'MyYearMonthDay',    # max: 40

      },
      DataType => [
        'ATTRIBUTES',
        ...    # values: ATTRIBUTES, UTILIZATION, AMORTIZED_COMMITMENT, SAVINGS
      ],    # OPTIONAL
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
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyNextPageToken',    # OPTIONAL
      SortBy     => {
        Key       => 'MySortDefinitionKey',    # max: 1024
        SortOrder => 'ASCENDING',    # values: ASCENDING, DESCENDING; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $NextToken = $GetSavingsPlansUtilizationDetailsResponse->NextToken;
    my $SavingsPlansUtilizationDetails =
      $GetSavingsPlansUtilizationDetailsResponse
      ->SavingsPlansUtilizationDetails;
    my $TimePeriod = $GetSavingsPlansUtilizationDetailsResponse->TimePeriod;
    my $Total      = $GetSavingsPlansUtilizationDetailsResponse->Total;

# Returns a L<Paws::CostExplorer::GetSavingsPlansUtilizationDetailsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/GetSavingsPlansUtilizationDetails>

=head1 ATTRIBUTES


=head2 DataType => ArrayRef[Str|Undef]

The data type.



=head2 Filter => L<Paws::CostExplorer::Expression>

Filters Savings Plans utilization coverage data for active Savings
Plans dimensions. You can filter data with the following dimensions:

=over

=item *

C<LINKED_ACCOUNT>

=item *

C<SAVINGS_PLAN_ARN>

=item *

C<REGION>

=item *

C<PAYMENT_OPTION>

=item *

C<INSTANCE_TYPE_FAMILY>

=back

C<GetSavingsPlansUtilizationDetails> uses the same Expression
(https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html)
object as the other operations, but only C<AND> is supported among each
dimension.



=head2 MaxResults => Int

The number of items to be returned in a response. The default is C<20>,
with a minimum value of C<1>.



=head2 NextToken => Str

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

C<TotalCommitment>

=item *

C<UsedCommitment>

=item *

C<UnusedCommitment>

=item *

C<NetSavings>

=item *

C<AmortizedRecurringCommitment>

=item *

C<AmortizedUpfrontCommitment>

=back

The supported values for C<SortOrder> are C<ASCENDING> and
C<DESCENDING>.



=head2 B<REQUIRED> TimePeriod => L<Paws::CostExplorer::DateInterval>

The time period that you want the usage and costs for. The C<Start>
date must be within 13 months. The C<End> date must be after the
C<Start> date, and before the current date. Future dates can't be used
as an C<End> date.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSavingsPlansUtilizationDetails in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

