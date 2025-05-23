
package Paws::EC2::CancelSpotFleetRequests;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has SpotFleetRequestIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'spotFleetRequestId' , required => 1);
  has TerminateInstances => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'terminateInstances' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelSpotFleetRequests');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CancelSpotFleetRequestsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CancelSpotFleetRequests - Arguments for method CancelSpotFleetRequests on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelSpotFleetRequests on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CancelSpotFleetRequests.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelSpotFleetRequests.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To cancel a Spot fleet request
    # This example cancels the specified Spot fleet request and terminates its
    # associated Spot Instances.
    my $CancelSpotFleetRequestsResponse = $ec2->CancelSpotFleetRequests(
      'SpotFleetRequestIds' => ['sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE'],
      'TerminateInstances'  => 1
    );

    # Results:
    my $SuccessfulFleetRequests =
      $CancelSpotFleetRequestsResponse->SuccessfulFleetRequests;

 # Returns a L<Paws::EC2::CancelSpotFleetRequestsResponse> object.
 # To cancel a Spot fleet request without terminating its Spot Instances
 # This example cancels the specified Spot fleet request without terminating its
 # associated Spot Instances.
    my $CancelSpotFleetRequestsResponse = $ec2->CancelSpotFleetRequests(
      'SpotFleetRequestIds' => ['sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE'],
      'TerminateInstances'  => 0
    );

    # Results:
    my $SuccessfulFleetRequests =
      $CancelSpotFleetRequestsResponse->SuccessfulFleetRequests;

    # Returns a L<Paws::EC2::CancelSpotFleetRequestsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CancelSpotFleetRequests>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> SpotFleetRequestIds => ArrayRef[Str|Undef]

The IDs of the Spot Fleet requests.

Constraint: You can specify up to 100 IDs in a single request.



=head2 B<REQUIRED> TerminateInstances => Bool

Indicates whether to terminate the associated instances when the Spot
Fleet request is canceled. The default is to terminate the instances.

To let the instances continue to run after the Spot Fleet request is
canceled, specify C<no-terminate-instances>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelSpotFleetRequests in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

