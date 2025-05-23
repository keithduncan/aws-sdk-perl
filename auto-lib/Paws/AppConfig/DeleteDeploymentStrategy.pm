
package Paws::AppConfig::DeleteDeploymentStrategy;
  use Moose;
  has DeploymentStrategyId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DeploymentStrategyId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDeploymentStrategy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/deployementstrategies/{DeploymentStrategyId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::DeleteDeploymentStrategy - Arguments for method DeleteDeploymentStrategy on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDeploymentStrategy on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method DeleteDeploymentStrategy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDeploymentStrategy.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    # To delete a deployment strategy
    # The following delete-deployment-strategy example deletes the specified
    # deployment strategy.
    $appconfig->DeleteDeploymentStrategy( 'DeploymentStrategyId' => '1225qzk' );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/DeleteDeploymentStrategy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeploymentStrategyId => Str

The ID of the deployment strategy you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDeploymentStrategy in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

