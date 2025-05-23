
package Paws::EC2::StartInstances;
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'additionalInfo' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'InstanceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::StartInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::StartInstances - Arguments for method StartInstances on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartInstances on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method StartInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartInstances.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To start a stopped EC2 instance
    # This example starts the specified EC2 instance.
    my $StartInstancesResult =
      $ec2->StartInstances( 'InstanceIds' => ['i-1234567890abcdef0'] );

    # Results:
    my $StartingInstances = $StartInstancesResult->StartingInstances;

    # Returns a L<Paws::EC2::StartInstancesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/StartInstances>

=head1 ATTRIBUTES


=head2 AdditionalInfo => Str

Reserved.



=head2 DryRun => Bool

Checks whether you have the required permissions for the operation,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceIds => ArrayRef[Str|Undef]

The IDs of the instances.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartInstances in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

