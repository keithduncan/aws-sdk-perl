# Generated by default/object.tt
package Paws::Macie2::ServerSideEncryption;
  use Moose;
  has EncryptionType => (is => 'ro', isa => 'Str', request_name => 'encryptionType', traits => ['NameInRequest']);
  has KmsMasterKeyId => (is => 'ro', isa => 'Str', request_name => 'kmsMasterKeyId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::ServerSideEncryption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Macie2::ServerSideEncryption object:

  $service_obj->Method(Att1 => { EncryptionType => $value, ..., KmsMasterKeyId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Macie2::ServerSideEncryption object:

  $result = $service_obj->Method(...);
  $result->Att1->EncryptionType

=head1 DESCRIPTION

Provides information about the default server-side encryption settings
for an S3 bucket or the encryption settings for an S3 object.

=head1 ATTRIBUTES


=head2 EncryptionType => Str

The server-side encryption algorithm that's used when storing data in
the bucket or object. If default encryption settings aren't configured
for the bucket or the object isn't encrypted using server-side
encryption, this value is NONE.


=head2 KmsMasterKeyId => Str

The Amazon Resource Name (ARN) or unique identifier (key ID) for the
KMS key that's used to encrypt data in the bucket or the object. This
value is null if an KMS key isn't used to encrypt the data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

