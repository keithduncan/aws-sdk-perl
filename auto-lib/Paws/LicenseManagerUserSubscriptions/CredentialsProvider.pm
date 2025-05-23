# Generated by default/object.tt
package Paws::LicenseManagerUserSubscriptions::CredentialsProvider;
  use Moose;
  has SecretsManagerCredentialsProvider => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::SecretsManagerCredentialsProvider');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::CredentialsProvider

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LicenseManagerUserSubscriptions::CredentialsProvider object:

  $service_obj->Method(Att1 => { SecretsManagerCredentialsProvider => $value, ..., SecretsManagerCredentialsProvider => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LicenseManagerUserSubscriptions::CredentialsProvider object:

  $result = $service_obj->Method(...);
  $result->Att1->SecretsManagerCredentialsProvider

=head1 DESCRIPTION

Contains information about the credential provider for user
administration.

=head1 ATTRIBUTES


=head2 SecretsManagerCredentialsProvider => L<Paws::LicenseManagerUserSubscriptions::SecretsManagerCredentialsProvider>

Identifies the Secrets Manager secret that contains credentials needed
for user administration in the Active Directory.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LicenseManagerUserSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

