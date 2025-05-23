
package Paws::Firehose::StartDeliveryStreamEncryption;
  use Moose;
  has DeliveryStreamEncryptionConfigurationInput => (is => 'ro', isa => 'Paws::Firehose::DeliveryStreamEncryptionConfigurationInput');
  has DeliveryStreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDeliveryStreamEncryption');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Firehose::StartDeliveryStreamEncryptionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::StartDeliveryStreamEncryption - Arguments for method StartDeliveryStreamEncryption on L<Paws::Firehose>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDeliveryStreamEncryption on the
L<Amazon Kinesis Firehose|Paws::Firehose> service. Use the attributes of this class
as arguments to method StartDeliveryStreamEncryption.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDeliveryStreamEncryption.

=head1 SYNOPSIS

    my $firehose = Paws->service('Firehose');
    my $StartDeliveryStreamEncryptionOutput =
      $firehose->StartDeliveryStreamEncryption(
      DeliveryStreamName                         => 'MyDeliveryStreamName',
      DeliveryStreamEncryptionConfigurationInput => {
        KeyType =>
          'AWS_OWNED_CMK',    # values: AWS_OWNED_CMK, CUSTOMER_MANAGED_CMK
        KeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512; OPTIONAL
      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/firehose/StartDeliveryStreamEncryption>

=head1 ATTRIBUTES


=head2 DeliveryStreamEncryptionConfigurationInput => L<Paws::Firehose::DeliveryStreamEncryptionConfigurationInput>

Used to specify the type and Amazon Resource Name (ARN) of the KMS key
needed for Server-Side Encryption (SSE).



=head2 B<REQUIRED> DeliveryStreamName => Str

The name of the Firehose stream for which you want to enable
server-side encryption (SSE).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDeliveryStreamEncryption in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

