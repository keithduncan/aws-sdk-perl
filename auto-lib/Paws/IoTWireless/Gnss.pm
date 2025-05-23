# Generated by default/object.tt
package Paws::IoTWireless::Gnss;
  use Moose;
  has AssistAltitude => (is => 'ro', isa => 'Num');
  has AssistPosition => (is => 'ro', isa => 'ArrayRef[Num]');
  has CaptureTime => (is => 'ro', isa => 'Num');
  has CaptureTimeAccuracy => (is => 'ro', isa => 'Num');
  has Payload => (is => 'ro', isa => 'Str', required => 1);
  has Use2DSolver => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::Gnss

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTWireless::Gnss object:

  $service_obj->Method(Att1 => { AssistAltitude => $value, ..., Use2DSolver => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTWireless::Gnss object:

  $result = $service_obj->Method(...);
  $result->Att1->AssistAltitude

=head1 DESCRIPTION

Global navigation satellite system (GNSS) object used for positioning.

=head1 ATTRIBUTES


=head2 AssistAltitude => Num

Optional assistance altitude, which is the altitude of the device at
capture time, specified in meters above the WGS84 reference ellipsoid.


=head2 AssistPosition => ArrayRef[Num]

Optional assistance position information, specified using latitude and
longitude values in degrees. The coordinates are inside the WGS84
reference frame.


=head2 CaptureTime => Num

Optional parameter that gives an estimate of the time when the GNSS
scan information is taken, in seconds GPS time (GPST). If capture time
is not specified, the local server time is used.


=head2 CaptureTimeAccuracy => Num

Optional value that gives the capture time estimate accuracy, in
seconds. If capture time accuracy is not specified, default value of
300 is used.


=head2 B<REQUIRED> Payload => Str

Payload that contains the GNSS scan result, or NAV message, in
hexadecimal notation.


=head2 Use2DSolver => Bool

Optional parameter that forces 2D solve, which modifies the positioning
algorithm to a 2D solution problem. When this parameter is specified,
the assistance altitude should have an accuracy of at least 10 meters.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

