
package Paws::ECS::CreateServiceResponse;
  use Moose;
  has Service => (is => 'ro', isa => 'Paws::ECS::Service', traits => ['NameInRequest'], request_name => 'service' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::CreateServiceResponse

=head1 ATTRIBUTES


=head2 Service => L<Paws::ECS::Service>

The full description of your service following the create call.

A service will return either a C<capacityProviderStrategy> or
C<launchType> parameter, but not both, depending where one was
specified when it was created.

If a service is using the C<ECS> deployment controller, the
C<deploymentController> and C<taskSets> parameters will not be
returned.

if the service uses the C<CODE_DEPLOY> deployment controller, the
C<deploymentController>, C<taskSets> and C<deployments> parameters will
be returned, however the C<deployments> parameter will be an empty
list.


=head2 _request_id => Str


=cut

1;