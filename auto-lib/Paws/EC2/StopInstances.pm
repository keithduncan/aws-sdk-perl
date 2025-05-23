
package Paws::EC2::StopInstances;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Force => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'force' );
  has Hibernate => (is => 'ro', isa => 'Bool');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'InstanceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::StopInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::StopInstances - Arguments for method StopInstances on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopInstances on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method StopInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopInstances.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To stop a running EC2 instance
    # This example stops the specified EC2 instance.
    my $StopInstancesResult =
      $ec2->StopInstances( 'InstanceIds' => ['i-1234567890abcdef0'] );

    # Results:
    my $StoppingInstances = $StopInstancesResult->StoppingInstances;

    # Returns a L<Paws::EC2::StopInstancesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/StopInstances>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the operation,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Force => Bool

Forces the instance to stop. The instance will first attempt a graceful
shutdown, which includes flushing file system caches and metadata. If
the graceful shutdown fails to complete within the timeout period, the
instance shuts down forcibly without flushing the file system caches
and metadata.

After using this option, you must perform file system check and repair
procedures. This option is not recommended for Windows instances. For
more information, see Troubleshoot Amazon EC2 instance stop issues
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/TroubleshootingInstancesStopping.html)
in the I<Amazon EC2 User Guide>.

Default: C<false>



=head2 Hibernate => Bool

Hibernates the instance if the instance was enabled for hibernation at
launch. If the instance cannot hibernate successfully, a normal
shutdown occurs. For more information, see Hibernate your instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html) in
the I<Amazon EC2 User Guide>.

Default: C<false>



=head2 B<REQUIRED> InstanceIds => ArrayRef[Str|Undef]

The IDs of the instances.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopInstances in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

