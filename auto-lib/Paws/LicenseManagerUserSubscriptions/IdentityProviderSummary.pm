# Generated by default/object.tt
package Paws::LicenseManagerUserSubscriptions::IdentityProviderSummary;
  use Moose;
  has FailureMessage => (is => 'ro', isa => 'Str');
  has IdentityProvider => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::IdentityProvider', required => 1);
  has IdentityProviderArn => (is => 'ro', isa => 'Str');
  has Product => (is => 'ro', isa => 'Str', required => 1);
  has Settings => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::Settings', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::IdentityProviderSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LicenseManagerUserSubscriptions::IdentityProviderSummary object:

  $service_obj->Method(Att1 => { FailureMessage => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LicenseManagerUserSubscriptions::IdentityProviderSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->FailureMessage

=head1 DESCRIPTION

Describes an identity provider.

=head1 ATTRIBUTES


=head2 FailureMessage => Str

The failure message associated with an identity provider.


=head2 B<REQUIRED> IdentityProvider => L<Paws::LicenseManagerUserSubscriptions::IdentityProvider>

The C<IdentityProvider> resource contains information about an identity
provider.


=head2 IdentityProviderArn => Str

The Amazon Resource Name (ARN) of the identity provider.


=head2 B<REQUIRED> Product => Str

The name of the user-based subscription product.


=head2 B<REQUIRED> Settings => L<Paws::LicenseManagerUserSubscriptions::Settings>

The C<Settings> resource contains details about the registered identity
providerE<rsquo>s product related configuration settings, such as the
subnets to provision VPC endpoints.


=head2 B<REQUIRED> Status => Str

The status of the identity provider.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LicenseManagerUserSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

