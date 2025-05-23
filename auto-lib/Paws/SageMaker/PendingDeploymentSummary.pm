# Generated by default/object.tt
package Paws::SageMaker::PendingDeploymentSummary;
  use Moose;
  has EndpointConfigName => (is => 'ro', isa => 'Str', required => 1);
  has ProductionVariants => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::PendingProductionVariantSummary]');
  has ShadowProductionVariants => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::PendingProductionVariantSummary]');
  has StartTime => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::PendingDeploymentSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::PendingDeploymentSummary object:

  $service_obj->Method(Att1 => { EndpointConfigName => $value, ..., StartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::PendingDeploymentSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->EndpointConfigName

=head1 DESCRIPTION

The summary of an in-progress deployment when an endpoint is creating
or updating with a new endpoint configuration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointConfigName => Str

The name of the endpoint configuration used in the deployment.


=head2 ProductionVariants => ArrayRef[L<Paws::SageMaker::PendingProductionVariantSummary>]

An array of PendingProductionVariantSummary
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_PendingProductionVariantSummary.html)
objects, one for each model hosted behind this endpoint for the
in-progress deployment.


=head2 ShadowProductionVariants => ArrayRef[L<Paws::SageMaker::PendingProductionVariantSummary>]

An array of PendingProductionVariantSummary
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_PendingProductionVariantSummary.html)
objects, one for each model hosted behind this endpoint in shadow mode
with production traffic replicated from the model specified on
C<ProductionVariants> for the in-progress deployment.


=head2 StartTime => Str

The start time of the deployment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

