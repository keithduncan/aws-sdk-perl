
package Paws::GlobalAccelerator::WithdrawByoipCidr;
  use Moose;
  has Cidr => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'WithdrawByoipCidr');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::WithdrawByoipCidrResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::WithdrawByoipCidr - Arguments for method WithdrawByoipCidr on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method WithdrawByoipCidr on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method WithdrawByoipCidr.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to WithdrawByoipCidr.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $WithdrawByoipCidrResponse = $globalaccelerator->WithdrawByoipCidr(
      Cidr => 'MyGenericString',

    );

    # Results:
    my $ByoipCidr = $WithdrawByoipCidrResponse->ByoipCidr;

    # Returns a L<Paws::GlobalAccelerator::WithdrawByoipCidrResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/WithdrawByoipCidr>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cidr => Str

The address range, in CIDR notation.

For more information, see Bring your own IP addresses (BYOIP)
(https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
in the Global Accelerator Developer Guide.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method WithdrawByoipCidr in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

