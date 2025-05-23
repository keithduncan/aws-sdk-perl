
package Paws::ApiGateway::UpdateModel;
  use Moose;
  has ModelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'model_name', required => 1);
  has PatchOperations => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::PatchOperation]', traits => ['NameInRequest'], request_name => 'patchOperations');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restapi_id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/models/{model_name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Model');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UpdateModel - Arguments for method UpdateModel on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateModel on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method UpdateModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateModel.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $Model = $apigateway->UpdateModel(
      ModelName       => 'MyString',
      RestApiId       => 'MyString',
      PatchOperations => [
        {
          From => 'MyString',
          Op   =>
            'add',    # values: add, remove, replace, move, copy, test; OPTIONAL
          Path  => 'MyString',
          Value => 'MyString',
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ContentType = $Model->ContentType;
    my $Description = $Model->Description;
    my $Id          = $Model->Id;
    my $Name        = $Model->Name;
    my $Schema      = $Model->Schema;

    # Returns a L<Paws::ApiGateway::Model> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/UpdateModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelName => Str

The name of the model to update.



=head2 PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]

For more information about supported patch operations, see Patch
Operations
(https://docs.aws.amazon.com/apigateway/latest/api/patch-operations.html).



=head2 B<REQUIRED> RestApiId => Str

The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateModel in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

