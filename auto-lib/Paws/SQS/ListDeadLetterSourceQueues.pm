
package Paws::SQS::ListDeadLetterSourceQueues;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has QueueUrl => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeadLetterSourceQueues');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SQS::ListDeadLetterSourceQueuesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::ListDeadLetterSourceQueues - Arguments for method ListDeadLetterSourceQueues on L<Paws::SQS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDeadLetterSourceQueues on the
L<Amazon Simple Queue Service|Paws::SQS> service. Use the attributes of this class
as arguments to method ListDeadLetterSourceQueues.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDeadLetterSourceQueues.

=head1 SYNOPSIS

    my $sqs = Paws->service('SQS');
    my $ListDeadLetterSourceQueuesResult = $sqs->ListDeadLetterSourceQueues(
      QueueUrl   => 'MyString',
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListDeadLetterSourceQueuesResult->NextToken;
    my $QueueUrls = $ListDeadLetterSourceQueuesResult->QueueUrls;

    # Returns a L<Paws::SQS::ListDeadLetterSourceQueuesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sqs/ListDeadLetterSourceQueues>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of results to include in the response. Value range is 1
to 1000. You must set C<MaxResults> to receive a value for C<NextToken>
in the response.



=head2 NextToken => Str

Pagination token to request the next set of results.



=head2 B<REQUIRED> QueueUrl => Str

The URL of a dead-letter queue.

Queue URLs and names are case-sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDeadLetterSourceQueues in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

