
package Paws::NetworkManager::GetTransitGatewayPeering;
  use Moose;
  has PeeringId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'peeringId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTransitGatewayPeering');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/transit-gateway-peerings/{peeringId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::GetTransitGatewayPeeringResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetTransitGatewayPeering - Arguments for method GetTransitGatewayPeering on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTransitGatewayPeering on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method GetTransitGatewayPeering.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTransitGatewayPeering.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $GetTransitGatewayPeeringResponse =
      $networkmanager->GetTransitGatewayPeering(
      PeeringId => 'MyPeeringId',

      );

    # Results:
    my $TransitGatewayPeering =
      $GetTransitGatewayPeeringResponse->TransitGatewayPeering;

   # Returns a L<Paws::NetworkManager::GetTransitGatewayPeeringResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/GetTransitGatewayPeering>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PeeringId => Str

The ID of the peering request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTransitGatewayPeering in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

