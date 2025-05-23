
package Paws::Kinesis::ListStreamsOutput;
  use Moose;
  has HasMoreStreams => (is => 'ro', isa => 'Bool', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has StreamNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has StreamSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Kinesis::StreamSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::ListStreamsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> HasMoreStreams => Bool

If set to C<true>, there are more streams available to list.


=head2 NextToken => Str




=head2 B<REQUIRED> StreamNames => ArrayRef[Str|Undef]

The names of the streams that are associated with the Amazon Web
Services account making the C<ListStreams> request.


=head2 StreamSummaries => ArrayRef[L<Paws::Kinesis::StreamSummary>]




=head2 _request_id => Str


=cut

1;