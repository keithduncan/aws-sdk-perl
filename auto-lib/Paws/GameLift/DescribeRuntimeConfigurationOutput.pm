
package Paws::GameLift::DescribeRuntimeConfigurationOutput;
  use Moose;
  has RuntimeConfiguration => (is => 'ro', isa => 'Paws::GameLift::RuntimeConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeRuntimeConfigurationOutput

=head1 ATTRIBUTES


=head2 RuntimeConfiguration => L<Paws::GameLift::RuntimeConfiguration>

Instructions that describe how server processes are launched and
maintained on computes in the fleet.


=head2 _request_id => Str


=cut

1;