# Generated by default/object.tt
package Paws::GeoRoutes::RoutePassThroughWaypoint;
  use Moose;
  has GeometryOffset => (is => 'ro', isa => 'Int');
  has Place => (is => 'ro', isa => 'Paws::GeoRoutes::RoutePassThroughPlace', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoRoutes::RoutePassThroughWaypoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GeoRoutes::RoutePassThroughWaypoint object:

  $service_obj->Method(Att1 => { GeometryOffset => $value, ..., Place => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GeoRoutes::RoutePassThroughWaypoint object:

  $result = $service_obj->Method(...);
  $result->Att1->GeometryOffset

=head1 DESCRIPTION

If the waypoint should be treated as a stop. If yes, the route is split
up into different legs around the stop.

=head1 ATTRIBUTES


=head2 GeometryOffset => Int

Offset in the leg geometry corresponding to the start of this step.


=head2 B<REQUIRED> Place => L<Paws::GeoRoutes::RoutePassThroughPlace>

The place details.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GeoRoutes>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

