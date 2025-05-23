
package Paws::NetworkManager::UpdateGlobalNetwork;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGlobalNetwork');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::UpdateGlobalNetworkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::UpdateGlobalNetwork - Arguments for method UpdateGlobalNetwork on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGlobalNetwork on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method UpdateGlobalNetwork.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGlobalNetwork.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $UpdateGlobalNetworkResponse = $networkmanager->UpdateGlobalNetwork(
      GlobalNetworkId => 'MyGlobalNetworkId',
      Description     => 'MyConstrainedString',    # OPTIONAL
    );

    # Results:
    my $GlobalNetwork = $UpdateGlobalNetworkResponse->GlobalNetwork;

    # Returns a L<Paws::NetworkManager::UpdateGlobalNetworkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/UpdateGlobalNetwork>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the global network.

Constraints: Maximum length of 256 characters.



=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of your global network.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGlobalNetwork in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

