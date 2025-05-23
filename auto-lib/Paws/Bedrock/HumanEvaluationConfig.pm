# Generated by default/object.tt
package Paws::Bedrock::HumanEvaluationConfig;
  use Moose;
  has CustomMetrics => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::HumanEvaluationCustomMetric]', request_name => 'customMetrics', traits => ['NameInRequest']);
  has DatasetMetricConfigs => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::EvaluationDatasetMetricConfig]', request_name => 'datasetMetricConfigs', traits => ['NameInRequest'], required => 1);
  has HumanWorkflowConfig => (is => 'ro', isa => 'Paws::Bedrock::HumanWorkflowConfig', request_name => 'humanWorkflowConfig', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::HumanEvaluationConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Bedrock::HumanEvaluationConfig object:

  $service_obj->Method(Att1 => { CustomMetrics => $value, ..., HumanWorkflowConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Bedrock::HumanEvaluationConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomMetrics

=head1 DESCRIPTION

Specifies the custom metrics, how tasks will be rated, the flow
definition ARN, and your custom prompt datasets. Model evaluation jobs
use human workers I<only> support the use of custom prompt datasets. To
learn more about custom prompt datasets and the required format, see
Custom prompt datasets
(https://docs.aws.amazon.com/bedrock/latest/userguide/model-evaluation-prompt-datasets-custom.html).

When you create custom metrics in C<HumanEvaluationCustomMetric> you
must specify the metric's C<name>. The list of C<names> specified in
the C<HumanEvaluationCustomMetric> array, must match the C<metricNames>
array of strings specified in C<EvaluationDatasetMetricConfig>. For
example, if in the C<HumanEvaluationCustomMetric> array your specified
the names C<"accuracy", "toxicity", "readability"> as custom metrics
I<then> the C<metricNames> array would need to look like the following
C<["accuracy", "toxicity", "readability"]> in
C<EvaluationDatasetMetricConfig>.

=head1 ATTRIBUTES


=head2 CustomMetrics => ArrayRef[L<Paws::Bedrock::HumanEvaluationCustomMetric>]

A C<HumanEvaluationCustomMetric> object. It contains the names the
metrics, how the metrics are to be evaluated, an optional description.


=head2 B<REQUIRED> DatasetMetricConfigs => ArrayRef[L<Paws::Bedrock::EvaluationDatasetMetricConfig>]

Use to specify the metrics, task, and prompt dataset to be used in your
model evaluation job.


=head2 HumanWorkflowConfig => L<Paws::Bedrock::HumanWorkflowConfig>

The parameters of the human workflow.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

