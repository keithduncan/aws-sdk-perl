
package Paws::Kinesis::StopStreamEncryption;
  use Moose;
  has EncryptionType => (is => 'ro', isa => 'Str', required => 1);
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has StreamARN => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopStreamEncryption');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::StopStreamEncryption - Arguments for method StopStreamEncryption on L<Paws::Kinesis>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopStreamEncryption on the
L<Amazon Kinesis|Paws::Kinesis> service. Use the attributes of this class
as arguments to method StopStreamEncryption.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopStreamEncryption.

=head1 SYNOPSIS

    my $kinesis = Paws->service('Kinesis');
    $kinesis->StopStreamEncryption(
      EncryptionType => 'NONE',
      KeyId          => 'MyKeyId',
      StreamARN      => 'MyStreamARN',     # OPTIONAL
      StreamName     => 'MyStreamName',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesis/StopStreamEncryption>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncryptionType => Str

The encryption type. The only valid value is C<KMS>.

Valid values are: C<"NONE">, C<"KMS">

=head2 B<REQUIRED> KeyId => Str

The GUID for the customer-managed Amazon Web Services KMS key to use
for encryption. This value can be a globally unique identifier, a fully
specified Amazon Resource Name (ARN) to either an alias or a key, or an
alias name prefixed by "alias/".You can also use a master key owned by
Kinesis Data Streams by specifying the alias C<aws/kinesis>.

=over

=item *

Key ARN example:
C<arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012>

=item *

Alias ARN example:
C<arn:aws:kms:us-east-1:123456789012:alias/MyAliasName>

=item *

Globally unique key ID example: C<12345678-1234-1234-1234-123456789012>

=item *

Alias name example: C<alias/MyAliasName>

=item *

Master key owned by Kinesis Data Streams: C<alias/aws/kinesis>

=back




=head2 StreamARN => Str

The ARN of the stream.



=head2 StreamName => Str

The name of the stream on which to stop encrypting records.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopStreamEncryption in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

