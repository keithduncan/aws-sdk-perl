
package Paws::Connect::ListRules;
  use Moose;
  has EventSourceName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'eventSourceName');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has PublishStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'publishStatus');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRules');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rules/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::ListRulesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListRules - Arguments for method ListRules on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRules on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method ListRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRules.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $ListRulesResponse = $connect->ListRules(
      InstanceId      => 'MyInstanceId',
      EventSourceName => 'OnPostCallAnalysisAvailable',    # OPTIONAL
      MaxResults      => 1,                                # OPTIONAL
      NextToken       => 'MyNextToken',                    # OPTIONAL
      PublishStatus   => 'DRAFT',                          # OPTIONAL
    );

    # Results:
    my $NextToken       = $ListRulesResponse->NextToken;
    my $RuleSummaryList = $ListRulesResponse->RuleSummaryList;

    # Returns a L<Paws::Connect::ListRulesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/ListRules>

=head1 ATTRIBUTES


=head2 EventSourceName => Str

The name of the event source.

Valid values are: C<"OnPostCallAnalysisAvailable">, C<"OnRealTimeCallAnalysisAvailable">, C<"OnRealTimeChatAnalysisAvailable">, C<"OnPostChatAnalysisAvailable">, C<"OnZendeskTicketCreate">, C<"OnZendeskTicketStatusUpdate">, C<"OnSalesforceCaseCreate">, C<"OnContactEvaluationSubmit">, C<"OnMetricDataUpdate">, C<"OnCaseCreate">, C<"OnCaseUpdate">, C<"OnSlaBreach">

=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 PublishStatus => Str

The publish status of the rule.

Valid values are: C<"DRAFT">, C<"PUBLISHED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRules in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

