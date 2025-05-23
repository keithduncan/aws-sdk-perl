
package Paws::EC2::CreateNetworkAclEntry;
  use Moose;
  has CidrBlock => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cidrBlock' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Egress => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'egress' , required => 1);
  has IcmpTypeCode => (is => 'ro', isa => 'Paws::EC2::IcmpTypeCode', traits => ['NameInRequest'], request_name => 'Icmp' );
  has Ipv6CidrBlock => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ipv6CidrBlock' );
  has NetworkAclId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkAclId' , required => 1);
  has PortRange => (is => 'ro', isa => 'Paws::EC2::PortRange', traits => ['NameInRequest'], request_name => 'portRange' );
  has Protocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protocol' , required => 1);
  has RuleAction => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ruleAction' , required => 1);
  has RuleNumber => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'ruleNumber' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNetworkAclEntry');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateNetworkAclEntry - Arguments for method CreateNetworkAclEntry on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNetworkAclEntry on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateNetworkAclEntry.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNetworkAclEntry.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
  # To create a network ACL entry
  # This example creates an entry for the specified network ACL. The rule allows
  # ingress traffic from anywhere (0.0.0.0/0) on UDP port 53 (DNS) into any
  # associated subnet.
    $ec2->CreateNetworkAclEntry(
      'CidrBlock'    => '0.0.0.0/0',
      'Egress'       => 0,
      'NetworkAclId' => 'acl-5fb85d36',
      'PortRange'    => {
        'From' => 53,
        'To'   => 53
      },
      'Protocol'   => 17,
      'RuleAction' => 'allow',
      'RuleNumber' => 100
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateNetworkAclEntry>

=head1 ATTRIBUTES


=head2 CidrBlock => Str

The IPv4 network range to allow or deny, in CIDR notation (for example
C<172.16.0.0/24>). We modify the specified CIDR block to its canonical
form; for example, if you specify C<100.68.0.18/18>, we modify it to
C<100.68.0.0/18>.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> Egress => Bool

Indicates whether this is an egress rule (rule is applied to traffic
leaving the subnet).



=head2 IcmpTypeCode => L<Paws::EC2::IcmpTypeCode>

ICMP protocol: The ICMP or ICMPv6 type and code. Required if specifying
protocol 1 (ICMP) or protocol 58 (ICMPv6) with an IPv6 CIDR block.



=head2 Ipv6CidrBlock => Str

The IPv6 network range to allow or deny, in CIDR notation (for example
C<2001:db8:1234:1a00::/64>).



=head2 B<REQUIRED> NetworkAclId => Str

The ID of the network ACL.



=head2 PortRange => L<Paws::EC2::PortRange>

TCP or UDP protocols: The range of ports the rule applies to. Required
if specifying protocol 6 (TCP) or 17 (UDP).



=head2 B<REQUIRED> Protocol => Str

The protocol number. A value of "-1" means all protocols. If you
specify "-1" or a protocol number other than "6" (TCP), "17" (UDP), or
"1" (ICMP), traffic on all ports is allowed, regardless of any ports or
ICMP types or codes that you specify. If you specify protocol "58"
(ICMPv6) and specify an IPv4 CIDR block, traffic for all ICMP types and
codes allowed, regardless of any that you specify. If you specify
protocol "58" (ICMPv6) and specify an IPv6 CIDR block, you must specify
an ICMP type and code.



=head2 B<REQUIRED> RuleAction => Str

Indicates whether to allow or deny the traffic that matches the rule.

Valid values are: C<"allow">, C<"deny">

=head2 B<REQUIRED> RuleNumber => Int

The rule number for the entry (for example, 100). ACL entries are
processed in ascending order by rule number.

Constraints: Positive integer from 1 to 32766. The range 32767 to 65535
is reserved for internal use.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNetworkAclEntry in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

