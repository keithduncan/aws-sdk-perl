
package Paws::EC2::DescribeInstanceStatusResult;
  use Moose;
  has InstanceStatuses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceStatus]', request_name => 'instanceStatusSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeInstanceStatusResult

=head1 ATTRIBUTES


=head2 InstanceStatuses => ArrayRef[L<Paws::EC2::InstanceStatus>]

Information about the status of the instances.


=head2 NextToken => Str

The token to include in another request to get the next page of items.
This value is C<null> when there are no more items to return.


=head2 _request_id => Str


=cut

