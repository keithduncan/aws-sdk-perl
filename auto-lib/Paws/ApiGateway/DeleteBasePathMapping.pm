
package Paws::ApiGateway::DeleteBasePathMapping;
  use Moose;
  has BasePath => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'base_path', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domain_name', required => 1);
  has DomainNameId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domainNameId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBasePathMapping');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domainnames/{domain_name}/basepathmappings/{base_path}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DeleteBasePathMapping - Arguments for method DeleteBasePathMapping on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBasePathMapping on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method DeleteBasePathMapping.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBasePathMapping.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    $apigateway->DeleteBasePathMapping(
      BasePath     => 'MyString',
      DomainName   => 'MyString',
      DomainNameId => 'MyString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/DeleteBasePathMapping>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BasePath => Str

The base path name of the BasePathMapping resource to delete.

To specify an empty base path, set this parameter to C<'(none)'>.



=head2 B<REQUIRED> DomainName => Str

The domain name of the BasePathMapping resource to delete.



=head2 DomainNameId => Str

The identifier for the domain name resource. Supported only for private
custom domain names.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBasePathMapping in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

