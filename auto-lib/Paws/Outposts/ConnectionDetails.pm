# Generated by default/object.tt
package Paws::Outposts::ConnectionDetails;
  use Moose;
  has AllowedIps => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClientPublicKey => (is => 'ro', isa => 'Str');
  has ClientTunnelAddress => (is => 'ro', isa => 'Str');
  has ServerEndpoint => (is => 'ro', isa => 'Str');
  has ServerPublicKey => (is => 'ro', isa => 'Str');
  has ServerTunnelAddress => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::ConnectionDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Outposts::ConnectionDetails object:

  $service_obj->Method(Att1 => { AllowedIps => $value, ..., ServerTunnelAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Outposts::ConnectionDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowedIps

=head1 DESCRIPTION

Information about a connection.

=head1 ATTRIBUTES


=head2 AllowedIps => ArrayRef[Str|Undef]

The allowed IP addresses.


=head2 ClientPublicKey => Str

The public key of the client.


=head2 ClientTunnelAddress => Str

The client tunnel address.


=head2 ServerEndpoint => Str

The endpoint for the server.


=head2 ServerPublicKey => Str

The public key of the server.


=head2 ServerTunnelAddress => Str

The server tunnel address.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

