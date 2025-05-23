# Generated by default/object.tt
package Paws::LicenseManagerUserSubscriptions::LicenseServerEndpoint;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has IdentityProviderArn => (is => 'ro', isa => 'Str');
  has LicenseServerEndpointArn => (is => 'ro', isa => 'Str');
  has LicenseServerEndpointId => (is => 'ro', isa => 'Str');
  has LicenseServerEndpointProvisioningStatus => (is => 'ro', isa => 'Str');
  has LicenseServers => (is => 'ro', isa => 'ArrayRef[Paws::LicenseManagerUserSubscriptions::LicenseServer]');
  has ServerEndpoint => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::ServerEndpoint');
  has ServerType => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::LicenseServerEndpoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LicenseManagerUserSubscriptions::LicenseServerEndpoint object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LicenseManagerUserSubscriptions::LicenseServerEndpoint object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Contains details about a network endpoint for a Remote Desktop Services
(RDS) license server.

=head1 ATTRIBUTES


=head2 CreationTime => Str

The timestamp when License Manager created the license server endpoint.


=head2 IdentityProviderArn => Str

The Amazon Resource Name (ARN) of the identity provider that's
associated with the RDS license server endpoint.


=head2 LicenseServerEndpointArn => Str

The ARN of the C<ServerEndpoint> resource for the RDS license server.


=head2 LicenseServerEndpointId => Str

The ID of the license server endpoint.


=head2 LicenseServerEndpointProvisioningStatus => Str

The current state of the provisioning process for the RDS license
server endpoint


=head2 LicenseServers => ArrayRef[L<Paws::LicenseManagerUserSubscriptions::LicenseServer>]

An array of C<LicenseServer> resources that represent the license
servers that are accessed through this endpoint.


=head2 ServerEndpoint => L<Paws::LicenseManagerUserSubscriptions::ServerEndpoint>

The C<ServerEndpoint> resource contains the network address of the RDS
license server endpoint.


=head2 ServerType => Str

The type of license server.


=head2 StatusMessage => Str

The message associated with the provisioning status, if there is one.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LicenseManagerUserSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

