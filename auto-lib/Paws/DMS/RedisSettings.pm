# Generated by default/object.tt
package Paws::DMS::RedisSettings;
  use Moose;
  has AuthPassword => (is => 'ro', isa => 'Str');
  has AuthType => (is => 'ro', isa => 'Str');
  has AuthUserName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int', required => 1);
  has ServerName => (is => 'ro', isa => 'Str', required => 1);
  has SslCaCertificateArn => (is => 'ro', isa => 'Str');
  has SslSecurityProtocol => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::RedisSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::RedisSettings object:

  $service_obj->Method(Att1 => { AuthPassword => $value, ..., SslSecurityProtocol => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::RedisSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthPassword

=head1 DESCRIPTION

Provides information that defines a Redis target endpoint.

=head1 ATTRIBUTES


=head2 AuthPassword => Str

The password provided with the C<auth-role> and C<auth-token> options
of the C<AuthType> setting for a Redis target endpoint.


=head2 AuthType => Str

The type of authentication to perform when connecting to a Redis
target. Options include C<none>, C<auth-token>, and C<auth-role>. The
C<auth-token> option requires an C<AuthPassword> value to be provided.
The C<auth-role> option requires C<AuthUserName> and C<AuthPassword>
values to be provided.


=head2 AuthUserName => Str

The user name provided with the C<auth-role> option of the C<AuthType>
setting for a Redis target endpoint.


=head2 B<REQUIRED> Port => Int

Transmission Control Protocol (TCP) port for the endpoint.


=head2 B<REQUIRED> ServerName => Str

Fully qualified domain name of the endpoint.


=head2 SslCaCertificateArn => Str

The Amazon Resource Name (ARN) for the certificate authority (CA) that
DMS uses to connect to your Redis target endpoint.


=head2 SslSecurityProtocol => Str

The connection to a Redis target endpoint using Transport Layer
Security (TLS). Valid values include C<plaintext> and
C<ssl-encryption>. The default is C<ssl-encryption>. The
C<ssl-encryption> option makes an encrypted connection. Optionally, you
can identify an Amazon Resource Name (ARN) for an SSL certificate
authority (CA) using the C<SslCaCertificateArn >setting. If an ARN
isn't given for a CA, DMS uses the Amazon root CA.

The C<plaintext> option doesn't provide Transport Layer Security (TLS)
encryption for traffic between endpoint and database.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

