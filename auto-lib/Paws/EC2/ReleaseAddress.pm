
package Paws::EC2::ReleaseAddress;
  use Moose;
  has AllocationId => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has NetworkBorderGroup => (is => 'ro', isa => 'Str');
  has PublicIp => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReleaseAddress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReleaseAddress - Arguments for method ReleaseAddress on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReleaseAddress on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ReleaseAddress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReleaseAddress.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
  # To release an Elastic IP address for EC2-VPC
  # This example releases an Elastic IP address for use with instances in a VPC.
    $ec2->ReleaseAddress( 'AllocationId' => 'eipalloc-64d5890a' );

    # To release an Elastic IP addresses for EC2-Classic
    # This example releases an Elastic IP address for use with instances in
    # EC2-Classic.
    $ec2->ReleaseAddress( 'PublicIp' => '198.51.100.0' );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ReleaseAddress>

=head1 ATTRIBUTES


=head2 AllocationId => Str

The allocation ID. This parameter is required.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 NetworkBorderGroup => Str

The set of Availability Zones, Local Zones, or Wavelength Zones from
which Amazon Web Services advertises IP addresses.

If you provide an incorrect network border group, you receive an
C<InvalidAddress.NotFound> error.



=head2 PublicIp => Str

Deprecated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReleaseAddress in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

