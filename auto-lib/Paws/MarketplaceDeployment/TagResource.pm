
package Paws::MarketplaceDeployment::TagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MarketplaceDeployment::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{resourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MarketplaceDeployment::TagResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceDeployment::TagResource - Arguments for method TagResource on L<Paws::MarketplaceDeployment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Marketplace Deployment Service|Paws::MarketplaceDeployment> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $deployment-marketplace = Paws->service('MarketplaceDeployment');
    my $TagResourceResponse = $deployment -marketplace->TagResource(
      ResourceArn => 'MyString',
      Tags        => { 'MyString' => 'MyString', },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deployment-marketplace/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) associated with the resource you want to
tag.



=head2 Tags => L<Paws::MarketplaceDeployment::Tags>

A map of key-value pairs, where each pair represents a tag present on
the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::MarketplaceDeployment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

