
package Paws::MediaConnect::StartFlowResponse;
  use Moose;
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowArn');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::StartFlowResponse

=head1 ATTRIBUTES


=head2 FlowArn => Str

The ARN of the flow that you started.


=head2 Status => Str

The status of the flow when the C<StartFlow> process begins.

Valid values are: C<"STANDBY">, C<"ACTIVE">, C<"UPDATING">, C<"DELETING">, C<"STARTING">, C<"STOPPING">, C<"ERROR">
=head2 _request_id => Str


=cut

