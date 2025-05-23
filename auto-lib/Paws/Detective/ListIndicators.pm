
package Paws::Detective::ListIndicators;
  use Moose;
  has GraphArn => (is => 'ro', isa => 'Str', required => 1);
  has IndicatorType => (is => 'ro', isa => 'Str');
  has InvestigationId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIndicators');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/investigations/listIndicators');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Detective::ListIndicatorsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::ListIndicators - Arguments for method ListIndicators on L<Paws::Detective>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIndicators on the
L<Amazon Detective|Paws::Detective> service. Use the attributes of this class
as arguments to method ListIndicators.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIndicators.

=head1 SYNOPSIS

    my $api.detective = Paws->service('Detective');
    my $ListIndicatorsResponse = $api . detective->ListIndicators(
      GraphArn        => 'MyGraphArn',
      InvestigationId => 'MyInvestigationId',
      IndicatorType   => 'TTP_OBSERVED',           # OPTIONAL
      MaxResults      => 1,                        # OPTIONAL
      NextToken       => 'MyAiPaginationToken',    # OPTIONAL
    );

    # Results:
    my $GraphArn        = $ListIndicatorsResponse->GraphArn;
    my $Indicators      = $ListIndicatorsResponse->Indicators;
    my $InvestigationId = $ListIndicatorsResponse->InvestigationId;
    my $NextToken       = $ListIndicatorsResponse->NextToken;

    # Returns a L<Paws::Detective::ListIndicatorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.detective/ListIndicators>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GraphArn => Str

The Amazon Resource Name (ARN) of the behavior graph.



=head2 IndicatorType => Str

For the list of indicators of compromise that are generated by
Detective investigations, see Detective investigations
(https://docs.aws.amazon.com/detective/latest/userguide/detective-investigation-about.html).

Valid values are: C<"TTP_OBSERVED">, C<"IMPOSSIBLE_TRAVEL">, C<"FLAGGED_IP_ADDRESS">, C<"NEW_GEOLOCATION">, C<"NEW_ASO">, C<"NEW_USER_AGENT">, C<"RELATED_FINDING">, C<"RELATED_FINDING_GROUP">

=head2 B<REQUIRED> InvestigationId => Str

The investigation ID of the investigation report.



=head2 MaxResults => Int

Lists the maximum number of indicators in a page.



=head2 NextToken => Str

Lists if there are more results available. The value of nextToken is a
unique pagination token for each page. Repeat the call using the
returned token to retrieve the next page. Keep all other arguments
unchanged.

Each pagination token expires after 24 hours. Using an expired
pagination token will return a Validation Exception error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIndicators in L<Paws::Detective>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

