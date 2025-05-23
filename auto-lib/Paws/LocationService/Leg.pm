# Generated by default/object.tt
package Paws::LocationService::Leg;
  use Moose;
  has Distance => (is => 'ro', isa => 'Num', required => 1);
  has DurationSeconds => (is => 'ro', isa => 'Num', required => 1);
  has EndPosition => (is => 'ro', isa => 'ArrayRef[Num]', required => 1);
  has Geometry => (is => 'ro', isa => 'Paws::LocationService::LegGeometry');
  has StartPosition => (is => 'ro', isa => 'ArrayRef[Num]', required => 1);
  has Steps => (is => 'ro', isa => 'ArrayRef[Paws::LocationService::Step]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::Leg

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LocationService::Leg object:

  $service_obj->Method(Att1 => { Distance => $value, ..., Steps => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LocationService::Leg object:

  $result = $service_obj->Method(...);
  $result->Att1->Distance

=head1 DESCRIPTION

Contains the calculated route's details for each path between a pair of
positions. The number of legs returned corresponds to one fewer than
the total number of positions in the request.

For example, a route with a departure position and destination position
returns one leg with the positions snapped to a nearby road
(https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html):

=over

=item *

The C<StartPosition> is the departure position.

=item *

The C<EndPosition> is the destination position.

=back

A route with a waypoint between the departure and destination position
returns two legs with the positions snapped to a nearby road:

=over

=item *

Leg 1: The C<StartPosition> is the departure position . The
C<EndPosition> is the waypoint positon.

=item *

Leg 2: The C<StartPosition> is the waypoint position. The
C<EndPosition> is the destination position.

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> Distance => Num

The distance between the leg's C<StartPosition> and C<EndPosition>
along a calculated route.

=over

=item *

The default measurement is C<Kilometers> unless the request specifies a
C<DistanceUnit> of C<Miles>.

=back



=head2 B<REQUIRED> DurationSeconds => Num

The estimated travel time between the leg's C<StartPosition> and
C<EndPosition>. The travel mode and departure time that you specify in
the request determines the calculated time.


=head2 B<REQUIRED> EndPosition => ArrayRef[Num]

The terminating position of the leg. Follows the format
C<[longitude,latitude]>.

If the C<EndPosition> isn't located on a road, it's snapped to a nearby
road
(https://docs.aws.amazon.com/location/latest/developerguide/nap-to-nearby-road.html).


=head2 Geometry => L<Paws::LocationService::LegGeometry>

Contains the calculated route's path as a linestring geometry.


=head2 B<REQUIRED> StartPosition => ArrayRef[Num]

The starting position of the leg. Follows the format
C<[longitude,latitude]>.

If the C<StartPosition> isn't located on a road, it's snapped to a
nearby road
(https://docs.aws.amazon.com/location/latest/developerguide/snap-to-nearby-road.html).


=head2 B<REQUIRED> Steps => ArrayRef[L<Paws::LocationService::Step>]

Contains a list of steps, which represent subsections of a leg. Each
step provides instructions for how to move to the next step in the leg
such as the step's start position, end position, travel distance,
travel duration, and geometry offset.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

