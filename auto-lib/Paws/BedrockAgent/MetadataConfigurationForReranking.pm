# Generated by default/object.tt
package Paws::BedrockAgent::MetadataConfigurationForReranking;
  use Moose;
  has SelectionMode => (is => 'ro', isa => 'Str', request_name => 'selectionMode', traits => ['NameInRequest'], required => 1);
  has SelectiveModeConfiguration => (is => 'ro', isa => 'Paws::BedrockAgent::RerankingMetadataSelectiveModeConfiguration', request_name => 'selectiveModeConfiguration', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::MetadataConfigurationForReranking

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgent::MetadataConfigurationForReranking object:

  $service_obj->Method(Att1 => { SelectionMode => $value, ..., SelectiveModeConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgent::MetadataConfigurationForReranking object:

  $result = $service_obj->Method(...);
  $result->Att1->SelectionMode

=head1 DESCRIPTION

Specifies how metadata fields should be handled during the reranking
process.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SelectionMode => Str

The mode for selecting metadata fields for reranking.


=head2 SelectiveModeConfiguration => L<Paws::BedrockAgent::RerankingMetadataSelectiveModeConfiguration>

The configuration for selective metadata field inclusion or exclusion
during reranking.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

