
package Paws::EC2::CreateTrafficMirrorFilterRule;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DestinationPortRange => (is => 'ro', isa => 'Paws::EC2::TrafficMirrorPortRangeRequest');
  has DryRun => (is => 'ro', isa => 'Bool');
  has Protocol => (is => 'ro', isa => 'Int');
  has RuleAction => (is => 'ro', isa => 'Str', required => 1);
  has RuleNumber => (is => 'ro', isa => 'Int', required => 1);
  has SourceCidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has SourcePortRange => (is => 'ro', isa => 'Paws::EC2::TrafficMirrorPortRangeRequest');
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has TrafficDirection => (is => 'ro', isa => 'Str', required => 1);
  has TrafficMirrorFilterId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrafficMirrorFilterRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateTrafficMirrorFilterRuleResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateTrafficMirrorFilterRule - Arguments for method CreateTrafficMirrorFilterRule on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTrafficMirrorFilterRule on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateTrafficMirrorFilterRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTrafficMirrorFilterRule.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateTrafficMirrorFilterRuleResult =
      $ec2->CreateTrafficMirrorFilterRule(
      DestinationCidrBlock  => 'MyString',
      RuleAction            => 'accept',
      RuleNumber            => 1,
      SourceCidrBlock       => 'MyString',
      TrafficDirection      => 'ingress',
      TrafficMirrorFilterId => 'MyTrafficMirrorFilterId',
      ClientToken           => 'MyString',                  # OPTIONAL
      Description           => 'MyString',                  # OPTIONAL
      DestinationPortRange  => {
        FromPort => 1,
        ToPort   => 1,
      },                                                    # OPTIONAL
      DryRun          => 1,                                 # OPTIONAL
      Protocol        => 1,                                 # OPTIONAL
      SourcePortRange => {
        FromPort => 1,
        ToPort   => 1,
      },                                                    # OPTIONAL
      TagSpecifications => [
        {
          ResourceType => 'capacity-reservation'
          , # values: capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, coip-pool, declarative-policies-report, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, outpost-lag, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, service-link-virtual-interface, snapshot, spot-fleet-request, spot-instances-request, subnet, subnet-cidr-reservation, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-policy-table, transit-gateway-route-table, transit-gateway-route-table-announcement, volume, vpc, vpc-endpoint, vpc-endpoint-connection, vpc-endpoint-service, vpc-endpoint-service-permission, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log, capacity-reservation-fleet, traffic-mirror-filter-rule, vpc-endpoint-connection-device-type, verified-access-instance, verified-access-group, verified-access-endpoint, verified-access-policy, verified-access-trust-provider, vpn-connection-device-type, vpc-block-public-access-exclusion, route-server, route-server-endpoint, route-server-peer, ipam-resource-discovery, ipam-resource-discovery-association, instance-connect-endpoint, verified-access-endpoint-target, ipam-external-resource-verification-token, mac-modification-task; OPTIONAL
          Tags => [
            {
              Key   => 'MyString',
              Value => 'MyString',
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $ClientToken = $CreateTrafficMirrorFilterRuleResult->ClientToken;
    my $TrafficMirrorFilterRule =
      $CreateTrafficMirrorFilterRuleResult->TrafficMirrorFilterRule;

    # Returns a L<Paws::EC2::CreateTrafficMirrorFilterRuleResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateTrafficMirrorFilterRule>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to ensure
idempotency
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html).



=head2 Description => Str

The description of the Traffic Mirror rule.



=head2 B<REQUIRED> DestinationCidrBlock => Str

The destination CIDR block to assign to the Traffic Mirror rule.



=head2 DestinationPortRange => L<Paws::EC2::TrafficMirrorPortRangeRequest>

The destination port range.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Protocol => Int

The protocol, for example UDP, to assign to the Traffic Mirror rule.

For information about the protocol value, see Protocol Numbers
(https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)
on the Internet Assigned Numbers Authority (IANA) website.



=head2 B<REQUIRED> RuleAction => Str

The action to take on the filtered traffic.

Valid values are: C<"accept">, C<"reject">

=head2 B<REQUIRED> RuleNumber => Int

The number of the Traffic Mirror rule. This number must be unique for
each Traffic Mirror rule in a given direction. The rules are processed
in ascending order by rule number.



=head2 B<REQUIRED> SourceCidrBlock => Str

The source CIDR block to assign to the Traffic Mirror rule.



=head2 SourcePortRange => L<Paws::EC2::TrafficMirrorPortRangeRequest>

The source port range.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

Traffic Mirroring tags specifications.



=head2 B<REQUIRED> TrafficDirection => Str

The type of traffic.

Valid values are: C<"ingress">, C<"egress">

=head2 B<REQUIRED> TrafficMirrorFilterId => Str

The ID of the filter that this rule is associated with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTrafficMirrorFilterRule in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

