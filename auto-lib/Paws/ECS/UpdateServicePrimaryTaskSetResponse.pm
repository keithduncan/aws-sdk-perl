
package Paws::ECS::UpdateServicePrimaryTaskSetResponse;
  use Moose;
  has TaskSet => (is => 'ro', isa => 'Paws::ECS::TaskSet', traits => ['NameInRequest'], request_name => 'taskSet' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::UpdateServicePrimaryTaskSetResponse

=head1 ATTRIBUTES


=head2 TaskSet => L<Paws::ECS::TaskSet>

The details about the task set.


=head2 _request_id => Str


=cut

1;