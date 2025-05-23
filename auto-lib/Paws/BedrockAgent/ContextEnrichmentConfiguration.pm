# Generated by default/object.tt
package Paws::BedrockAgent::ContextEnrichmentConfiguration;
  use Moose;
  has BedrockFoundationModelConfiguration => (is => 'ro', isa => 'Paws::BedrockAgent::BedrockFoundationModelContextEnrichmentConfiguration', request_name => 'bedrockFoundationModelConfiguration', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::ContextEnrichmentConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgent::ContextEnrichmentConfiguration object:

  $service_obj->Method(Att1 => { BedrockFoundationModelConfiguration => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgent::ContextEnrichmentConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->BedrockFoundationModelConfiguration

=head1 DESCRIPTION

Context enrichment configuration is used to provide additional context
to the RAG application.

=head1 ATTRIBUTES


=head2 BedrockFoundationModelConfiguration => L<Paws::BedrockAgent::BedrockFoundationModelContextEnrichmentConfiguration>

The configuration of the Amazon Bedrock foundation model used for
context enrichment.


=head2 B<REQUIRED> Type => Str

The method used for context enrichment. It must be Amazon Bedrock
foundation models.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

