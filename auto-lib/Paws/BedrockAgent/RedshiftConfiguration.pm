# Generated by default/object.tt
package Paws::BedrockAgent::RedshiftConfiguration;
  use Moose;
  has QueryEngineConfiguration => (is => 'ro', isa => 'Paws::BedrockAgent::RedshiftQueryEngineConfiguration', request_name => 'queryEngineConfiguration', traits => ['NameInRequest'], required => 1);
  has QueryGenerationConfiguration => (is => 'ro', isa => 'Paws::BedrockAgent::QueryGenerationConfiguration', request_name => 'queryGenerationConfiguration', traits => ['NameInRequest']);
  has StorageConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::BedrockAgent::RedshiftQueryEngineStorageConfiguration]', request_name => 'storageConfigurations', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::RedshiftConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgent::RedshiftConfiguration object:

  $service_obj->Method(Att1 => { QueryEngineConfiguration => $value, ..., StorageConfigurations => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgent::RedshiftConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->QueryEngineConfiguration

=head1 DESCRIPTION

Contains configurations for an Amazon Redshift database. For more
information, see Build a knowledge base by connecting to a structured
data source
(https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-build-structured.html)
in the Amazon Bedrock User Guide.

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueryEngineConfiguration => L<Paws::BedrockAgent::RedshiftQueryEngineConfiguration>

Specifies configurations for an Amazon Redshift query engine.


=head2 QueryGenerationConfiguration => L<Paws::BedrockAgent::QueryGenerationConfiguration>

Specifies configurations for generating queries.


=head2 B<REQUIRED> StorageConfigurations => ArrayRef[L<Paws::BedrockAgent::RedshiftQueryEngineStorageConfiguration>]

Specifies configurations for Amazon Redshift database storage.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

