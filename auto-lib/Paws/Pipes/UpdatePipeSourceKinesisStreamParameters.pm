# Generated by default/object.tt
package Paws::Pipes::UpdatePipeSourceKinesisStreamParameters;
  use Moose;
  has BatchSize => (is => 'ro', isa => 'Int');
  has DeadLetterConfig => (is => 'ro', isa => 'Paws::Pipes::DeadLetterConfig');
  has MaximumBatchingWindowInSeconds => (is => 'ro', isa => 'Int');
  has MaximumRecordAgeInSeconds => (is => 'ro', isa => 'Int');
  has MaximumRetryAttempts => (is => 'ro', isa => 'Int');
  has OnPartialBatchItemFailure => (is => 'ro', isa => 'Str');
  has ParallelizationFactor => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pipes::UpdatePipeSourceKinesisStreamParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pipes::UpdatePipeSourceKinesisStreamParameters object:

  $service_obj->Method(Att1 => { BatchSize => $value, ..., ParallelizationFactor => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pipes::UpdatePipeSourceKinesisStreamParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->BatchSize

=head1 DESCRIPTION

The parameters for using a Kinesis stream as a source.

=head1 ATTRIBUTES


=head2 BatchSize => Int

The maximum number of records to include in each batch.


=head2 DeadLetterConfig => L<Paws::Pipes::DeadLetterConfig>

Define the target queue to send dead-letter queue events to.


=head2 MaximumBatchingWindowInSeconds => Int

The maximum length of a time to wait for events.


=head2 MaximumRecordAgeInSeconds => Int

Discard records older than the specified age. The default value is -1,
which sets the maximum age to infinite. When the value is set to
infinite, EventBridge never discards old records.


=head2 MaximumRetryAttempts => Int

Discard records after the specified number of retries. The default
value is -1, which sets the maximum number of retries to infinite. When
MaximumRetryAttempts is infinite, EventBridge retries failed records
until the record expires in the event source.


=head2 OnPartialBatchItemFailure => Str

Define how to handle item process failures. C<AUTOMATIC_BISECT> halves
each batch and retry each half until all the records are processed or
there is one failed message left in the batch.


=head2 ParallelizationFactor => Int

The number of batches to process concurrently from each shard. The
default value is 1.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pipes>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

