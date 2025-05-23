
package Paws::GlobalAccelerator::UpdateCustomRoutingAccelerator;
  use Moose;
  has AcceleratorArn => (is => 'ro', isa => 'Str', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool');
  has IpAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has IpAddressType => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCustomRoutingAccelerator');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::UpdateCustomRoutingAcceleratorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::UpdateCustomRoutingAccelerator - Arguments for method UpdateCustomRoutingAccelerator on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCustomRoutingAccelerator on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method UpdateCustomRoutingAccelerator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCustomRoutingAccelerator.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $UpdateCustomRoutingAcceleratorResponse =
      $globalaccelerator->UpdateCustomRoutingAccelerator(
      AcceleratorArn => 'MyGenericString',
      Enabled        => 1,                   # OPTIONAL
      IpAddressType  => 'IPV4',              # OPTIONAL
      IpAddresses    => [
        'MyIpAddress', ...                   # max: 45
      ],    # OPTIONAL
      Name => 'MyGenericString',    # OPTIONAL
      );

    # Results:
    my $Accelerator = $UpdateCustomRoutingAcceleratorResponse->Accelerator;

# Returns a L<Paws::GlobalAccelerator::UpdateCustomRoutingAcceleratorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/UpdateCustomRoutingAccelerator>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AcceleratorArn => Str

The Amazon Resource Name (ARN) of the accelerator to update.



=head2 Enabled => Bool

Indicates whether an accelerator is enabled. The value is true or
false. The default value is true.

If the value is set to true, the accelerator cannot be deleted. If set
to false, the accelerator can be deleted.



=head2 IpAddresses => ArrayRef[Str|Undef]

The IP addresses for an accelerator.



=head2 IpAddressType => Str

The IP address type that an accelerator supports. For a custom routing
accelerator, the value must be IPV4.

Valid values are: C<"IPV4">, C<"DUAL_STACK">

=head2 Name => Str

The name of the accelerator. The name can have a maximum of 64
characters, must contain only alphanumeric characters, periods (.), or
hyphens (-), and must not begin or end with a hyphen or period.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCustomRoutingAccelerator in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

