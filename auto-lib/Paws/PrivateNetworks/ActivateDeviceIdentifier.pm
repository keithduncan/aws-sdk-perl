
package Paws::PrivateNetworks::ActivateDeviceIdentifier;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DeviceIdentifierArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deviceIdentifierArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ActivateDeviceIdentifier');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/device-identifiers/activate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PrivateNetworks::ActivateDeviceIdentifierResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::ActivateDeviceIdentifier - Arguments for method ActivateDeviceIdentifier on L<Paws::PrivateNetworks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ActivateDeviceIdentifier on the
L<AWS Private 5G|Paws::PrivateNetworks> service. Use the attributes of this class
as arguments to method ActivateDeviceIdentifier.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ActivateDeviceIdentifier.

=head1 SYNOPSIS

    my $private-networks = Paws->service('PrivateNetworks');
    my $ActivateDeviceIdentifierResponse =
      $private -networks->ActivateDeviceIdentifier(
      DeviceIdentifierArn => 'MyArn',
      ClientToken         => 'MyClientToken',    # OPTIONAL
      );

    # Results:
    my $DeviceIdentifier = $ActivateDeviceIdentifierResponse->DeviceIdentifier;
    my $Tags             = $ActivateDeviceIdentifierResponse->Tags;

  # Returns a L<Paws::PrivateNetworks::ActivateDeviceIdentifierResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/private-networks/ActivateDeviceIdentifier>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to ensure
idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).



=head2 B<REQUIRED> DeviceIdentifierArn => Str

The Amazon Resource Name (ARN) of the device identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ActivateDeviceIdentifier in L<Paws::PrivateNetworks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

