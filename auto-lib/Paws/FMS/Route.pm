# Generated by default/object.tt
package Paws::FMS::Route;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str');
  has DestinationType => (is => 'ro', isa => 'Str');
  has Target => (is => 'ro', isa => 'Str');
  has TargetType => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::Route

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FMS::Route object:

  $service_obj->Method(Att1 => { Destination => $value, ..., TargetType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FMS::Route object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

Describes a route in a route table.

=head1 ATTRIBUTES


=head2 Destination => Str

The destination of the route.


=head2 DestinationType => Str

The type of destination for the route.


=head2 Target => Str

The route's target.


=head2 TargetType => Str

The type of target for the route.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

