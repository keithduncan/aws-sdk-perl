
package Paws::EC2::AcceptVpcEndpointConnections;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has ServiceId => (is => 'ro', isa => 'Str', required => 1);
  has VpcEndpointIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'VpcEndpointId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AcceptVpcEndpointConnections');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::AcceptVpcEndpointConnectionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AcceptVpcEndpointConnections - Arguments for method AcceptVpcEndpointConnections on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AcceptVpcEndpointConnections on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method AcceptVpcEndpointConnections.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AcceptVpcEndpointConnections.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $AcceptVpcEndpointConnectionsResult = $ec2->AcceptVpcEndpointConnections(
      ServiceId      => 'MyVpcEndpointServiceId',
      VpcEndpointIds => [ 'MyVpcEndpointId', ... ],
      DryRun         => 1,                            # OPTIONAL
    );

    # Results:
    my $Unsuccessful = $AcceptVpcEndpointConnectionsResult->Unsuccessful;

    # Returns a L<Paws::EC2::AcceptVpcEndpointConnectionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/AcceptVpcEndpointConnections>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> ServiceId => Str

The ID of the VPC endpoint service.



=head2 B<REQUIRED> VpcEndpointIds => ArrayRef[Str|Undef]

The IDs of the interface VPC endpoints.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AcceptVpcEndpointConnections in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

