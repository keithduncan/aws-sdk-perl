
package Paws::GreengrassV2::DeleteCoreDevice;
  use Moose;
  has CoreDeviceThingName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'coreDeviceThingName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCoreDevice');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/v2/coreDevices/{coreDeviceThingName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::DeleteCoreDevice - Arguments for method DeleteCoreDevice on L<Paws::GreengrassV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCoreDevice on the
L<AWS IoT Greengrass V2|Paws::GreengrassV2> service. Use the attributes of this class
as arguments to method DeleteCoreDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCoreDevice.

=head1 SYNOPSIS

    my $greengrass = Paws->service('GreengrassV2');
    $greengrass->DeleteCoreDevice(
      CoreDeviceThingName => 'MyCoreDeviceThingName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/DeleteCoreDevice>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CoreDeviceThingName => Str

The name of the core device. This is also the name of the IoT thing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCoreDevice in L<Paws::GreengrassV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

