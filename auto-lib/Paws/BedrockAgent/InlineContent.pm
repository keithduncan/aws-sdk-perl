# Generated by default/object.tt
package Paws::BedrockAgent::InlineContent;
  use Moose;
  has ByteContent => (is => 'ro', isa => 'Paws::BedrockAgent::ByteContentDoc', request_name => 'byteContent', traits => ['NameInRequest']);
  has TextContent => (is => 'ro', isa => 'Paws::BedrockAgent::TextContentDoc', request_name => 'textContent', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgent::InlineContent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgent::InlineContent object:

  $service_obj->Method(Att1 => { ByteContent => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgent::InlineContent object:

  $result = $service_obj->Method(...);
  $result->Att1->ByteContent

=head1 DESCRIPTION

Contains information about content defined inline to ingest into a data
source. Choose a C<type> and include the field that corresponds to it.

=head1 ATTRIBUTES


=head2 ByteContent => L<Paws::BedrockAgent::ByteContentDoc>

Contains information about content defined inline in bytes.


=head2 TextContent => L<Paws::BedrockAgent::TextContentDoc>

Contains information about content defined inline in text.


=head2 B<REQUIRED> Type => Str

The type of inline content to define.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgent>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

