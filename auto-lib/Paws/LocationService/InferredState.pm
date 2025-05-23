# Generated by default/object.tt
package Paws::LocationService::InferredState;
  use Moose;
  has Accuracy => (is => 'ro', isa => 'Paws::LocationService::PositionalAccuracy');
  has DeviationDistance => (is => 'ro', isa => 'Num');
  has Position => (is => 'ro', isa => 'ArrayRef[Num]');
  has ProxyDetected => (is => 'ro', isa => 'Bool', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::InferredState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LocationService::InferredState object:

  $service_obj->Method(Att1 => { Accuracy => $value, ..., ProxyDetected => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LocationService::InferredState object:

  $result = $service_obj->Method(...);
  $result->Att1->Accuracy

=head1 DESCRIPTION

The inferred state of the device, given the provided position, IP
address, cellular signals, and Wi-Fi- access points.

=head1 ATTRIBUTES


=head2 Accuracy => L<Paws::LocationService::PositionalAccuracy>

The level of certainty of the inferred position.


=head2 DeviationDistance => Num

The distance between the inferred position and the device's
self-reported position.


=head2 Position => ArrayRef[Num]

The device position inferred by the provided position, IP address,
cellular signals, and Wi-Fi- access points.


=head2 B<REQUIRED> ProxyDetected => Bool

Indicates if a proxy was used.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

