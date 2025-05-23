
package Paws::EC2::ConfirmProductInstance;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ProductCode => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmProductInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ConfirmProductInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ConfirmProductInstance - Arguments for method ConfirmProductInstance on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConfirmProductInstance on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ConfirmProductInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ConfirmProductInstance.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
 # To confirm the product instance
 # This example determines whether the specified product code is associated with
 # the specified instance.
    my $ConfirmProductInstanceResult = $ec2->ConfirmProductInstance(
      'InstanceId'  => 'i-1234567890abcdef0',
      'ProductCode' => '774F4FF8'
    );

    # Results:
    my $OwnerId = $ConfirmProductInstanceResult->OwnerId;

    # Returns a L<Paws::EC2::ConfirmProductInstanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ConfirmProductInstance>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the operation,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance.



=head2 B<REQUIRED> ProductCode => Str

The product code. This must be a product code that you own.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ConfirmProductInstance in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

