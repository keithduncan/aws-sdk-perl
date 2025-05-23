
package Paws::ApplicationSignals::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationSignals::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::ApplicationSignals::Tag>]

The list of tag keys and values associated with the resource you
specified.


=head2 _request_id => Str


=cut

