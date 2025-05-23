# Generated by default/object.tt
package Paws::IoTWireless::LoRaWANDevice;
  use Moose;
  has AbpV1_0_x => (is => 'ro', isa => 'Paws::IoTWireless::AbpV1_0_x');
  has AbpV1_1 => (is => 'ro', isa => 'Paws::IoTWireless::AbpV1_1');
  has DevEui => (is => 'ro', isa => 'Str');
  has DeviceProfileId => (is => 'ro', isa => 'Str');
  has FPorts => (is => 'ro', isa => 'Paws::IoTWireless::FPorts');
  has OtaaV1_0_x => (is => 'ro', isa => 'Paws::IoTWireless::OtaaV1_0_x');
  has OtaaV1_1 => (is => 'ro', isa => 'Paws::IoTWireless::OtaaV1_1');
  has ServiceProfileId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::LoRaWANDevice

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTWireless::LoRaWANDevice object:

  $service_obj->Method(Att1 => { AbpV1_0_x => $value, ..., ServiceProfileId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTWireless::LoRaWANDevice object:

  $result = $service_obj->Method(...);
  $result->Att1->AbpV1_0_x

=head1 DESCRIPTION

LoRaWAN object for create functions.

=head1 ATTRIBUTES


=head2 AbpV1_0_x => L<Paws::IoTWireless::AbpV1_0_x>

LoRaWAN object for create APIs


=head2 AbpV1_1 => L<Paws::IoTWireless::AbpV1_1>

ABP device object for create APIs for v1.1


=head2 DevEui => Str

The DevEUI value.


=head2 DeviceProfileId => Str

The ID of the device profile for the new wireless device.


=head2 FPorts => L<Paws::IoTWireless::FPorts>




=head2 OtaaV1_0_x => L<Paws::IoTWireless::OtaaV1_0_x>

OTAA device object for create APIs for v1.0.x


=head2 OtaaV1_1 => L<Paws::IoTWireless::OtaaV1_1>

OTAA device object for v1.1 for create APIs


=head2 ServiceProfileId => Str

The ID of the service profile.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

