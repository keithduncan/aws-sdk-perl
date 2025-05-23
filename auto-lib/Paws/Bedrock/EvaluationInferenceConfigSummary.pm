# Generated by default/object.tt
package Paws::Bedrock::EvaluationInferenceConfigSummary;
  use Moose;
  has ModelConfigSummary => (is => 'ro', isa => 'Paws::Bedrock::EvaluationModelConfigSummary', request_name => 'modelConfigSummary', traits => ['NameInRequest']);
  has RagConfigSummary => (is => 'ro', isa => 'Paws::Bedrock::EvaluationRagConfigSummary', request_name => 'ragConfigSummary', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::EvaluationInferenceConfigSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Bedrock::EvaluationInferenceConfigSummary object:

  $service_obj->Method(Att1 => { ModelConfigSummary => $value, ..., RagConfigSummary => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Bedrock::EvaluationInferenceConfigSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ModelConfigSummary

=head1 DESCRIPTION

Identifies the models, Knowledge Bases, or other RAG sources evaluated
in a model or Knowledge Base evaluation job.

=head1 ATTRIBUTES


=head2 ModelConfigSummary => L<Paws::Bedrock::EvaluationModelConfigSummary>

A summary of the models used in an Amazon Bedrock model evaluation job.
These resources can be models in Amazon Bedrock or models outside of
Amazon Bedrock that you use to generate your own inference response
data.


=head2 RagConfigSummary => L<Paws::Bedrock::EvaluationRagConfigSummary>

A summary of the RAG resources used in an Amazon Bedrock Knowledge Base
evaluation job. These resources can be Knowledge Bases in Amazon
Bedrock or RAG sources outside of Amazon Bedrock that you use to
generate your own inference response data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

