
package Paws::KMS::DisableKeyRotation;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableKeyRotation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::DisableKeyRotation - Arguments for method DisableKeyRotation on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisableKeyRotation on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method DisableKeyRotation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisableKeyRotation.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
  # To disable automatic rotation of key material
  # The following example disables automatic annual rotation of the key material
  # for the specified KMS key.
    $kms->DisableKeyRotation(
      'KeyId' => '1234abcd-12ab-34cd-56ef-1234567890ab' );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/DisableKeyRotation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyId => Str

Identifies a symmetric encryption KMS key. You cannot enable or disable
automatic rotation of asymmetric KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html#asymmetric-cmks),
HMAC KMS keys
(https://docs.aws.amazon.com/kms/latest/developerguide/hmac.html), KMS
keys with imported key material
(https://docs.aws.amazon.com/kms/latest/developerguide/importing-keys.html),
or KMS keys in a custom key store
(https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html).

Specify the key ID or key ARN of the KMS key.

For example:

=over

=item *

Key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=back

To get the key ID and key ARN for a KMS key, use ListKeys or
DescribeKey.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisableKeyRotation in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

