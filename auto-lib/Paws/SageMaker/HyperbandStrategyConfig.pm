# Generated by default/object.tt
package Paws::SageMaker::HyperbandStrategyConfig;
  use Moose;
  has MaxResource => (is => 'ro', isa => 'Int');
  has MinResource => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::HyperbandStrategyConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::HyperbandStrategyConfig object:

  $service_obj->Method(Att1 => { MaxResource => $value, ..., MinResource => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::HyperbandStrategyConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxResource

=head1 DESCRIPTION

The configuration for C<Hyperband>, a multi-fidelity based
hyperparameter tuning strategy. C<Hyperband> uses the final and
intermediate results of a training job to dynamically allocate
resources to utilized hyperparameter configurations while automatically
stopping under-performing configurations. This parameter should be
provided only if C<Hyperband> is selected as the C<StrategyConfig>
under the C<HyperParameterTuningJobConfig> API.

=head1 ATTRIBUTES


=head2 MaxResource => Int

The maximum number of resources (such as epochs) that can be used by a
training job launched by a hyperparameter tuning job. Once a job
reaches the C<MaxResource> value, it is stopped. If a value for
C<MaxResource> is not provided, and C<Hyperband> is selected as the
hyperparameter tuning strategy, C<HyperbandTraining> attempts to infer
C<MaxResource> from the following keys (if present) in
StaticsHyperParameters
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTrainingJobDefinition.html#sagemaker-Type-HyperParameterTrainingJobDefinition-StaticHyperParameters):

=over

=item *

C<epochs>

=item *

C<numepochs>

=item *

C<n-epochs>

=item *

C<n_epochs>

=item *

C<num_epochs>

=back

If C<HyperbandStrategyConfig> is unable to infer a value for
C<MaxResource>, it generates a validation error. The maximum value is
20,000 epochs. All metrics that correspond to an objective metric are
used to derive early stopping decisions
(https://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-early-stopping.html).
For distributed
(https://docs.aws.amazon.com/sagemaker/latest/dg/distributed-training.html)
training jobs, ensure that duplicate metrics are not printed in the
logs across the individual nodes in a training job. If multiple nodes
are publishing duplicate or incorrect metrics, training jobs may make
an incorrect stopping decision and stop the job prematurely.


=head2 MinResource => Int

The minimum number of resources (such as epochs) that can be used by a
training job launched by a hyperparameter tuning job. If the value for
C<MinResource> has not been reached, the training job is not stopped by
C<Hyperband>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

