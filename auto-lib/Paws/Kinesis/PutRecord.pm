
package Paws::Kinesis::PutRecord;
  use Moose;
  has Data => (is => 'ro', isa => 'Str', required => 1);
  has ExplicitHashKey => (is => 'ro', isa => 'Str');
  has PartitionKey => (is => 'ro', isa => 'Str', required => 1);
  has SequenceNumberForOrdering => (is => 'ro', isa => 'Str');
  has StreamARN => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRecord');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kinesis::PutRecordOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::PutRecord - Arguments for method PutRecord on L<Paws::Kinesis>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRecord on the
L<Amazon Kinesis|Paws::Kinesis> service. Use the attributes of this class
as arguments to method PutRecord.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRecord.

=head1 SYNOPSIS

    my $kinesis = Paws->service('Kinesis');
    my $PutRecordOutput = $kinesis->PutRecord(
      Data                      => 'BlobData',
      PartitionKey              => 'MyPartitionKey',
      ExplicitHashKey           => 'MyHashKey',           # OPTIONAL
      SequenceNumberForOrdering => 'MySequenceNumber',    # OPTIONAL
      StreamARN                 => 'MyStreamARN',         # OPTIONAL
      StreamName                => 'MyStreamName',        # OPTIONAL
    );

    # Results:
    my $EncryptionType = $PutRecordOutput->EncryptionType;
    my $SequenceNumber = $PutRecordOutput->SequenceNumber;
    my $ShardId        = $PutRecordOutput->ShardId;

    # Returns a L<Paws::Kinesis::PutRecordOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesis/PutRecord>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Data => Str

The data blob to put into the record, which is base64-encoded when the
blob is serialized. When the data blob (the payload before
base64-encoding) is added to the partition key size, the total size
must not exceed the maximum record size (1 MiB).



=head2 ExplicitHashKey => Str

The hash value used to explicitly determine the shard the data record
is assigned to by overriding the partition key hash.



=head2 B<REQUIRED> PartitionKey => Str

Determines which shard in the stream the data record is assigned to.
Partition keys are Unicode strings with a maximum length limit of 256
characters for each key. Amazon Kinesis Data Streams uses the partition
key as input to a hash function that maps the partition key and
associated data to a specific shard. Specifically, an MD5 hash function
is used to map partition keys to 128-bit integer values and to map
associated data records to shards. As a result of this hashing
mechanism, all data records with the same partition key map to the same
shard within the stream.



=head2 SequenceNumberForOrdering => Str

Guarantees strictly increasing sequence numbers, for puts from the same
client and to the same partition key. Usage: set the
C<SequenceNumberForOrdering> of record I<n> to the sequence number of
record I<n-1> (as returned in the result when putting record I<n-1>).
If this parameter is not set, records are coarsely ordered based on
arrival time.



=head2 StreamARN => Str

The ARN of the stream.



=head2 StreamName => Str

The name of the stream to put the data record into.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRecord in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

