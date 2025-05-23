# Generated by default/object.tt
package Paws::GeoPlaces::Category;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LocalizedName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Primary => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoPlaces::Category

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GeoPlaces::Category object:

  $service_obj->Method(Att1 => { Id => $value, ..., Primary => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GeoPlaces::Category object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Category of the C<Place> returned.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The category ID.


=head2 LocalizedName => Str

Localized name of the category type.


=head2 B<REQUIRED> Name => Str

The category name.


=head2 Primary => Bool

Boolean which indicates if this category is the primary offered by the
place.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GeoPlaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

