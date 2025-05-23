
package Paws::EC2::ModifyClientVpnEndpoint;
  use Moose;
  has ClientConnectOptions => (is => 'ro', isa => 'Paws::EC2::ClientConnectOptions');
  has ClientLoginBannerOptions => (is => 'ro', isa => 'Paws::EC2::ClientLoginBannerOptions');
  has ClientRouteEnforcementOptions => (is => 'ro', isa => 'Paws::EC2::ClientRouteEnforcementOptions');
  has ClientVpnEndpointId => (is => 'ro', isa => 'Str', required => 1);
  has ConnectionLogOptions => (is => 'ro', isa => 'Paws::EC2::ConnectionLogOptions');
  has Description => (is => 'ro', isa => 'Str');
  has DisconnectOnSessionTimeout => (is => 'ro', isa => 'Bool');
  has DnsServers => (is => 'ro', isa => 'Paws::EC2::DnsServersOptionsModifyStructure');
  has DryRun => (is => 'ro', isa => 'Bool');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );
  has SelfServicePortal => (is => 'ro', isa => 'Str');
  has ServerCertificateArn => (is => 'ro', isa => 'Str');
  has SessionTimeoutHours => (is => 'ro', isa => 'Int');
  has SplitTunnel => (is => 'ro', isa => 'Bool');
  has VpcId => (is => 'ro', isa => 'Str');
  has VpnPort => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyClientVpnEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyClientVpnEndpointResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyClientVpnEndpoint - Arguments for method ModifyClientVpnEndpoint on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyClientVpnEndpoint on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyClientVpnEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyClientVpnEndpoint.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyClientVpnEndpointResult = $ec2->ModifyClientVpnEndpoint(
      ClientVpnEndpointId  => 'MyClientVpnEndpointId',
      ClientConnectOptions => {
        Enabled           => 1,             # OPTIONAL
        LambdaFunctionArn => 'MyString',    # OPTIONAL
      },    # OPTIONAL
      ClientLoginBannerOptions => {
        BannerText => 'MyString',    # OPTIONAL
        Enabled    => 1,             # OPTIONAL
      },    # OPTIONAL
      ClientRouteEnforcementOptions => {
        Enforced => 1,    # OPTIONAL
      },    # OPTIONAL
      ConnectionLogOptions => {
        CloudwatchLogGroup  => 'MyString',    # OPTIONAL
        CloudwatchLogStream => 'MyString',    # OPTIONAL
        Enabled             => 1,             # OPTIONAL
      },    # OPTIONAL
      Description                => 'MyString',    # OPTIONAL
      DisconnectOnSessionTimeout => 1,             # OPTIONAL
      DnsServers                 => {
        CustomDnsServers => [
          'MyString', ...                          # OPTIONAL
        ],    # OPTIONAL
        Enabled => 1,    # OPTIONAL
      },    # OPTIONAL
      DryRun               => 1,                               # OPTIONAL
      SecurityGroupIds     => [ 'MySecurityGroupId', ... ],    # OPTIONAL
      SelfServicePortal    => 'enabled',                       # OPTIONAL
      ServerCertificateArn => 'MyString',                      # OPTIONAL
      SessionTimeoutHours  => 1,                               # OPTIONAL
      SplitTunnel          => 1,                               # OPTIONAL
      VpcId                => 'MyVpcId',                       # OPTIONAL
      VpnPort              => 1,                               # OPTIONAL
    );

    # Results:
    my $Return = $ModifyClientVpnEndpointResult->Return;

    # Returns a L<Paws::EC2::ModifyClientVpnEndpointResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyClientVpnEndpoint>

=head1 ATTRIBUTES


=head2 ClientConnectOptions => L<Paws::EC2::ClientConnectOptions>

The options for managing connection authorization for new client
connections.



=head2 ClientLoginBannerOptions => L<Paws::EC2::ClientLoginBannerOptions>

Options for enabling a customizable text banner that will be displayed
on Amazon Web Services provided clients when a VPN session is
established.



=head2 ClientRouteEnforcementOptions => L<Paws::EC2::ClientRouteEnforcementOptions>

Client route enforcement is a feature of the Client VPN service that
helps enforce administrator defined routes on devices connected through
the VPN. T his feature helps improve your security posture by ensuring
that network traffic originating from a connected client is not
inadvertently sent outside the VPN tunnel.

Client route enforcement works by monitoring the route table of a
connected device for routing policy changes to the VPN connection. If
the feature detects any VPN routing policy modifications, it will
automatically force an update to the route table, reverting it back to
the expected route configurations.



=head2 B<REQUIRED> ClientVpnEndpointId => Str

The ID of the Client VPN endpoint to modify.



=head2 ConnectionLogOptions => L<Paws::EC2::ConnectionLogOptions>

Information about the client connection logging options.

If you enable client connection logging, data about client connections
is sent to a Cloudwatch Logs log stream. The following information is
logged:

=over

=item *

Client connection requests

=item *

Client connection results (successful and unsuccessful)

=item *

Reasons for unsuccessful client connection requests

=item *

Client connection termination time

=back




=head2 Description => Str

A brief description of the Client VPN endpoint.



=head2 DisconnectOnSessionTimeout => Bool

Indicates whether the client VPN session is disconnected after the
maximum timeout specified in C<sessionTimeoutHours> is reached. If
C<true>, users are prompted to reconnect client VPN. If C<false>,
client VPN attempts to reconnect automatically. The default value is
C<true>.



=head2 DnsServers => L<Paws::EC2::DnsServersOptionsModifyStructure>

Information about the DNS servers to be used by Client VPN connections.
A Client VPN endpoint can have up to two DNS servers.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The IDs of one or more security groups to apply to the target network.



=head2 SelfServicePortal => Str

Specify whether to enable the self-service portal for the Client VPN
endpoint.

Valid values are: C<"enabled">, C<"disabled">

=head2 ServerCertificateArn => Str

The ARN of the server certificate to be used. The server certificate
must be provisioned in Certificate Manager (ACM).



=head2 SessionTimeoutHours => Int

The maximum VPN session duration time in hours.

Valid values: C<8 | 10 | 12 | 24>

Default value: C<24>



=head2 SplitTunnel => Bool

Indicates whether the VPN is split-tunnel.

For information about split-tunnel VPN endpoints, see Split-tunnel
Client VPN endpoint
(https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/split-tunnel-vpn.html)
in the I<Client VPN Administrator Guide>.



=head2 VpcId => Str

The ID of the VPC to associate with the Client VPN endpoint.



=head2 VpnPort => Int

The port number to assign to the Client VPN endpoint for TCP and UDP
traffic.

Valid Values: C<443> | C<1194>

Default Value: C<443>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyClientVpnEndpoint in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

