# Generated by default/object.tt
package Paws::BedrockAgent::NeptuneAnalyticsConfiguration;
  use Moose;
  has FieldMapping => (is => 'ro', isa => 'Paws::BedrockAgent::NeptuneAnalyticsFieldMapping', request_name => 'fieldMapping', traits => ['NameInRequest'], required => 1);
  has GraphArn => (is => 'ro', isa => 'Str', request_name => 'graphArn', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::NeptuneAnalyticsConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgent::NeptuneAnalyticsConfiguration object:

  $service_obj->Method(Att1 => { FieldMapping => $value, ..., GraphArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgent::NeptuneAnalyticsConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->FieldMapping

=head1 DESCRIPTION

Contains details about the storage configuration of the knowledge base
in Amazon Neptune Analytics. For more information, see Create a vector
index in Amazon Neptune Analytics
(https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base-setup-neptune.html).

=head1 ATTRIBUTES


=head2 B<REQUIRED> FieldMapping => L<Paws::BedrockAgent::NeptuneAnalyticsFieldMapping>

Contains the names of the fields to which to map information about the
vector store.


=head2 B<REQUIRED> GraphArn => Str

The Amazon Resource Name (ARN) of the Neptune Analytics vector store.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

