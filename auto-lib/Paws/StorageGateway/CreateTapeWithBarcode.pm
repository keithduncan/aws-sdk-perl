
package Paws::StorageGateway::CreateTapeWithBarcode;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has KMSEncrypted => (is => 'ro', isa => 'Bool');
  has KMSKey => (is => 'ro', isa => 'Str');
  has PoolId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::Tag]');
  has TapeBarcode => (is => 'ro', isa => 'Str', required => 1);
  has TapeSizeInBytes => (is => 'ro', isa => 'Int', required => 1);
  has Worm => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTapeWithBarcode');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::CreateTapeWithBarcodeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CreateTapeWithBarcode - Arguments for method CreateTapeWithBarcode on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTapeWithBarcode on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method CreateTapeWithBarcode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTapeWithBarcode.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    # To create a virtual tape using a barcode
    # Creates a virtual tape by using your own barcode.
    my $CreateTapeWithBarcodeOutput = $storagegateway->CreateTapeWithBarcode(
      'GatewayARN' =>
        'arn:aws:storagegateway:us-east-1:999999999999:gateway/sgw-12A3456B',
      'TapeBarcode'     => 'TEST12345',
      'TapeSizeInBytes' => 107374182400
    );

    # Results:
    my $TapeARN = $CreateTapeWithBarcodeOutput->TapeARN;

    # Returns a L<Paws::StorageGateway::CreateTapeWithBarcodeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/CreateTapeWithBarcode>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayARN => Str

The unique Amazon Resource Name (ARN) that represents the gateway to
associate the virtual tape with. Use the ListGateways operation to
return a list of gateways for your account and Amazon Web Services
Region.



=head2 KMSEncrypted => Bool

Set to C<true> to use Amazon S3 server-side encryption with your own
KMS key, or C<false> to use a key managed by Amazon S3. Optional.

Valid Values: C<true> | C<false>



=head2 KMSKey => Str

The Amazon Resource Name (ARN) of a symmetric customer master key (CMK)
used for Amazon S3 server-side encryption. Storage Gateway does not
support asymmetric CMKs. This value can only be set when
C<KMSEncrypted> is C<true>. Optional.



=head2 PoolId => Str

The ID of the pool that you want to add your tape to for archiving. The
tape in this pool is archived in the S3 storage class that is
associated with the pool. When you use your backup application to eject
the tape, the tape is archived directly into the storage class (S3
Glacier or S3 Deep Archive) that corresponds to the pool.



=head2 Tags => ArrayRef[L<Paws::StorageGateway::Tag>]

A list of up to 50 tags that can be assigned to a virtual tape that has
a barcode. Each tag is a key-value pair.

Valid characters for key and value are letters, spaces, and numbers
representable in UTF-8 format, and the following special characters: +
- = . _ : / @. The maximum length of a tag's key is 128 characters, and
the maximum length for a tag's value is 256.



=head2 B<REQUIRED> TapeBarcode => Str

The barcode that you want to assign to the tape.

Barcodes cannot be reused. This includes barcodes used for tapes that
have been deleted.



=head2 B<REQUIRED> TapeSizeInBytes => Int

The size, in bytes, of the virtual tape that you want to create.

The size must be aligned by gigabyte (1024*1024*1024 bytes).



=head2 Worm => Bool

Set to C<TRUE> if the tape you are creating is to be configured as a
write-once-read-many (WORM) tape.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTapeWithBarcode in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

