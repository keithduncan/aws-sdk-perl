# Generated by default/object.tt
package Paws::GeoRoutes::RoutePedestrianSpan;
  use Moose;
  has BestCaseDuration => (is => 'ro', isa => 'Int');
  has Country => (is => 'ro', isa => 'Str');
  has Distance => (is => 'ro', isa => 'Int');
  has Duration => (is => 'ro', isa => 'Int');
  has DynamicSpeed => (is => 'ro', isa => 'Paws::GeoRoutes::RouteSpanDynamicSpeedDetails');
  has FunctionalClassification => (is => 'ro', isa => 'Int');
  has GeometryOffset => (is => 'ro', isa => 'Int');
  has Incidents => (is => 'ro', isa => 'ArrayRef[Int]');
  has Names => (is => 'ro', isa => 'ArrayRef[Paws::GeoRoutes::LocalizedString]');
  has PedestrianAccess => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Region => (is => 'ro', isa => 'Str');
  has RoadAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RouteNumbers => (is => 'ro', isa => 'ArrayRef[Paws::GeoRoutes::RouteNumber]');
  has SpeedLimit => (is => 'ro', isa => 'Paws::GeoRoutes::RouteSpanSpeedLimitDetails');
  has TypicalDuration => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoRoutes::RoutePedestrianSpan

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GeoRoutes::RoutePedestrianSpan object:

  $service_obj->Method(Att1 => { BestCaseDuration => $value, ..., TypicalDuration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GeoRoutes::RoutePedestrianSpan object:

  $result = $service_obj->Method(...);
  $result->Att1->BestCaseDuration

=head1 DESCRIPTION

Span computed for the requested SpanAdditionalFeatures.

=head1 ATTRIBUTES


=head2 BestCaseDuration => Int

Duration of the computed span without traffic congestion.

B<Unit>: C<seconds>


=head2 Country => Str

3 letter Country code corresponding to the Span.


=head2 Distance => Int

Distance of the computed span. This feature doesn't split a span, but
is always computed on a span split by other properties.


=head2 Duration => Int

Duration of the computed span. This feature doesn't split a span, but
is always computed on a span split by other properties.

B<Unit>: C<seconds>


=head2 DynamicSpeed => L<Paws::GeoRoutes::RouteSpanDynamicSpeedDetails>

Dynamic speed details corresponding to the span.

B<Unit>: C<KilometersPerHour>


=head2 FunctionalClassification => Int

Functional classification of the road segment corresponding to the
span.


=head2 GeometryOffset => Int

Offset in the leg geometry corresponding to the start of this span.


=head2 Incidents => ArrayRef[Int]

Incidents corresponding to the span. These index into the Incidents in
the parent Leg.


=head2 Names => ArrayRef[L<Paws::GeoRoutes::LocalizedString>]

Provides an array of names of the pedestrian span in available
languages.


=head2 PedestrianAccess => ArrayRef[Str|Undef]

Access attributes for a pedestrian corresponding to the span.


=head2 Region => Str

2-3 letter Region code corresponding to the Span. This is either a
province or a state.


=head2 RoadAttributes => ArrayRef[Str|Undef]

Attributes for the road segment corresponding to the span.


=head2 RouteNumbers => ArrayRef[L<Paws::GeoRoutes::RouteNumber>]

Designated route name or number corresponding to the span.


=head2 SpeedLimit => L<Paws::GeoRoutes::RouteSpanSpeedLimitDetails>

Speed limit details corresponding to the span.

B<Unit>: C<KilometersPerHour>


=head2 TypicalDuration => Int

Duration of the computed span under typical traffic congestion.

B<Unit>: C<seconds>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GeoRoutes>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

