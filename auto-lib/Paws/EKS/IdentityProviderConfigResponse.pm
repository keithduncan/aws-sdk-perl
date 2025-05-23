# Generated by default/object.tt
package Paws::EKS::IdentityProviderConfigResponse;
  use Moose;
  has Oidc => (is => 'ro', isa => 'Paws::EKS::OidcIdentityProviderConfig', request_name => 'oidc', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::IdentityProviderConfigResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::IdentityProviderConfigResponse object:

  $service_obj->Method(Att1 => { Oidc => $value, ..., Oidc => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::IdentityProviderConfigResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Oidc

=head1 DESCRIPTION

The full description of your identity configuration.

=head1 ATTRIBUTES


=head2 Oidc => L<Paws::EKS::OidcIdentityProviderConfig>

An object representing an OpenID Connect (OIDC) identity provider
configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

