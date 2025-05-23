
package Paws::KMS::GetPublicKey;
  use Moose;
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPublicKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::GetPublicKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GetPublicKey - Arguments for method GetPublicKey on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPublicKey on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method GetPublicKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPublicKey.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
 # To download the public key of an asymmetric KMS key
 # This example gets the public key of an asymmetric RSA KMS key used for
 # encryption and decryption. The operation returns the key spec, key usage, and
 # encryption or signing algorithms to help you use the public key correctly
 # outside of AWS KMS.
    my $GetPublicKeyResponse =
      $kms->GetPublicKey( 'KeyId' =>
'arn:aws:kms:us-west-2:111122223333:key/0987dcba-09fe-87dc-65ba-ab0987654321'
      );

    # Results:
    my $CustomerMasterKeySpec = $GetPublicKeyResponse->CustomerMasterKeySpec;
    my $EncryptionAlgorithms  = $GetPublicKeyResponse->EncryptionAlgorithms;
    my $KeyId                 = $GetPublicKeyResponse->KeyId;
    my $KeyUsage              = $GetPublicKeyResponse->KeyUsage;
    my $PublicKey             = $GetPublicKeyResponse->PublicKey;

    # Returns a L<Paws::KMS::GetPublicKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/GetPublicKey>

=head1 ATTRIBUTES


=head2 GrantTokens => ArrayRef[Str|Undef]

A list of grant tokens.

Use a grant token when your permission to call this operation comes
from a new grant that has not yet achieved I<eventual consistency>. For
more information, see Grant token
(https://docs.aws.amazon.com/kms/latest/developerguide/grants.html#grant_token)
and Using a grant token
(https://docs.aws.amazon.com/kms/latest/developerguide/grant-manage.html#using-grant-token)
in the I<Key Management Service Developer Guide>.



=head2 B<REQUIRED> KeyId => Str

Identifies the asymmetric KMS key that includes the public key.

To specify a KMS key, use its key ID, key ARN, alias name, or alias
ARN. When using an alias name, prefix it with C<"alias/">. To specify a
KMS key in a different Amazon Web Services account, you must use the
key ARN or alias ARN.

For example:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Alias name: C<alias/ExampleAlias>

=item *

Alias ARN: C<arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias>

=back

To get the key ID and key ARN for a KMS key, use ListKeys or
DescribeKey. To get the alias name and alias ARN, use ListAliases.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPublicKey in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

