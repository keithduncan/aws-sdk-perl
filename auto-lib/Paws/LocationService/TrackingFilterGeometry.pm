# Generated by default/object.tt
package Paws::LocationService::TrackingFilterGeometry;
  use Moose;
  has Polygon => (is => 'ro', isa => 'ArrayRef[ArrayRef[ArrayRef[Num]]]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::TrackingFilterGeometry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LocationService::TrackingFilterGeometry object:

  $service_obj->Method(Att1 => { Polygon => $value, ..., Polygon => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LocationService::TrackingFilterGeometry object:

  $result = $service_obj->Method(...);
  $result->Att1->Polygon

=head1 DESCRIPTION

The geomerty used to filter device positions.

=head1 ATTRIBUTES


=head2 Polygon => ArrayRef[ArrayRef[ArrayRef[Num]]]

The set of arrays which define the polygon. A polygon can have between
4 and 1000 vertices.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

