
package Paws::ApiGateway::DeleteApiKey;
  use Moose;
  has ApiKey => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'api_Key', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApiKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apikeys/{api_Key}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DeleteApiKey - Arguments for method DeleteApiKey on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApiKey on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method DeleteApiKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApiKey.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    $apigateway->DeleteApiKey(
      ApiKey => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/DeleteApiKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiKey => Str

The identifier of the ApiKey resource to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApiKey in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

