
package Paws::ApiGateway::DeleteUsagePlanKey;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'keyId', required => 1);
  has UsagePlanId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'usageplanId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUsagePlanKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/usageplans/{usageplanId}/keys/{keyId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DeleteUsagePlanKey - Arguments for method DeleteUsagePlanKey on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteUsagePlanKey on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method DeleteUsagePlanKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteUsagePlanKey.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    $apigateway->DeleteUsagePlanKey(
      KeyId       => 'MyString',
      UsagePlanId => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/DeleteUsagePlanKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyId => Str

The Id of the UsagePlanKey resource to be deleted.



=head2 B<REQUIRED> UsagePlanId => Str

The Id of the UsagePlan resource representing the usage plan containing
the to-be-deleted UsagePlanKey resource representing a plan customer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteUsagePlanKey in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

