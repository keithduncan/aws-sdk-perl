# Generated by default/object.tt
package Paws::IoTWireless::PositionConfigurationItem;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str');
  has ResourceIdentifier => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has Solvers => (is => 'ro', isa => 'Paws::IoTWireless::PositionSolverDetails');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::PositionConfigurationItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTWireless::PositionConfigurationItem object:

  $service_obj->Method(Att1 => { Destination => $value, ..., Solvers => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTWireless::PositionConfigurationItem object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

The wrapper for a position configuration.

=head1 ATTRIBUTES


=head2 Destination => Str

The position data destination that describes the AWS IoT rule that
processes the device's position data for use by AWS IoT Core for
LoRaWAN.


=head2 ResourceIdentifier => Str

Resource identifier for the position configuration.


=head2 ResourceType => Str

Resource type of the resource for the position configuration.


=head2 Solvers => L<Paws::IoTWireless::PositionSolverDetails>

The details of the positioning solver object used to compute the
location.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

