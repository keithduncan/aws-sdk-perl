# Generated by default/object.tt
package Paws::NetworkManager::NetworkResource;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has AwsRegion => (is => 'ro', isa => 'Str');
  has CoreNetworkId => (is => 'ro', isa => 'Str');
  has Definition => (is => 'ro', isa => 'Str');
  has DefinitionTimestamp => (is => 'ro', isa => 'Str');
  has Metadata => (is => 'ro', isa => 'Paws::NetworkManager::NetworkResourceMetadataMap');
  has RegisteredGatewayArn => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Tag]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::NetworkResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NetworkManager::NetworkResource object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NetworkManager::NetworkResource object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Describes a network resource.

=head1 ATTRIBUTES


=head2 AccountId => Str

The Amazon Web Services account ID.


=head2 AwsRegion => Str

The Amazon Web Services Region.


=head2 CoreNetworkId => Str

The ID of a core network.


=head2 Definition => Str

Information about the resource, in JSON format. Network Manager gets
this information by describing the resource using its Describe API
call.


=head2 DefinitionTimestamp => Str

The time that the resource definition was retrieved.


=head2 Metadata => L<Paws::NetworkManager::NetworkResourceMetadataMap>

The resource metadata.


=head2 RegisteredGatewayArn => Str

The ARN of the gateway.


=head2 ResourceArn => Str

The ARN of the resource.


=head2 ResourceId => Str

The ID of the resource.


=head2 ResourceType => Str

The resource type.

The following are the supported resource types for Direct Connect:

=over

=item *

C<dxcon>

=item *

C<dx-gateway>

=item *

C<dx-vif>

=back

The following are the supported resource types for Network Manager:

=over

=item *

C<attachment>

=item *

C<connect-peer>

=item *

C<connection>

=item *

C<core-network>

=item *

C<device>

=item *

C<link>

=item *

C<peering>

=item *

C<site>

=back

The following are the supported resource types for Amazon VPC:

=over

=item *

C<customer-gateway>

=item *

C<transit-gateway>

=item *

C<transit-gateway-attachment>

=item *

C<transit-gateway-connect-peer>

=item *

C<transit-gateway-route-table>

=item *

C<vpn-connection>

=back



=head2 Tags => ArrayRef[L<Paws::NetworkManager::Tag>]

The tags.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

