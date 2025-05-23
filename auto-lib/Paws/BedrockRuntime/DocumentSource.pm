# Generated by default/object.tt
package Paws::BedrockRuntime::DocumentSource;
  use Moose;
  has Bytes => (is => 'ro', isa => 'Str', request_name => 'bytes', traits => ['NameInRequest']);
  has S3Location => (is => 'ro', isa => 'Paws::BedrockRuntime::S3Location', request_name => 's3Location', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockRuntime::DocumentSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BedrockRuntime::DocumentSource object:

  $service_obj->Method(Att1 => { Bytes => $value, ..., S3Location => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BedrockRuntime::DocumentSource object:

  $result = $service_obj->Method(...);
  $result->Att1->Bytes

=head1 DESCRIPTION

Contains the content of a document.

=head1 ATTRIBUTES


=head2 Bytes => Str

The raw bytes for the document. If you use an Amazon Web Services SDK,
you don't need to encode the bytes in base64.


=head2 S3Location => L<Paws::BedrockRuntime::S3Location>

The location of a document object in an Amazon S3 bucket. To see which
models support S3 uploads, see Supported models and features for
Converse
(https://docs.aws.amazon.com/bedrock/latest/userguide/conversation-inference-supported-models-features.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BedrockRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

