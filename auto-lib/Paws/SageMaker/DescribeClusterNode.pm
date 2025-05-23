
package Paws::SageMaker::DescribeClusterNode;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', required => 1);
  has NodeId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterNode');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeClusterNodeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeClusterNode - Arguments for method DescribeClusterNode on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeClusterNode on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeClusterNode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeClusterNode.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeClusterNodeResponse = $api . sagemaker->DescribeClusterNode(
      ClusterName => 'MyClusterNameOrArn',
      NodeId      => 'MyClusterNodeId',

    );

    # Results:
    my $NodeDetails = $DescribeClusterNodeResponse->NodeDetails;

    # Returns a L<Paws::SageMaker::DescribeClusterNodeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeClusterNode>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

The string name or the Amazon Resource Name (ARN) of the SageMaker
HyperPod cluster in which the node is.



=head2 B<REQUIRED> NodeId => Str

The ID of the SageMaker HyperPod cluster node.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeClusterNode in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

