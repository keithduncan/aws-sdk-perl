# Generated by default/object.tt
package Paws::GeoRoutes::IsolineAvoidanceAreaGeometry;
  use Moose;
  has BoundingBox => (is => 'ro', isa => 'ArrayRef[Num]');
  has Corridor => (is => 'ro', isa => 'Paws::GeoRoutes::Corridor');
  has Polygon => (is => 'ro', isa => 'ArrayRef[ArrayRef[ArrayRef[Num]]]');
  has PolylineCorridor => (is => 'ro', isa => 'Paws::GeoRoutes::PolylineCorridor');
  has PolylinePolygon => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoRoutes::IsolineAvoidanceAreaGeometry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GeoRoutes::IsolineAvoidanceAreaGeometry object:

  $service_obj->Method(Att1 => { BoundingBox => $value, ..., PolylinePolygon => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GeoRoutes::IsolineAvoidanceAreaGeometry object:

  $result = $service_obj->Method(...);
  $result->Att1->BoundingBox

=head1 DESCRIPTION

The avoidance geometry, to be included while calculating an isoline.

=head1 ATTRIBUTES


=head2 BoundingBox => ArrayRef[Num]

Geometry defined as a bounding box. The first pair represents the X and
Y coordinates (longitude and latitude,) of the southwest corner of the
bounding box; the second pair represents the X and Y coordinates
(longitude and latitude) of the northeast corner.


=head2 Corridor => L<Paws::GeoRoutes::Corridor>

Geometry defined as a corridor - a LineString with a radius that
defines the width of the corridor.


=head2 Polygon => ArrayRef[ArrayRef[ArrayRef[Num]]]

A list of Polygon will be excluded for calculating isolines, the list
can only contain 1 polygon.


=head2 PolylineCorridor => L<Paws::GeoRoutes::PolylineCorridor>

Geometry defined as an encoded corridor E<ndash> a polyline with a
radius that defines the width of the corridor. For more information on
polyline encoding, see
https://github.com/heremaps/flexiblepolyline/blob/master/README.md
(https://github.com/heremaps/flexiblepolyline/blob/master/README.md).


=head2 PolylinePolygon => ArrayRef[Str|Undef]

A list of PolylinePolygon's that are excluded for calculating isolines,
the list can only contain 1 polygon. For more information on polyline
encoding, see
https://github.com/heremaps/flexiblepolyline/blob/master/README.md
(https://github.com/heremaps/flexiblepolyline/blob/master/README.md).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GeoRoutes>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

