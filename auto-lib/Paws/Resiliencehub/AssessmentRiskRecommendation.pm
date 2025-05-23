# Generated by default/object.tt
package Paws::Resiliencehub::AssessmentRiskRecommendation;
  use Moose;
  has AppComponents => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'appComponents', traits => ['NameInRequest']);
  has Recommendation => (is => 'ro', isa => 'Str', request_name => 'recommendation', traits => ['NameInRequest']);
  has Risk => (is => 'ro', isa => 'Str', request_name => 'risk', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::AssessmentRiskRecommendation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Resiliencehub::AssessmentRiskRecommendation object:

  $service_obj->Method(Att1 => { AppComponents => $value, ..., Risk => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Resiliencehub::AssessmentRiskRecommendation object:

  $result = $service_obj->Method(...);
  $result->Att1->AppComponents

=head1 DESCRIPTION

Indicates a specific risk identified in the Resilience Hub assessment
and the corresponding recommendation provided to address that risk.

The assessment summary generated by large language models (LLMs) on
Amazon Bedrock are only suggestions. The current level of generative AI
technology is not perfect and LLMs are not infallible. Bias and
incorrect answers, although rare, should be expected. Review each
recommendation in the assessment summary before you use the output from
an LLM.

This property is available only in the US East (N. Virginia) Region.

=head1 ATTRIBUTES


=head2 AppComponents => ArrayRef[Str|Undef]

Indicates the Application Components (AppComponents) that were assessed
as part of the assessment and are associated with the identified risk
and recommendation.

This property is available only in the US East (N. Virginia) Region.


=head2 Recommendation => Str

Indicates the recommendation provided by the Resilience Hub to address
the identified risks in the application.

This property is available only in the US East (N. Virginia) Region.


=head2 Risk => Str

Indicates the description of the potential risk identified in the
application as part of the Resilience Hub assessment.

This property is available only in the US East (N. Virginia) Region.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

