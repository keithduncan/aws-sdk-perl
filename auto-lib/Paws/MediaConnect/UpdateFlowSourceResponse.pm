
package Paws::MediaConnect::UpdateFlowSourceResponse;
  use Moose;
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowArn');
  has Source => (is => 'ro', isa => 'Paws::MediaConnect::Source', traits => ['NameInRequest'], request_name => 'source');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateFlowSourceResponse

=head1 ATTRIBUTES


=head2 FlowArn => Str

The ARN of the flow that you was updated.


=head2 Source => L<Paws::MediaConnect::Source>

The details of the sources that are assigned to the flow.


=head2 _request_id => Str


=cut

