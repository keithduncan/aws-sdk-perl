
package Paws::Kafka::DescribeClusterV2;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterV2');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v2/clusters/{clusterArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::DescribeClusterV2Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::DescribeClusterV2 - Arguments for method DescribeClusterV2 on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeClusterV2 on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method DescribeClusterV2.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeClusterV2.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $DescribeClusterV2Response = $kafka->DescribeClusterV2(
      ClusterArn => 'My__string',

    );

    # Results:
    my $ClusterInfo = $DescribeClusterV2Response->ClusterInfo;

    # Returns a L<Paws::Kafka::DescribeClusterV2Response> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/DescribeClusterV2>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterArn => Str

The Amazon Resource Name (ARN) that uniquely identifies the cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeClusterV2 in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

