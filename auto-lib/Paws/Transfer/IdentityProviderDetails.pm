# Generated by default/object.tt
package Paws::Transfer::IdentityProviderDetails;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str');
  has Function => (is => 'ro', isa => 'Str');
  has InvocationRole => (is => 'ro', isa => 'Str');
  has SftpAuthenticationMethods => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::IdentityProviderDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transfer::IdentityProviderDetails object:

  $service_obj->Method(Att1 => { DirectoryId => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transfer::IdentityProviderDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->DirectoryId

=head1 DESCRIPTION

Returns information related to the type of user authentication that is
in use for a file transfer protocol-enabled server's users. A server
can have only one method of authentication.

=head1 ATTRIBUTES


=head2 DirectoryId => Str

The identifier of the Directory Service directory that you want to use
as your identity provider.


=head2 Function => Str

The ARN for a Lambda function to use for the Identity provider.


=head2 InvocationRole => Str

This parameter is only applicable if your C<IdentityProviderType> is
C<API_GATEWAY>. Provides the type of C<InvocationRole> used to
authenticate the user account.


=head2 SftpAuthenticationMethods => Str

For SFTP-enabled servers, and for custom identity providers I<only>,
you can specify whether to authenticate using a password, SSH key pair,
or both.

=over

=item *

C<PASSWORD> - users must provide their password to connect.

=item *

C<PUBLIC_KEY> - users must provide their private key to connect.

=item *

C<PUBLIC_KEY_OR_PASSWORD> - users can authenticate with either their
password or their key. This is the default value.

=item *

C<PUBLIC_KEY_AND_PASSWORD> - users must provide both their private key
and their password to connect. The server checks the key first, and
then if the key is valid, the system prompts for a password. If the
private key provided does not match the public key that is stored,
authentication fails.

=back



=head2 Url => Str

Provides the location of the service endpoint used to authenticate
users.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

