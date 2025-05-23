
package Paws::AppIntegrations::ListDataIntegrations;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataIntegrations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/dataIntegrations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppIntegrations::ListDataIntegrationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::ListDataIntegrations - Arguments for method ListDataIntegrations on L<Paws::AppIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataIntegrations on the
L<Amazon AppIntegrations Service|Paws::AppIntegrations> service. Use the attributes of this class
as arguments to method ListDataIntegrations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataIntegrations.

=head1 SYNOPSIS

    my $app-integrations = Paws->service('AppIntegrations');
    my $ListDataIntegrationsResponse = $app -integrations->ListDataIntegrations(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $DataIntegrations = $ListDataIntegrationsResponse->DataIntegrations;
    my $NextToken        = $ListDataIntegrationsResponse->NextToken;

    # Returns a L<Paws::AppIntegrations::ListDataIntegrationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/app-integrations/ListDataIntegrations>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataIntegrations in L<Paws::AppIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

