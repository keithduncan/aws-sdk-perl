
package Paws::GreengrassV2::UpdateConnectivityInfo;
  use Moose;
  has ConnectivityInfo => (is => 'ro', isa => 'ArrayRef[Paws::GreengrassV2::ConnectivityInfo]', traits => ['NameInRequest'], request_name => 'ConnectivityInfo', required => 1);
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConnectivityInfo');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/things/{thingName}/connectivityInfo');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GreengrassV2::UpdateConnectivityInfoResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::UpdateConnectivityInfo - Arguments for method UpdateConnectivityInfo on L<Paws::GreengrassV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConnectivityInfo on the
L<AWS IoT Greengrass V2|Paws::GreengrassV2> service. Use the attributes of this class
as arguments to method UpdateConnectivityInfo.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConnectivityInfo.

=head1 SYNOPSIS

    my $greengrass = Paws->service('GreengrassV2');
    my $UpdateConnectivityInfoResponse = $greengrass->UpdateConnectivityInfo(
      ConnectivityInfo => [
        {
          HostAddress => 'MyString',    # OPTIONAL
          Id          => 'MyString',    # OPTIONAL
          Metadata    => 'MyString',    # OPTIONAL
          PortNumber  => 1,             # max: 65535; OPTIONAL
        },
        ...
      ],
      ThingName => 'MyCoreDeviceThingName',

    );

    # Results:
    my $Message = $UpdateConnectivityInfoResponse->Message;
    my $Version = $UpdateConnectivityInfoResponse->Version;

    # Returns a L<Paws::GreengrassV2::UpdateConnectivityInfoResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/UpdateConnectivityInfo>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectivityInfo => ArrayRef[L<Paws::GreengrassV2::ConnectivityInfo>]

The connectivity information for the core device.



=head2 B<REQUIRED> ThingName => Str

The name of the core device. This is also the name of the IoT thing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConnectivityInfo in L<Paws::GreengrassV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

