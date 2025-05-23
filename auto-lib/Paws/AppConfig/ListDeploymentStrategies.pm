
package Paws::AppConfig::ListDeploymentStrategies;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max_results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next_token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeploymentStrategies');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/deploymentstrategies');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::DeploymentStrategies');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::ListDeploymentStrategies - Arguments for method ListDeploymentStrategies on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDeploymentStrategies on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method ListDeploymentStrategies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDeploymentStrategies.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    # To list the available deployment strategies
    # The following list-deployment-strategies example lists the available
    # deployment strategies in your AWS account.
    my $DeploymentStrategies = $appconfig->ListDeploymentStrategies();

    # Results:
    my $Items = $DeploymentStrategies->Items;

    # Returns a L<Paws::AppConfig::DeploymentStrategies> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/ListDeploymentStrategies>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

A token to start the list. Use this token to get the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDeploymentStrategies in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

