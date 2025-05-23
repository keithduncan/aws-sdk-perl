# Generated by default/object.tt
package Paws::LocationService::TruckDimensions;
  use Moose;
  has Height => (is => 'ro', isa => 'Num');
  has Length => (is => 'ro', isa => 'Num');
  has Unit => (is => 'ro', isa => 'Str');
  has Width => (is => 'ro', isa => 'Num');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::TruckDimensions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LocationService::TruckDimensions object:

  $service_obj->Method(Att1 => { Height => $value, ..., Width => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LocationService::TruckDimensions object:

  $result = $service_obj->Method(...);
  $result->Att1->Height

=head1 DESCRIPTION

Contains details about the truck dimensions in the unit of measurement
that you specify. Used to filter out roads that can't support or allow
the specified dimensions for requests that specify C<TravelMode> as
C<Truck>.

=head1 ATTRIBUTES


=head2 Height => Num

The height of the truck.

=over

=item *

For example, C<4.5>.

=back

For routes calculated with a HERE resource, this value must be between
0 and 50 meters.


=head2 Length => Num

The length of the truck.

=over

=item *

For example, C<15.5>.

=back

For routes calculated with a HERE resource, this value must be between
0 and 300 meters.


=head2 Unit => Str

Specifies the unit of measurement for the truck dimensions.

Default Value: C<Meters>


=head2 Width => Num

The width of the truck.

=over

=item *

For example, C<4.5>.

=back

For routes calculated with a HERE resource, this value must be between
0 and 50 meters.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

