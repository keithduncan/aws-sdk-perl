# Generated by default/object.tt
package Paws::Route53::Coordinates;
  use Moose;
  has Latitude => (is => 'ro', isa => 'Str', required => 1);
  has Longitude => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::Coordinates

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::Coordinates object:

  $service_obj->Method(Att1 => { Latitude => $value, ..., Longitude => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::Coordinates object:

  $result = $service_obj->Method(...);
  $result->Att1->Latitude

=head1 DESCRIPTION

A complex type that lists the coordinates for a geoproximity resource
record.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Latitude => Str

Specifies a coordinate of the northE<ndash>south position of a
geographic point on the surface of the Earth (-90 - 90).


=head2 B<REQUIRED> Longitude => Str

Specifies a coordinate of the eastE<ndash>west position of a geographic
point on the surface of the Earth (-180 - 180).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

