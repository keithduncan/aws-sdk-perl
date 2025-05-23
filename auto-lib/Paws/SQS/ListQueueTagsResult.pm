
package Paws::SQS::ListQueueTagsResult;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::SQS::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SQS::ListQueueTagsResult

=head1 ATTRIBUTES


=head2 Tags => L<Paws::SQS::TagMap>

The list of all tags added to the specified queue.


=head2 _request_id => Str


=cut

1;