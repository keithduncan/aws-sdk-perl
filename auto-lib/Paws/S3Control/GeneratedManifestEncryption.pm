# Generated by default/object.tt
package Paws::S3Control::GeneratedManifestEncryption;
  use Moose;
  has SSEKMS => (is => 'ro', isa => 'Paws::S3Control::SSEKMSEncryption', request_name => 'SSE-KMS', traits => ['NameInRequest']);
  has SSES3 => (is => 'ro', isa => 'Paws::S3Control::SSES3Encryption', request_name => 'SSE-S3', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GeneratedManifestEncryption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::GeneratedManifestEncryption object:

  $service_obj->Method(Att1 => { SSEKMS => $value, ..., SSES3 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::GeneratedManifestEncryption object:

  $result = $service_obj->Method(...);
  $result->Att1->SSEKMS

=head1 DESCRIPTION

The encryption configuration to use when storing the generated
manifest.

=head1 ATTRIBUTES


=head2 SSEKMS => L<Paws::S3Control::SSEKMSEncryption>

Configuration details on how SSE-KMS is used to encrypt generated
manifest objects.


=head2 SSES3 => L<Paws::S3Control::SSES3Encryption>

Specifies the use of SSE-S3 to encrypt generated manifest objects.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

