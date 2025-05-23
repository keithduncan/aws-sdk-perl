# Generated by default/object.tt
package Paws::GeoPlaces::AddressComponentPhonemes;
  use Moose;
  has Block => (is => 'ro', isa => 'ArrayRef[Paws::GeoPlaces::PhonemeTranscription]');
  has Country => (is => 'ro', isa => 'ArrayRef[Paws::GeoPlaces::PhonemeTranscription]');
  has District => (is => 'ro', isa => 'ArrayRef[Paws::GeoPlaces::PhonemeTranscription]');
  has Locality => (is => 'ro', isa => 'ArrayRef[Paws::GeoPlaces::PhonemeTranscription]');
  has Region => (is => 'ro', isa => 'ArrayRef[Paws::GeoPlaces::PhonemeTranscription]');
  has Street => (is => 'ro', isa => 'ArrayRef[Paws::GeoPlaces::PhonemeTranscription]');
  has SubBlock => (is => 'ro', isa => 'ArrayRef[Paws::GeoPlaces::PhonemeTranscription]');
  has SubDistrict => (is => 'ro', isa => 'ArrayRef[Paws::GeoPlaces::PhonemeTranscription]');
  has SubRegion => (is => 'ro', isa => 'ArrayRef[Paws::GeoPlaces::PhonemeTranscription]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoPlaces::AddressComponentPhonemes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GeoPlaces::AddressComponentPhonemes object:

  $service_obj->Method(Att1 => { Block => $value, ..., SubRegion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GeoPlaces::AddressComponentPhonemes object:

  $result = $service_obj->Method(...);
  $result->Att1->Block

=head1 DESCRIPTION

How to pronounce the various components of the address or place.

=head1 ATTRIBUTES


=head2 Block => ArrayRef[L<Paws::GeoPlaces::PhonemeTranscription>]

How to pronounce the name of the block.


=head2 Country => ArrayRef[L<Paws::GeoPlaces::PhonemeTranscription>]

The alpha-2 or alpha-3 character code for the country that the results
will be present in.


=head2 District => ArrayRef[L<Paws::GeoPlaces::PhonemeTranscription>]

How to pronounce the district or division of a city results should be
present in.


=head2 Locality => ArrayRef[L<Paws::GeoPlaces::PhonemeTranscription>]

How to pronounce the city or locality results should be present in.

Example: C<Vancouver>.


=head2 Region => ArrayRef[L<Paws::GeoPlaces::PhonemeTranscription>]

How to pronounce the region or state results should be to be present
in.


=head2 Street => ArrayRef[L<Paws::GeoPlaces::PhonemeTranscription>]

How to pronounce the name of the street results should be present in.


=head2 SubBlock => ArrayRef[L<Paws::GeoPlaces::PhonemeTranscription>]

How to pronounce the name of the sub-block.


=head2 SubDistrict => ArrayRef[L<Paws::GeoPlaces::PhonemeTranscription>]

How to pronounce the sub-district or division of a city results should
be present in.


=head2 SubRegion => ArrayRef[L<Paws::GeoPlaces::PhonemeTranscription>]

How to pronounce the sub-region or county for which results should be
present in.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GeoPlaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

