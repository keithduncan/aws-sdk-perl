# Generated by default/object.tt
package Paws::SageMaker::DeploymentRecommendation;
  use Moose;
  has RealTimeInferenceRecommendations => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::RealTimeInferenceRecommendation]');
  has RecommendationStatus => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DeploymentRecommendation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::DeploymentRecommendation object:

  $service_obj->Method(Att1 => { RealTimeInferenceRecommendations => $value, ..., RecommendationStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::DeploymentRecommendation object:

  $result = $service_obj->Method(...);
  $result->Att1->RealTimeInferenceRecommendations

=head1 DESCRIPTION

A set of recommended deployment configurations for the model. To get
more advanced recommendations, see CreateInferenceRecommendationsJob
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateInferenceRecommendationsJob.html)
to create an inference recommendation job.

=head1 ATTRIBUTES


=head2 RealTimeInferenceRecommendations => ArrayRef[L<Paws::SageMaker::RealTimeInferenceRecommendation>]

A list of RealTimeInferenceRecommendation
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_RealTimeInferenceRecommendation.html)
items.


=head2 B<REQUIRED> RecommendationStatus => Str

Status of the deployment recommendation. The status C<NOT_APPLICABLE>
means that SageMaker is unable to provide a default recommendation for
the model using the information provided. If the deployment status is
C<IN_PROGRESS>, retry your API call after a few seconds to get a
C<COMPLETED> deployment recommendation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

