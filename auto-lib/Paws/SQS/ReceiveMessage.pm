
package Paws::SQS::ReceiveMessage;
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxNumberOfMessages => (is => 'ro', isa => 'Int');
  has MessageAttributeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MessageSystemAttributeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);
  has ReceiveRequestAttemptId => (is => 'ro', isa => 'Str');
  has VisibilityTimeout => (is => 'ro', isa => 'Int');
  has WaitTimeSeconds => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReceiveMessage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SQS::ReceiveMessageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::ReceiveMessage - Arguments for method ReceiveMessage on L<Paws::SQS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReceiveMessage on the
L<Amazon Simple Queue Service|Paws::SQS> service. Use the attributes of this class
as arguments to method ReceiveMessage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReceiveMessage.

=head1 SYNOPSIS

    my $sqs = Paws->service('SQS');
    my $ReceiveMessageResult = $sqs->ReceiveMessage(
      QueueUrl       => 'MyString',
      AttributeNames => [
        'All',
        ... # values: All, Policy, VisibilityTimeout, MaximumMessageSize, MessageRetentionPeriod, ApproximateNumberOfMessages, ApproximateNumberOfMessagesNotVisible, CreatedTimestamp, LastModifiedTimestamp, QueueArn, ApproximateNumberOfMessagesDelayed, DelaySeconds, ReceiveMessageWaitTimeSeconds, RedrivePolicy, FifoQueue, ContentBasedDeduplication, KmsMasterKeyId, KmsDataKeyReusePeriodSeconds, DeduplicationScope, FifoThroughputLimit, RedriveAllowPolicy, SqsManagedSseEnabled
      ],    # OPTIONAL
      MaxNumberOfMessages   => 1,                                    # OPTIONAL
      MessageAttributeNames => [ 'MyMessageAttributeName', ... ],    # OPTIONAL
      MessageSystemAttributeNames => [
        'All',
        ... # values: All, SenderId, SentTimestamp, ApproximateReceiveCount, ApproximateFirstReceiveTimestamp, SequenceNumber, MessageDeduplicationId, MessageGroupId, AWSTraceHeader, DeadLetterQueueSourceArn
      ],    # OPTIONAL
      ReceiveRequestAttemptId => 'MyString',    # OPTIONAL
      VisibilityTimeout       => 1,             # OPTIONAL
      WaitTimeSeconds         => 1,             # OPTIONAL
    );

    # Results:
    my $Messages = $ReceiveMessageResult->Messages;

    # Returns a L<Paws::SQS::ReceiveMessageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sqs/ReceiveMessage>

=head1 ATTRIBUTES


=head2 AttributeNames => ArrayRef[Str|Undef]

This parameter has been discontinued but will be supported for backward
compatibility. To provide attribute names, you are encouraged to use
C<MessageSystemAttributeNames>.

A list of attributes that need to be returned along with each message.
These attributes include:

=over

=item *

C<All> E<ndash> Returns all values.

=item *

