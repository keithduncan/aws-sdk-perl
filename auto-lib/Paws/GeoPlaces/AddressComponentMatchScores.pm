# Generated by default/object.tt
package Paws::GeoPlaces::AddressComponentMatchScores;
  use Moose;
  has AddressNumber => (is => 'ro', isa => 'Num');
  has Block => (is => 'ro', isa => 'Num');
  has Building => (is => 'ro', isa => 'Num');
  has Country => (is => 'ro', isa => 'Num');
  has District => (is => 'ro', isa => 'Num');
  has Intersection => (is => 'ro', isa => 'ArrayRef[Num]');
  has Locality => (is => 'ro', isa => 'Num');
  has PostalCode => (is => 'ro', isa => 'Num');
  has Region => (is => 'ro', isa => 'Num');
  has SubBlock => (is => 'ro', isa => 'Num');
  has SubDistrict => (is => 'ro', isa => 'Num');
  has SubRegion => (is => 'ro', isa => 'Num');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoPlaces::AddressComponentMatchScores

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GeoPlaces::AddressComponentMatchScores object:

  $service_obj->Method(Att1 => { AddressNumber => $value, ..., SubRegion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GeoPlaces::AddressComponentMatchScores object:

  $result = $service_obj->Method(...);
  $result->Att1->AddressNumber

=head1 DESCRIPTION

Indicates how well the entire input matches the returned. It is equal
to 1 if all input tokens are recognized and matched.

=head1 ATTRIBUTES


=head2 AddressNumber => Num

The house number or address results should have.


=head2 Block => Num

Name of the block.

Example: C<Sunny Mansion 203 block: 2 Chome>


=head2 Building => Num

The name of the building at the address.


=head2 Country => Num

The alpha-2 or alpha-3 character code for the country that the results
will be present in.


=head2 District => Num

The district or division of a city the results should be present in.


=head2 Intersection => ArrayRef[Num]

Name of the streets in the intersection.

Example: C<["FriedrichstraE<szlig>e","Unter den Linden"]>


=head2 Locality => Num

The city or locality results should be present in.

Example: C<Vancouver>.


=head2 PostalCode => Num

An alphanumeric string included in a postal address to facilitate mail
sorting, such as post code, postcode, or ZIP code, for which the result
should posses.


=head2 Region => Num

The region or state results should be to be present in.

Example: C<North Rhine-Westphalia>.


=head2 SubBlock => Num

Name of sub-block.

Example: C<Sunny Mansion 203 sub-block: 4>


=head2 SubDistrict => Num

A subdivision of a district.

Example: C<Minden-LE<uuml>bbecke>


=head2 SubRegion => Num

The sub-region or county for which results should be present in.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GeoPlaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

