# Generated by default/object.tt
package Paws::Macie2::BucketServerSideEncryption;
  use Moose;
  has KmsMasterKeyId => (is => 'ro', isa => 'Str', request_name => 'kmsMasterKeyId', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::BucketServerSideEncryption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Macie2::BucketServerSideEncryption object:

  $service_obj->Method(Att1 => { KmsMasterKeyId => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Macie2::BucketServerSideEncryption object:

  $result = $service_obj->Method(...);
  $result->Att1->KmsMasterKeyId

=head1 DESCRIPTION

Provides information about the default server-side encryption settings
for an S3 bucket. For detailed information about these settings, see
Setting default server-side encryption behavior for Amazon S3 buckets
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-encryption.html)
in the I<Amazon Simple Storage Service User Guide>.

=head1 ATTRIBUTES


=head2 KmsMasterKeyId => Str

The Amazon Resource Name (ARN) or unique identifier (key ID) for the
KMS key that's used by default to encrypt objects that are added to the
bucket. This value is null if the bucket is configured to use an Amazon
S3 managed key to encrypt new objects.


=head2 Type => Str

The server-side encryption algorithm that's used by default to encrypt
objects that are added to the bucket. Possible values are:

=over

=item *

AES256 - New objects use SSE-S3 encryption. They're encrypted with an
Amazon S3 managed key.

=item *

aws:kms - New objects use SSE-KMS encryption. They're encrypted with an
KMS key (kmsMasterKeyId), either an Amazon Web Services managed key or
a customer managed key.

=item *

aws:kms:dsse - New objects use DSSE-KMS encryption. They're encrypted
with an KMS key (kmsMasterKeyId), either an Amazon Web Services managed
key or a customer managed key.

=item *

NONE - The bucket's default encryption settings don't specify
server-side encryption behavior for new objects.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

