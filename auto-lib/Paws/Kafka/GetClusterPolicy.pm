
package Paws::Kafka::GetClusterPolicy;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetClusterPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/clusters/{clusterArn}/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::GetClusterPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::GetClusterPolicy - Arguments for method GetClusterPolicy on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetClusterPolicy on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method GetClusterPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetClusterPolicy.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $GetClusterPolicyResponse = $kafka->GetClusterPolicy(
      ClusterArn => 'My__string',

    );

    # Results:
    my $CurrentVersion = $GetClusterPolicyResponse->CurrentVersion;
    my $Policy         = $GetClusterPolicyResponse->Policy;

    # Returns a L<Paws::Kafka::GetClusterPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/GetClusterPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterArn => Str

The Amazon Resource Name (ARN) of the cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetClusterPolicy in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

