# Generated by default/object.tt
package Paws::S3Control::EncryptionConfiguration;
  use Moose;
  has ReplicaKmsKeyID => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::EncryptionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::EncryptionConfiguration object:

  $service_obj->Method(Att1 => { ReplicaKmsKeyID => $value, ..., ReplicaKmsKeyID => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::EncryptionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ReplicaKmsKeyID

=head1 DESCRIPTION

Specifies encryption-related information for an Amazon S3 bucket that
is a destination for replicated objects. If you're specifying a
customer managed KMS key, we recommend using a fully qualified KMS key
ARN. If you use a KMS key alias instead, then KMS resolves the key
within the requesterE<rsquo>s account. This behavior can result in data
that's encrypted with a KMS key that belongs to the requester, and not
the bucket owner.

This is not supported by Amazon S3 on Outposts buckets.

=head1 ATTRIBUTES


=head2 ReplicaKmsKeyID => Str

Specifies the ID of the customer managed KMS key that's stored in Key
Management Service (KMS) for the destination bucket. This ID is either
the Amazon Resource Name (ARN) for the KMS key or the alias ARN for the
KMS key. Amazon S3 uses this KMS key to encrypt replica objects. Amazon
S3 supports only symmetric encryption KMS keys. For more information,
see Symmetric encryption KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#symmetric-cmks)
in the I<Amazon Web Services Key Management Service Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

