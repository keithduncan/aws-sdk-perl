
package Paws::Discovery::DescribeAgentsResponse;
  use Moose;
  has AgentsInfo => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::AgentInfo]', traits => ['NameInRequest'], request_name => 'agentsInfo' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DescribeAgentsResponse

=head1 ATTRIBUTES


=head2 AgentsInfo => ArrayRef[L<Paws::Discovery::AgentInfo>]

Lists agents or the collector by ID or lists all agents/collectors
associated with your user, if you did not specify an agent/collector
ID. The output includes agent/collector IDs, IP addresses, media access
control (MAC) addresses, agent/collector health, host name where the
agent/collector resides, and the version number of each
agent/collector.


=head2 NextToken => Str

Token to retrieve the next set of results. For example, if you
specified 100 IDs for C<DescribeAgentsRequest$agentIds> but set
C<DescribeAgentsRequest$maxResults> to 10, you received a set of 10
results along with this token. Use this token in the next query to
retrieve the next set of 10.


=head2 _request_id => Str


=cut

1;