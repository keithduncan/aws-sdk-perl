# Generated by default/object.tt
package Paws::Outposts::Address;
  use Moose;
  has AddressLine1 => (is => 'ro', isa => 'Str', required => 1);
  has AddressLine2 => (is => 'ro', isa => 'Str');
  has AddressLine3 => (is => 'ro', isa => 'Str');
  has City => (is => 'ro', isa => 'Str', required => 1);
  has ContactName => (is => 'ro', isa => 'Str');
  has ContactPhoneNumber => (is => 'ro', isa => 'Str');
  has CountryCode => (is => 'ro', isa => 'Str', required => 1);
  has DistrictOrCounty => (is => 'ro', isa => 'Str');
  has Municipality => (is => 'ro', isa => 'Str');
  has PostalCode => (is => 'ro', isa => 'Str', required => 1);
  has StateOrRegion => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::Address

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Outposts::Address object:

  $service_obj->Method(Att1 => { AddressLine1 => $value, ..., StateOrRegion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Outposts::Address object:

  $result = $service_obj->Method(...);
  $result->Att1->AddressLine1

=head1 DESCRIPTION

Information about an address.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddressLine1 => Str

The first line of the address.


=head2 AddressLine2 => Str

The second line of the address.


=head2 AddressLine3 => Str

The third line of the address.


=head2 B<REQUIRED> City => Str

The city for the address.


=head2 ContactName => Str

The name of the contact.


=head2 ContactPhoneNumber => Str

The phone number of the contact.


=head2 B<REQUIRED> CountryCode => Str

The ISO-3166 two-letter country code for the address.


=head2 DistrictOrCounty => Str

The district or county for the address.


=head2 Municipality => Str

The municipality for the address.


=head2 B<REQUIRED> PostalCode => Str

The postal code for the address.


=head2 B<REQUIRED> StateOrRegion => Str

The state for the address.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

