
package Paws::KMS::TagResource;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::KMS::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::TagResource - Arguments for method TagResource on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To tag a KMS key
    # The following example tags a KMS key.
    $kms->TagResource(
      'KeyId' => '1234abcd-12ab-34cd-56ef-1234567890ab',
      'Tags'  => [

        {
          'TagKey'   => 'Purpose',
          'TagValue' => 'Test'
        }
      ]
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyId => Str

Identifies a customer managed key in the account and Region.

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



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::KMS::Tag>]

One or more tags. Each tag consists of a tag key and a tag value. The
tag value can be an empty (null) string.

Do not include confidential or sensitive information in this field.
This field may be displayed in plaintext in CloudTrail logs and other
output.

You cannot have more than one tag on a KMS key with the same tag key.
If you specify an existing tag key with a different tag value, KMS
replaces the current tag value with the specified one.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

