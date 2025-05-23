
package Paws::Lambda::GetProvisionedConcurrencyConfigResponse;
  use Moose;
  has AllocatedProvisionedConcurrentExecutions => (is => 'ro', isa => 'Int');
  has AvailableProvisionedConcurrentExecutions => (is => 'ro', isa => 'Int');
  has LastModified => (is => 'ro', isa => 'Str');
  has RequestedProvisionedConcurrentExecutions => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Str');
  has StatusReason => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetProvisionedConcurrencyConfigResponse

=head1 ATTRIBUTES


=head2 AllocatedProvisionedConcurrentExecutions => Int

The amount of provisioned concurrency allocated. When a weighted alias
is used during linear and canary deployments, this value fluctuates
depending on the amount of concurrency that is provisioned for the
function versions.


=head2 AvailableProvisionedConcurrentExecutions => Int

The amount of provisioned concurrency available.


=head2 LastModified => Str

The date and time that a user last updated the configuration, in ISO
8601 format (https://www.iso.org/iso-8601-date-and-time-format.html).


=head2 RequestedProvisionedConcurrentExecutions => Int

The amount of provisioned concurrency requested.


=head2 Status => Str

The status of the allocation process.

Valid values are: C<"IN_PROGRESS">, C<"READY">, C<"FAILED">
=head2 StatusReason => Str

For failed allocations, the reason that provisioned concurrency could
not be allocated.


=head2 _request_id => Str


=cut

