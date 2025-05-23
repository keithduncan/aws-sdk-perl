# Generated by default/object.tt
package Paws::BedrockAgent::RedshiftQueryEngineConfiguration;
  use Moose;
  has ProvisionedConfiguration => (is => 'ro', isa => 'Paws::BedrockAgent::RedshiftProvisionedConfiguration', request_name => 'provisionedConfiguration', traits => ['NameInRequest']);
  has ServerlessConfiguration => (is => 'ro', isa => 'Paws::BedrockAgent::RedshiftServerlessConfiguration', request_name => 'serverlessConfiguration', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::RedshiftQueryEngineConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgent::RedshiftQueryEngineConfiguration object:

  $service_obj->Method(Att1 => { ProvisionedConfiguration => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgent::RedshiftQueryEngineConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ProvisionedConfiguration

=head1 DESCRIPTION

Contains configurations for an Amazon Redshift query engine. Specify
the type of query engine in C<type> and include the corresponding
field. For more information, see Build a knowledge base by connecting
to a structured data source
(https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-build-structured.html)
in the Amazon Bedrock User Guide.

=head1 ATTRIBUTES


=head2 ProvisionedConfiguration => L<Paws::BedrockAgent::RedshiftProvisionedConfiguration>

Specifies configurations for a provisioned Amazon Redshift query
engine.


=head2 ServerlessConfiguration => L<Paws::BedrockAgent::RedshiftServerlessConfiguration>

Specifies configurations for a serverless Amazon Redshift query engine.


=head2 B<REQUIRED> Type => Str

The type of query engine.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

