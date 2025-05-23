
package Paws::IoTFleetWise::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::IoTFleetWise::Tag>]

The list of tags assigned to the resource.


=head2 _request_id => Str


=cut

1;