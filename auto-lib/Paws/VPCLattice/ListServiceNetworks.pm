
package Paws::VPCLattice::ListServiceNetworks;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListServiceNetworks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/servicenetworks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::ListServiceNetworksResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::ListServiceNetworks - Arguments for method ListServiceNetworks on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListServiceNetworks on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method ListServiceNetworks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListServiceNetworks.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $ListServiceNetworksResponse = $vpc -lattice->ListServiceNetworks(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListServiceNetworksResponse->Items;
    my $NextToken = $ListServiceNetworksResponse->NextToken;

    # Returns a L<Paws::VPCLattice::ListServiceNetworksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/ListServiceNetworks>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

A pagination token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListServiceNetworks in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