C<ApproximateFirstReceiveTimestamp> E<ndash> Returns the time the
message was first received from the queue (epoch time
(http://en.wikipedia.org/wiki/Unix_time) in milliseconds).

=item *

C<ApproximateReceiveCount> E<ndash> Returns the number of times a
message has been received across all queues but not deleted.

=item *

C<AWSTraceHeader> E<ndash> Returns the X-Ray trace header string.

=item *

C<SenderId>

=over

=item *

For a user, returns the user ID, for example C<ABCDEFGHI1JKLMNOPQ23R>.

=item *

For an IAM role, returns the IAM role ID, for example
C<ABCDE1F2GH3I4JK5LMNOP:i-a123b456>.

=back

=item *

C<SentTimestamp> E<ndash> Returns the time the message was sent to the
queue (epoch time (http://en.wikipedia.org/wiki/Unix_time) in
milliseconds).

=item *

C<SqsManagedSseEnabled> E<ndash> Enables server-side queue encryption
using SQS owned encryption keys. Only one server-side encryption option
is supported per queue (for example, SSE-KMS
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sse-existing-queue.html)
or SSE-SQS
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sqs-sse-queue.html)).

=item *

C<MessageDeduplicationId> E<ndash> Returns the value provided by the
producer that calls the C< SendMessage > action.

=item *

C<MessageGroupId> E<ndash> Returns the value provided by the producer
that calls the C< SendMessage > action. Messages with the same
C<MessageGroupId> are returned in sequence.

=item *

C<SequenceNumber> E<ndash> Returns the value provided by Amazon SQS.

=back




=head2 MaxNumberOfMessages => Int

The maximum number of messages to return. Amazon SQS never returns more
messages than this value (however, fewer messages might be returned).
Valid values: 1 to 10. Default: 1.



=head2 MessageAttributeNames => ArrayRef[Str|Undef]

The name of the message attribute, where I<N> is the index.

=over

=item *

The name can contain alphanumeric characters and the underscore (C<_>),
hyphen (C<->), and period (C<.>).

=item *

The name is case-sensitive and must be unique among all attribute names
for the message.

=item *

The name must not start with AWS-reserved prefixes such as C<AWS.> or
C<Amazon.> (or any casing variants).

=item *

The name must not start or end with a period (C<.>), and it should not
have periods in succession (C<..>).

=item *

The name can be up to 256 characters long.

=back

When using C<ReceiveMessage>, you can send a list of attribute names to
receive, or you can return all of the attributes by specifying C<All>
or C<.*> in your request. You can also use all message attributes
starting with a prefix, for example C<bar.*>.



=head2 MessageSystemAttributeNames => ArrayRef[Str|Undef]

A list of attributes that need to be returned along with each message.
These attributes include:

=over

=item *

C<All> E<ndash> Returns all values.

=item *

C<ApproximateFirstReceiveTimestamp> E<ndash> Returns the time the
message was first received from the queue (epoch time
(http://en.wikipedia.org/wiki/Unix_time) in milliseconds).

=item *

C<ApproximateReceiveCount> E<ndash> Returns the number of times a
message has been received across all queues but not deleted.

=item *

C<AWSTraceHeader> E<ndash> Returns the X-Ray trace header string.

=item *

C<SenderId>

=over

=item *

For a user, returns the user ID, for example C<ABCDEFGHI1JKLMNOPQ23R>.

=item *

For an IAM role, returns the IAM role ID, for example
C<ABCDE1F2GH3I4JK5LMNOP:i-a123b456>.

=back

=item *

C<SentTimestamp> E<ndash> Returns the time the message was sent to the
queue (epoch time (http://en.wikipedia.org/wiki/Unix_time) in
milliseconds).

=item *

C<SqsManagedSseEnabled> E<ndash> Enables server-side queue encryption
using SQS owned encryption keys. Only one server-side encryption option
is supported per queue (for example, SSE-KMS
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sse-existing-queue.html)
or SSE-SQS
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-configure-sqs-sse-queue.html)).

=item *

C<MessageDeduplicationId> E<ndash> Returns the value provided by the
producer that calls the C< SendMessage > action.

=item *

C<MessageGroupId> E<ndash> Returns the value provided by the producer
that calls the C< SendMessage > action. Messages with the same
C<MessageGroupId> are returned in sequence.

=item *

C<SequenceNumber> E<ndash> Returns the value provided by Amazon SQS.

=back




=head2 B<REQUIRED> QueueUrl => Str

The URL of the Amazon SQS queue from which messages are received.

Queue URLs and names are case-sensitive.



=head2 ReceiveRequestAttemptId => Str

This parameter applies only to FIFO (first-in-first-out) queues.

The token used for deduplication of C<ReceiveMessage> calls. If a
networking issue occurs after a C<ReceiveMessage> action, and instead
of a response you receive a generic error, it is possible to retry the
same action with an identical C<ReceiveRequestAttemptId> to retrieve
the same set of messages, even if their visibility timeout has not yet
expired.

=over

=item *

You can use C<ReceiveRequestAttemptId> only for 5 minutes after a
C<ReceiveMessage> action.

=item *

When you set C<FifoQueue>, a caller of the C<ReceiveMessage> action can
provide a C<ReceiveRequestAttemptId> explicitly.

=item *

It is possible to retry the C<ReceiveMessage> action with the same
C<ReceiveRequestAttemptId> if none of the messages have been modified
(deleted or had their visibility changes).

=item *

During a visibility timeout, subsequent calls with the same
C<ReceiveRequestAttemptId> return the same messages and receipt
handles. If a retry occurs within the deduplication interval, it resets
the visibility timeout. For more information, see Visibility Timeout
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html)
in the I<Amazon SQS Developer Guide>.

If a caller of the C<ReceiveMessage> action still processes messages
when the visibility timeout expires and messages become visible,
another worker consuming from the same queue can receive the same
messages and therefore process duplicates. Also, if a consumer whose
message processing time is longer than the visibility timeout tries to
delete the processed messages, the action fails with an error.

To mitigate this effect, ensure that your application observes a safe
threshold before the visibility timeout expires and extend the
visibility timeout as necessary.

=item *

While messages with a particular C<MessageGroupId> are invisible, no
more messages belonging to the same C<MessageGroupId> are returned
until the visibility timeout expires. You can still receive messages
with another C<MessageGroupId> as long as it is also visible.

=item *

If a caller of C<ReceiveMessage> can't track the
C<ReceiveRequestAttemptId>, no retries work until the original
visibility timeout expires. As a result, delays might occur but the
messages in the queue remain in a strict order.

=back

The maximum length of C<ReceiveRequestAttemptId> is 128 characters.
C<ReceiveRequestAttemptId> can contain alphanumeric characters (C<a-z>,
C<A-Z>, C<0-9>) and punctuation
(C<!"#$%&'()*+,-./:;E<lt>=E<gt>?@[\]^_`{|}~>).

For best practices of using C<ReceiveRequestAttemptId>, see Using the
ReceiveRequestAttemptId Request Parameter
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/using-receiverequestattemptid-request-parameter.html)
in the I<Amazon SQS Developer Guide>.



=head2 VisibilityTimeout => Int

The duration (in seconds) that the received messages are hidden from
subsequent retrieve requests after being retrieved by a
C<ReceiveMessage> request. If not specified, the default visibility
timeout for the queue is used, which is 30 seconds.

Understanding C<VisibilityTimeout>:

=over

=item *

When a message is received from a queue, it becomes temporarily
invisible to other consumers for the duration of the visibility
timeout. This prevents multiple consumers from processing the same
message simultaneously. If the message is not deleted or its visibility
timeout is not extended before the timeout expires, it becomes visible
again and can be retrieved by other consumers.

=item *

Setting an appropriate visibility timeout is crucial. If it's too
short, the message might become visible again before processing is
complete, leading to duplicate processing. If it's too long, it delays
the reprocessing of messages if the initial processing fails.

=item *

You can adjust the visibility timeout using the C<--visibility-timeout>
parameter in the C<receive-message> command to match the processing
time required by your application.

=item *

A message that isn't deleted or a message whose visibility isn't
extended before the visibility timeout expires counts as a failed
receive. Depending on the configuration of the queue, the message might
be sent to the dead-letter queue.

=back

For more information, see Visibility Timeout
(https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-visibility-timeout.html)
in the I<Amazon SQS Developer Guide>.



=head2 WaitTimeSeconds => Int

The duration (in seconds) for which the call waits for a message to
arrive in the queue before returning. If a message is available, the
call returns sooner than C<WaitTimeSeconds>. If no messages are
available and the wait time expires, the call does not return a message
list. If you are using the Java SDK, it returns a
C<ReceiveMessageResponse> object, which has a empty list instead of a
Null object.

To avoid HTTP errors, ensure that the HTTP response timeout for
C<ReceiveMessage> requests is longer than the C<WaitTimeSeconds>
parameter. For example, with the Java SDK, you can set HTTP transport
settings using the NettyNioAsyncHttpClient
(https://sdk.amazonaws.com/java/api/latest/software/amazon/awssdk/http/nio/netty/NettyNioAsyncHttpClient.html)
for asynchronous clients, or the ApacheHttpClient
(https://sdk.amazonaws.com/java/api/latest/software/amazon/awssdk/http/apache/ApacheHttpClient.html)
for synchronous clients.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReceiveMessage in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

