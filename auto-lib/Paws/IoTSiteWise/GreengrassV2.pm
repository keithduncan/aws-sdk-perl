# Generated by default/object.tt
package Paws::IoTSiteWise::GreengrassV2;
  use Moose;
  has CoreDeviceOperatingSystem => (is => 'ro', isa => 'Str', request_name => 'coreDeviceOperatingSystem', traits => ['NameInRequest']);
  has CoreDeviceThingName => (is => 'ro', isa => 'Str', request_name => 'coreDeviceThingName', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::GreengrassV2

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTSiteWise::GreengrassV2 object:

  $service_obj->Method(Att1 => { CoreDeviceOperatingSystem => $value, ..., CoreDeviceThingName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTSiteWise::GreengrassV2 object:

  $result = $service_obj->Method(...);
  $result->Att1->CoreDeviceOperatingSystem

=head1 DESCRIPTION

Contains details for a gateway that runs on IoT Greengrass V2. To
create a gateway that runs on IoT Greengrass V2, you must deploy the
IoT SiteWise Edge component to your gateway device. Your Greengrass
device role
(https://docs.aws.amazon.com/greengrass/v2/developerguide/device-service-role.html)
must use the C<AWSIoTSiteWiseEdgeAccess> policy. For more information,
see Using IoT SiteWise at the edge
(https://docs.aws.amazon.com/iot-sitewise/latest/userguide/sw-gateways.html)
in the I<IoT SiteWise User Guide>.

=head1 ATTRIBUTES


=head2 CoreDeviceOperatingSystem => Str

The operating system of the core device in IoT Greengrass V2.


=head2 B<REQUIRED> CoreDeviceThingName => Str

The name of the IoT thing for your IoT Greengrass V2 core device.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

