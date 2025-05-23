# Generated by default/object.tt
package Paws::Account::ContactInformation;
  use Moose;
  has AddressLine1 => (is => 'ro', isa => 'Str', required => 1);
  has AddressLine2 => (is => 'ro', isa => 'Str');
  has AddressLine3 => (is => 'ro', isa => 'Str');
  has City => (is => 'ro', isa => 'Str', required => 1);
  has CompanyName => (is => 'ro', isa => 'Str');
  has CountryCode => (is => 'ro', isa => 'Str', required => 1);
  has DistrictOrCounty => (is => 'ro', isa => 'Str');
  has FullName => (is => 'ro', isa => 'Str', required => 1);
  has PhoneNumber => (is => 'ro', isa => 'Str', required => 1);
  has PostalCode => (is => 'ro', isa => 'Str', required => 1);
  has StateOrRegion => (is => 'ro', isa => 'Str');
  has WebsiteUrl => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Account::ContactInformation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Account::ContactInformation object:

  $service_obj->Method(Att1 => { AddressLine1 => $value, ..., WebsiteUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Account::ContactInformation object:

  $result = $service_obj->Method(...);
  $result->Att1->AddressLine1

=head1 DESCRIPTION

Contains the details of the primary contact information associated with
an Amazon Web Services account.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddressLine1 => Str

The first line of the primary contact address.


=head2 AddressLine2 => Str

The second line of the primary contact address, if any.


=head2 AddressLine3 => Str

The third line of the primary contact address, if any.


=head2 B<REQUIRED> City => Str

The city of the primary contact address.


=head2 CompanyName => Str

The name of the company associated with the primary contact
information, if any.


=head2 B<REQUIRED> CountryCode => Str

The ISO-3166 two-letter country code for the primary contact address.


=head2 DistrictOrCounty => Str

The district or county of the primary contact address, if any.


=head2 B<REQUIRED> FullName => Str

The full name of the primary contact address.


=head2 B<REQUIRED> PhoneNumber => Str

The phone number of the primary contact information. The number will be
validated and, in some countries, checked for activation.


=head2 B<REQUIRED> PostalCode => Str

The postal code of the primary contact address.


=head2 StateOrRegion => Str

The state or region of the primary contact address. If the mailing
address is within the United States (US), the value in this field can
be either a two character state code (for example, C<NJ>) or the full
state name (for example, C<New Jersey>). This field is required in the
following countries: C<US>, C<CA>, C<GB>, C<DE>, C<JP>, C<IN>, and
C<BR>.


=head2 WebsiteUrl => Str

The URL of the website associated with the primary contact information,
if any.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Account>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

