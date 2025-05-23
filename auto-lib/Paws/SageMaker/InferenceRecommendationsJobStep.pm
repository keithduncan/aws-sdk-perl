# Generated by default/object.tt
package Paws::SageMaker::InferenceRecommendationsJobStep;
  use Moose;
  has InferenceBenchmark => (is => 'ro', isa => 'Paws::SageMaker::RecommendationJobInferenceBenchmark');
  has JobName => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has StepType => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::InferenceRecommendationsJobStep

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::InferenceRecommendationsJobStep object:

  $service_obj->Method(Att1 => { InferenceBenchmark => $value, ..., StepType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::InferenceRecommendationsJobStep object:

  $result = $service_obj->Method(...);
  $result->Att1->InferenceBenchmark

=head1 DESCRIPTION

A returned array object for the C<Steps> response field in the
ListInferenceRecommendationsJobSteps
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListInferenceRecommendationsJobSteps.html)
API command.

=head1 ATTRIBUTES


=head2 InferenceBenchmark => L<Paws::SageMaker::RecommendationJobInferenceBenchmark>

The details for a specific benchmark.


=head2 B<REQUIRED> JobName => Str

The name of the Inference Recommender job.


=head2 B<REQUIRED> Status => Str

The current status of the benchmark.


=head2 B<REQUIRED> StepType => Str

The type of the subtask.

C<BENCHMARK>: Evaluate the performance of your model on different
instance types.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

