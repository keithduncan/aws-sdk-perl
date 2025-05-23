# Generated by default/object.tt
package Paws::Appflow::OAuthCredentials;
  use Moose;
  has AccessToken => (is => 'ro', isa => 'Str', request_name => 'accessToken', traits => ['NameInRequest']);
  has ClientId => (is => 'ro', isa => 'Str', request_name => 'clientId', traits => ['NameInRequest'], required => 1);
  has ClientSecret => (is => 'ro', isa => 'Str', request_name => 'clientSecret', traits => ['NameInRequest'], required => 1);
  has OAuthRequest => (is => 'ro', isa => 'Paws::Appflow::ConnectorOAuthRequest', request_name => 'oAuthRequest', traits => ['NameInRequest']);
  has RefreshToken => (is => 'ro', isa => 'Str', request_name => 'refreshToken', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::OAuthCredentials

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Appflow::OAuthCredentials object:

  $service_obj->Method(Att1 => { AccessToken => $value, ..., RefreshToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Appflow::OAuthCredentials object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessToken

=head1 DESCRIPTION

The OAuth credentials required for OAuth type authentication.

=head1 ATTRIBUTES


=head2 AccessToken => Str

The access token used to access protected SAPOData resources.


=head2 B<REQUIRED> ClientId => Str

The identifier for the desired client.


=head2 B<REQUIRED> ClientSecret => Str

The client secret used by the OAuth client to authenticate to the
authorization server.


=head2 OAuthRequest => L<Paws::Appflow::ConnectorOAuthRequest>

The OAuth requirement needed to request security tokens from the
connector endpoint.


=head2 RefreshToken => Str

The refresh token used to refresh expired access token.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

