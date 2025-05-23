# Generated by default/object.tt
package Paws::GeoRoutes::RouteLegGeometry;
  use Moose;
  has LineString => (is => 'ro', isa => 'ArrayRef[ArrayRef[Num]]');
  has Polyline => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoRoutes::RouteLegGeometry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GeoRoutes::RouteLegGeometry object:

  $service_obj->Method(Att1 => { LineString => $value, ..., Polyline => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GeoRoutes::RouteLegGeometry object:

  $result = $service_obj->Method(...);
  $result->Att1->LineString

=head1 DESCRIPTION

The returned Route leg geometry.

=head1 ATTRIBUTES


=head2 LineString => ArrayRef[ArrayRef[Num]]

An ordered list of positions used to plot a route on a map.

LineString and Polyline are mutually exclusive properties.


=head2 Polyline => Str

An ordered list of positions used to plot a route on a map in a lossy
compression format.

LineString and Polyline are mutually exclusive properties.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GeoRoutes>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

