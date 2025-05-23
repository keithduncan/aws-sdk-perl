# Generated by default/object.tt
package Paws::SSOAdmin::Grant;
  use Moose;
  has AuthorizationCode => (is => 'ro', isa => 'Paws::SSOAdmin::AuthorizationCodeGrant');
  has JwtBearer => (is => 'ro', isa => 'Paws::SSOAdmin::JwtBearerGrant');
  has RefreshToken => (is => 'ro', isa => 'Paws::SSOAdmin::RefreshTokenGrant');
  has TokenExchange => (is => 'ro', isa => 'Paws::SSOAdmin::TokenExchangeGrant');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::Grant

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSOAdmin::Grant object:

  $service_obj->Method(Att1 => { AuthorizationCode => $value, ..., TokenExchange => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSOAdmin::Grant object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthorizationCode

=head1 DESCRIPTION

The Grant union represents the set of possible configuration options
for the selected grant type. Exactly one member of the union must be
specified, and must match the grant type selected.

=head1 ATTRIBUTES


=head2 AuthorizationCode => L<Paws::SSOAdmin::AuthorizationCodeGrant>

Configuration options for the C<authorization_code> grant type.


=head2 JwtBearer => L<Paws::SSOAdmin::JwtBearerGrant>

Configuration options for the
C<urn:ietf:params:oauth:grant-type:jwt-bearer> grant type.


=head2 RefreshToken => L<Paws::SSOAdmin::RefreshTokenGrant>

Configuration options for the C<refresh_token> grant type.


=head2 TokenExchange => L<Paws::SSOAdmin::TokenExchangeGrant>

Configuration options for the
C<urn:ietf:params:oauth:grant-type:token-exchange> grant type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSOAdmin>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

