
package Paws::Deadline::ListAvailableMeteredProducts;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAvailableMeteredProducts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/metered-products');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::ListAvailableMeteredProductsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::ListAvailableMeteredProducts - Arguments for method ListAvailableMeteredProducts on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAvailableMeteredProducts on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method ListAvailableMeteredProducts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAvailableMeteredProducts.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $ListAvailableMeteredProductsResponse =
      $deadline->ListAvailableMeteredProducts(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $MeteredProducts =
      $ListAvailableMeteredProductsResponse->MeteredProducts;
    my $NextToken = $ListAvailableMeteredProductsResponse->NextToken;

    # Returns a L<Paws::Deadline::ListAvailableMeteredProductsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/ListAvailableMeteredProducts>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages.



=head2 NextToken => Str

The token for the next set of results, or C<null> to start from the
beginning.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAvailableMeteredProducts in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

