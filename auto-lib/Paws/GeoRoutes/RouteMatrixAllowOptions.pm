# Generated by default/object.tt
package Paws::GeoRoutes::RouteMatrixAllowOptions;
  use Moose;
  has Hot => (is => 'ro', isa => 'Bool');
  has Hov => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoRoutes::RouteMatrixAllowOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GeoRoutes::RouteMatrixAllowOptions object:

  $service_obj->Method(Att1 => { Hot => $value, ..., Hov => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GeoRoutes::RouteMatrixAllowOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->Hot

=head1 DESCRIPTION

Allow Options related to the route matrix.

=head1 ATTRIBUTES


=head2 Hot => Bool

Allow Hot (High Occupancy Toll) lanes while calculating the route.

Default value: C<false>


=head2 Hov => Bool

Allow Hov (High Occupancy vehicle) lanes while calculating the route.

Default value: C<false>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GeoRoutes>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

