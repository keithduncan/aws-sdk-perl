
package Paws::ApiGateway::GetDeployments;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has Position => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'position');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeployments');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/deployments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Deployments');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetDeployments - Arguments for method GetDeployments on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeployments on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method GetDeployments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeployments.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $Deployments = $apigateway->GetDeployments(
      RestApiId => 'MyString',
      Limit     => 1,             # OPTIONAL
      Position  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Items    = $Deployments->Items;
    my $Position = $Deployments->Position;

    # Returns a L<Paws::ApiGateway::Deployments> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/GetDeployments>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of returned results per page. The default value is
25 and the maximum value is 500.



=head2 Position => Str

The current pagination position in the paged result set.



=head2 B<REQUIRED> RestApiId => Str

The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeployments in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

