# Generated by default/object.tt
package Paws::LocationService::Circle;
  use Moose;
  has Center => (is => 'ro', isa => 'ArrayRef[Num]', required => 1);
  has Radius => (is => 'ro', isa => 'Num', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::Circle

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LocationService::Circle object:

  $service_obj->Method(Att1 => { Center => $value, ..., Radius => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LocationService::Circle object:

  $result = $service_obj->Method(...);
  $result->Att1->Center

=head1 DESCRIPTION

A circle on the earth, as defined by a center point and a radius.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Center => ArrayRef[Num]

A single point geometry, specifying the center of the circle, using WGS
84 (https://gisgeography.com/wgs84-world-geodetic-system/) coordinates,
in the form C<[longitude, latitude]>.


=head2 B<REQUIRED> Radius => Num

The radius of the circle in meters. Must be greater than zero and no
larger than 100,000 (100 kilometers).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

