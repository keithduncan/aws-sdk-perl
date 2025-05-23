# Generated by default/object.tt
package Paws::Bedrock::OrchestrationConfiguration;
  use Moose;
  has QueryTransformationConfiguration => (is => 'ro', isa => 'Paws::Bedrock::QueryTransformationConfiguration', request_name => 'queryTransformationConfiguration', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::OrchestrationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Bedrock::OrchestrationConfiguration object:

  $service_obj->Method(Att1 => { QueryTransformationConfiguration => $value, ..., QueryTransformationConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Bedrock::OrchestrationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->QueryTransformationConfiguration

=head1 DESCRIPTION

The configuration details for the model to process the prompt prior to
retrieval and response generation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueryTransformationConfiguration => L<Paws::Bedrock::QueryTransformationConfiguration>

Contains configuration details for transforming the prompt.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

