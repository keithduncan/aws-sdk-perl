
package Paws::NetworkManager::DeleteLink;
  use Moose;
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);
  has LinkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'linkId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLink');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/links/{linkId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::DeleteLinkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::DeleteLink - Arguments for method DeleteLink on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteLink on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method DeleteLink.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteLink.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $DeleteLinkResponse = $networkmanager->DeleteLink(
      GlobalNetworkId => 'MyGlobalNetworkId',
      LinkId          => 'MyLinkId',

    );

    # Results:
    my $Link = $DeleteLinkResponse->Link;

    # Returns a L<Paws::NetworkManager::DeleteLinkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/DeleteLink>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.



=head2 B<REQUIRED> LinkId => Str

The ID of the link.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteLink in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

