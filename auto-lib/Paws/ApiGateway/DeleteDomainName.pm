
package Paws::ApiGateway::DeleteDomainName;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domain_name', required => 1);
  has DomainNameId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domainNameId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDomainName');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domainnames/{domain_name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DeleteDomainName - Arguments for method DeleteDomainName on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDomainName on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method DeleteDomainName.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDomainName.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    $apigateway->DeleteDomainName(
      DomainName   => 'MyString',
      DomainNameId => 'MyString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/DeleteDomainName>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The name of the DomainName resource to be deleted.



=head2 DomainNameId => Str

The identifier for the domain name resource. Supported only for private
custom domain names.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDomainName in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

