# Generated by default/object.tt
package Paws::GeoPlaces::GeocodeResultItem;
  use Moose;
  has AccessPoints => (is => 'ro', isa => 'ArrayRef[Paws::GeoPlaces::AccessPoint]');
  has Address => (is => 'ro', isa => 'Paws::GeoPlaces::Address');
  has AddressNumberCorrected => (is => 'ro', isa => 'Bool');
  has Categories => (is => 'ro', isa => 'ArrayRef[Paws::GeoPlaces::Category]');
  has Distance => (is => 'ro', isa => 'Int');
  has FoodTypes => (is => 'ro', isa => 'ArrayRef[Paws::GeoPlaces::FoodType]');
  has MapView => (is => 'ro', isa => 'ArrayRef[Num]');
  has MatchScores => (is => 'ro', isa => 'Paws::GeoPlaces::MatchScoreDetails');
  has PlaceId => (is => 'ro', isa => 'Str', required => 1);
  has PlaceType => (is => 'ro', isa => 'Str', required => 1);
  has PoliticalView => (is => 'ro', isa => 'Str');
  has Position => (is => 'ro', isa => 'ArrayRef[Num]');
  has PostalCodeDetails => (is => 'ro', isa => 'ArrayRef[Paws::GeoPlaces::PostalCodeDetails]');
  has TimeZone => (is => 'ro', isa => 'Paws::GeoPlaces::TimeZone');
  has Title => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoPlaces::GeocodeResultItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GeoPlaces::GeocodeResultItem object:

  $service_obj->Method(Att1 => { AccessPoints => $value, ..., Title => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GeoPlaces::GeocodeResultItem object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessPoints

=head1 DESCRIPTION

The Geocoded result.

=head1 ATTRIBUTES


=head2 AccessPoints => ArrayRef[L<Paws::GeoPlaces::AccessPoint>]

Position of the access point represent by longitude and latitude.


=head2 Address => L<Paws::GeoPlaces::Address>

The place's address.


=head2 AddressNumberCorrected => Bool

Boolean indicating if the address provided has been corrected.


=head2 Categories => ArrayRef[L<Paws::GeoPlaces::Category>]

Categories of results that results must belong to.


=head2 Distance => Int

The distance in meters from the QueryPosition.


=head2 FoodTypes => ArrayRef[L<Paws::GeoPlaces::FoodType>]

List of food types offered by this result.


=head2 MapView => ArrayRef[Num]

The bounding box enclosing the geometric shape (area or line) that an
individual result covers.

The bounding box formed is defined as a set 4 coordinates: C<[{westward
lng}, {southern lat}, {eastward lng}, {northern lat}]>


=head2 MatchScores => L<Paws::GeoPlaces::MatchScoreDetails>

Indicates how well the entire input matches the returned. It is equal
to 1 if all input tokens are recognized and matched.


=head2 B<REQUIRED> PlaceId => Str

The C<PlaceId> of the place you wish to receive the information for.


=head2 B<REQUIRED> PlaceType => Str

A C<PlaceType> is a category that the result place must belong to.


=head2 PoliticalView => Str

The alpha-2 or alpha-3 character code for the political view of a
country. The political view applies to the results of the request to
represent unresolved territorial claims through the point of view of
the specified country.


=head2 Position => ArrayRef[Num]

The position in longitude and latitude.


=head2 PostalCodeDetails => ArrayRef[L<Paws::GeoPlaces::PostalCodeDetails>]

Contains details about the postal code of the place/result.


=head2 TimeZone => L<Paws::GeoPlaces::TimeZone>

The time zone in which the place is located.


=head2 B<REQUIRED> Title => Str

The localized display name of this result item based on request
parameter C<language>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GeoPlaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

