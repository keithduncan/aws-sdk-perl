
package Paws::CloudFormation::DescribeStackResourceDriftsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackResourceDrifts => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::StackResourceDrift]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeStackResourceDriftsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the request doesn't return all the remaining results, C<NextToken>
is set to a token. To retrieve the next set of results, call
C<DescribeStackResourceDrifts> again and assign that token to the
request object's C<NextToken> parameter. If the request returns all
results, C<NextToken> is set to C<null>.


=head2 B<REQUIRED> StackResourceDrifts => ArrayRef[L<Paws::CloudFormation::StackResourceDrift>]

Drift information for the resources that have been checked for drift in
the specified stack. This includes actual and expected configuration
values for resources where CloudFormation detects drift.

For a given stack, there will be one C<StackResourceDrift> for each
stack resource that has been checked for drift. Resources that haven't
yet been checked for drift aren't included. Resources that do not
currently support drift detection aren't checked, and so not included.
For a list of resources that support drift detection, see Resource type
support for imports and drift detection
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html).


=head2 _request_id => Str


=cut

