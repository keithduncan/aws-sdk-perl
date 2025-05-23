# Generated by default/object.tt
package Paws::LicenseManagerUserSubscriptions::RdsSalSettings;
  use Moose;
  has RdsSalCredentialsProvider => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::CredentialsProvider', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::RdsSalSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LicenseManagerUserSubscriptions::RdsSalSettings object:

  $service_obj->Method(Att1 => { RdsSalCredentialsProvider => $value, ..., RdsSalCredentialsProvider => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LicenseManagerUserSubscriptions::RdsSalSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->RdsSalCredentialsProvider

=head1 DESCRIPTION

Server settings that are specific to a Remote Desktop Services (RDS)
license server.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RdsSalCredentialsProvider => L<Paws::LicenseManagerUserSubscriptions::CredentialsProvider>

The C<CredentialsProvider> resource contains a reference to the
credentials provider that's used for RDS license server user
administration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LicenseManagerUserSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

