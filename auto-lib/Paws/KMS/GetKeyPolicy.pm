
package Paws::KMS::GetKeyPolicy;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetKeyPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::GetKeyPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GetKeyPolicy - Arguments for method GetKeyPolicy on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetKeyPolicy on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method GetKeyPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetKeyPolicy.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    # To retrieve a key policy
    # The following example retrieves the key policy for the specified KMS key.
    my $GetKeyPolicyResponse = $kms->GetKeyPolicy(
      'KeyId'      => '1234abcd-12ab-34cd-56ef-1234567890ab',
      'PolicyName' => 'default'
    );

    # Results:
    my $Policy = $GetKeyPolicyResponse->Policy;

    # Returns a L<Paws::KMS::GetKeyPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/GetKeyPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyId => Str

Gets the key policy for the specified KMS key.

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



=head2 PolicyName => Str

Specifies the name of the key policy. If no policy name is specified,
the default value is C<default>. The only valid name is C<default>. To
get the names of key policies, use ListKeyPolicies.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetKeyPolicy in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

