
package Paws::Discovery::GetDiscoverySummaryResponse;
  use Moose;
  has AgentlessCollectorSummary => (is => 'ro', isa => 'Paws::Discovery::CustomerAgentlessCollectorInfo', traits => ['NameInRequest'], request_name => 'agentlessCollectorSummary' );
  has AgentSummary => (is => 'ro', isa => 'Paws::Discovery::CustomerAgentInfo', traits => ['NameInRequest'], request_name => 'agentSummary' );
  has Applications => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'applications' );
  has ConnectorSummary => (is => 'ro', isa => 'Paws::Discovery::CustomerConnectorInfo', traits => ['NameInRequest'], request_name => 'connectorSummary' );
  has MeCollectorSummary => (is => 'ro', isa => 'Paws::Discovery::CustomerMeCollectorInfo', traits => ['NameInRequest'], request_name => 'meCollectorSummary' );
  has Servers => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'servers' );
  has ServersMappedToApplications => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'serversMappedToApplications' );
  has ServersMappedtoTags => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'serversMappedtoTags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::GetDiscoverySummaryResponse

=head1 ATTRIBUTES


=head2 AgentlessCollectorSummary => L<Paws::Discovery::CustomerAgentlessCollectorInfo>

Details about Agentless Collector collectors, including status.


=head2 AgentSummary => L<Paws::Discovery::CustomerAgentInfo>

Details about discovered agents, including agent status and health.


=head2 Applications => Int

The number of applications discovered.


=head2 ConnectorSummary => L<Paws::Discovery::CustomerConnectorInfo>

Details about discovered connectors, including connector status and
health.


=head2 MeCollectorSummary => L<Paws::Discovery::CustomerMeCollectorInfo>

Details about Migration Evaluator collectors, including collector
status and health.


=head2 Servers => Int

The number of servers discovered.


=head2 ServersMappedToApplications => Int

The number of servers mapped to applications.


=head2 ServersMappedtoTags => Int

The number of servers mapped to tags.


=head2 _request_id => Str


=cut

1;