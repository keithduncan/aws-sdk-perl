
package Paws::EC2::UnmonitorInstances;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'InstanceId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UnmonitorInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::UnmonitorInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::UnmonitorInstances - Arguments for method UnmonitorInstances on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UnmonitorInstances on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method UnmonitorInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UnmonitorInstances.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $UnmonitorInstancesResult = $ec2->UnmonitorInstances(
      InstanceIds => [ 'MyInstanceId', ... ],
      DryRun      => 1,                         # OPTIONAL
    );

    # Results:
    my $InstanceMonitorings = $UnmonitorInstancesResult->InstanceMonitorings;

    # Returns a L<Paws::EC2::UnmonitorInstancesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/UnmonitorInstances>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the operation,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceIds => ArrayRef[Str|Undef]

The IDs of the instances.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UnmonitorInstances in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

