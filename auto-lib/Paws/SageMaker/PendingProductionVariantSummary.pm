# Generated by default/object.tt
package Paws::SageMaker::PendingProductionVariantSummary;
  use Moose;
  has AcceleratorType => (is => 'ro', isa => 'Str');
  has CurrentInstanceCount => (is => 'ro', isa => 'Int');
  has CurrentServerlessConfig => (is => 'ro', isa => 'Paws::SageMaker::ProductionVariantServerlessConfig');
  has CurrentWeight => (is => 'ro', isa => 'Num');
  has DeployedImages => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::DeployedImage]');
  has DesiredInstanceCount => (is => 'ro', isa => 'Int');
  has DesiredServerlessConfig => (is => 'ro', isa => 'Paws::SageMaker::ProductionVariantServerlessConfig');
  has DesiredWeight => (is => 'ro', isa => 'Num');
  has InstanceType => (is => 'ro', isa => 'Str');
  has ManagedInstanceScaling => (is => 'ro', isa => 'Paws::SageMaker::ProductionVariantManagedInstanceScaling');
  has RoutingConfig => (is => 'ro', isa => 'Paws::SageMaker::ProductionVariantRoutingConfig');
  has VariantName => (is => 'ro', isa => 'Str', required => 1);
  has VariantStatus => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ProductionVariantStatus]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::PendingProductionVariantSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::PendingProductionVariantSummary object:

  $service_obj->Method(Att1 => { AcceleratorType => $value, ..., VariantStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::PendingProductionVariantSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AcceleratorType

=head1 DESCRIPTION

The production variant summary for a deployment when an endpoint is
creating or updating with the CreateEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpoint.html)
or UpdateEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_UpdateEndpoint.html)
operations. Describes the C<VariantStatus >, weight and capacity for a
production variant associated with an endpoint.

=head1 ATTRIBUTES


=head2 AcceleratorType => Str

This parameter is no longer supported. Elastic Inference (EI) is no
longer available.

This parameter was used to specify the size of the EI instance to use
for the production variant.


=head2 CurrentInstanceCount => Int

The number of instances associated with the variant.


=head2 CurrentServerlessConfig => L<Paws::SageMaker::ProductionVariantServerlessConfig>

The serverless configuration for the endpoint.


=head2 CurrentWeight => Num

The weight associated with the variant.


=head2 DeployedImages => ArrayRef[L<Paws::SageMaker::DeployedImage>]

An array of C<DeployedImage> objects that specify the Amazon EC2
Container Registry paths of the inference images deployed on instances
of this C<ProductionVariant>.


=head2 DesiredInstanceCount => Int

The number of instances requested in this deployment, as specified in
the endpoint configuration for the endpoint. The value is taken from
the request to the CreateEndpointConfig
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpointConfig.html)
operation.


=head2 DesiredServerlessConfig => L<Paws::SageMaker::ProductionVariantServerlessConfig>

The serverless configuration requested for this deployment, as
specified in the endpoint configuration for the endpoint.


=head2 DesiredWeight => Num

The requested weight for the variant in this deployment, as specified
in the endpoint configuration for the endpoint. The value is taken from
the request to the CreateEndpointConfig
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpointConfig.html)
operation.


=head2 InstanceType => Str

The type of instances associated with the variant.


=head2 ManagedInstanceScaling => L<Paws::SageMaker::ProductionVariantManagedInstanceScaling>

Settings that control the range in the number of instances that the
endpoint provisions as it scales up or down to accommodate traffic.


=head2 RoutingConfig => L<Paws::SageMaker::ProductionVariantRoutingConfig>

Settings that control how the endpoint routes incoming traffic to the
instances that the endpoint hosts.


=head2 B<REQUIRED> VariantName => Str

The name of the variant.


=head2 VariantStatus => ArrayRef[L<Paws::SageMaker::ProductionVariantStatus>]

The endpoint variant status which describes the current deployment
stage status or operational status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

