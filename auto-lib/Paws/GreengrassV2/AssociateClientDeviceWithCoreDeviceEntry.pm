# Generated by default/object.tt
package Paws::GreengrassV2::AssociateClientDeviceWithCoreDeviceEntry;
  use Moose;
  has ThingName => (is => 'ro', isa => 'Str', request_name => 'thingName', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::AssociateClientDeviceWithCoreDeviceEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GreengrassV2::AssociateClientDeviceWithCoreDeviceEntry object:

  $service_obj->Method(Att1 => { ThingName => $value, ..., ThingName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GreengrassV2::AssociateClientDeviceWithCoreDeviceEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->ThingName

=head1 DESCRIPTION

Contains a request to associate a client device with a core device. The
BatchAssociateClientDeviceWithCoreDevice
(https://docs.aws.amazon.com/greengrass/v2/APIReference/API_BatchAssociateClientDeviceWithCoreDevice.html)
operation consumes a list of these requests.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ThingName => Str

The name of the IoT thing that represents the client device to
associate.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GreengrassV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

