
package Paws::Kafka::GetBootstrapBrokers;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBootstrapBrokers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/clusters/{clusterArn}/bootstrap-brokers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::GetBootstrapBrokersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::GetBootstrapBrokers - Arguments for method GetBootstrapBrokers on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBootstrapBrokers on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method GetBootstrapBrokers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBootstrapBrokers.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $GetBootstrapBrokersResponse = $kafka->GetBootstrapBrokers(
      ClusterArn => 'My__string',

    );

    # Results:
    my $BootstrapBrokerString =
      $GetBootstrapBrokersResponse->BootstrapBrokerString;
    my $BootstrapBrokerStringPublicSaslIam =
      $GetBootstrapBrokersResponse->BootstrapBrokerStringPublicSaslIam;
    my $BootstrapBrokerStringPublicSaslScram =
      $GetBootstrapBrokersResponse->BootstrapBrokerStringPublicSaslScram;
    my $BootstrapBrokerStringPublicTls =
      $GetBootstrapBrokersResponse->BootstrapBrokerStringPublicTls;
    my $BootstrapBrokerStringSaslIam =
      $GetBootstrapBrokersResponse->BootstrapBrokerStringSaslIam;
    my $BootstrapBrokerStringSaslScram =
      $GetBootstrapBrokersResponse->BootstrapBrokerStringSaslScram;
    my $BootstrapBrokerStringTls =
      $GetBootstrapBrokersResponse->BootstrapBrokerStringTls;
    my $BootstrapBrokerStringVpcConnectivitySaslIam =
      $GetBootstrapBrokersResponse->BootstrapBrokerStringVpcConnectivitySaslIam;
    my $BootstrapBrokerStringVpcConnectivitySaslScram =
      $GetBootstrapBrokersResponse
      ->BootstrapBrokerStringVpcConnectivitySaslScram;
    my $BootstrapBrokerStringVpcConnectivityTls =
      $GetBootstrapBrokersResponse->BootstrapBrokerStringVpcConnectivityTls;

    # Returns a L<Paws::Kafka::GetBootstrapBrokersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/GetBootstrapBrokers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterArn => Str

The Amazon Resource Name (ARN) that uniquely identifies the cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBootstrapBrokers in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

