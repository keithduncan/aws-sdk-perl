# Generated by default/object.tt
package Paws::GeoPlaces::AccessPoint;
  use Moose;
  has Position => (is => 'ro', isa => 'ArrayRef[Num]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoPlaces::AccessPoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GeoPlaces::AccessPoint object:

  $service_obj->Method(Att1 => { Position => $value, ..., Position => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GeoPlaces::AccessPoint object:

  $result = $service_obj->Method(...);
  $result->Att1->Position

=head1 DESCRIPTION

Position of the access point represented by longitude and latitude for
a vehicle.

=head1 ATTRIBUTES


=head2 Position => ArrayRef[Num]

The position, in longitude and latitude.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GeoPlaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

