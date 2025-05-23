# Generated by default/object.tt
package Paws::QBusiness::OpenIDConnectProviderConfiguration;
  use Moose;
  has SecretsArn => (is => 'ro', isa => 'Str', request_name => 'secretsArn', traits => ['NameInRequest'], required => 1);
  has SecretsRole => (is => 'ro', isa => 'Str', request_name => 'secretsRole', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::OpenIDConnectProviderConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QBusiness::OpenIDConnectProviderConfiguration object:

  $service_obj->Method(Att1 => { SecretsArn => $value, ..., SecretsRole => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QBusiness::OpenIDConnectProviderConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->SecretsArn

=head1 DESCRIPTION

Information about the OIDC-compliant identity provider (IdP) used to
authenticate end users of an Amazon Q Business web experience.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecretsArn => Str

The Amazon Resource Name (ARN) of a Secrets Manager secret containing
the OIDC client secret.


=head2 B<REQUIRED> SecretsRole => Str

An IAM role with permissions to access KMS to decrypt the Secrets
Manager secret containing your OIDC client secret.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

