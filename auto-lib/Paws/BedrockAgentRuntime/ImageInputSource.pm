# Generated by default/object.tt
package Paws::BedrockAgentRuntime::ImageInputSource;
  use Moose;
  has Bytes => (is => 'ro', isa => 'Str', request_name => 'bytes', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockAgentRuntime::ImageInputSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockAgentRuntime::ImageInputSource object:

  $service_obj->Method(Att1 => { Bytes => $value, ..., Bytes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockAgentRuntime::ImageInputSource object:

  $result = $service_obj->Method(...);
  $result->Att1->Bytes

=head1 DESCRIPTION

Details about the source of an input image in the result from a
function in the action group invocation.

=head1 ATTRIBUTES


=head2 Bytes => Str

The raw image bytes for the image. If you use an Amazon Web Services
SDK, you don't need to encode the image bytes in base64.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockAgentRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

