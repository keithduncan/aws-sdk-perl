
package Paws::EC2::RevokeSecurityGroupIngress;
  use Moose;
  has CidrIp => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has FromPort => (is => 'ro', isa => 'Int');
  has GroupId => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpPermission]');
  has IpProtocol => (is => 'ro', isa => 'Str');
  has SecurityGroupRuleIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SecurityGroupRuleId' );
  has SourceSecurityGroupName => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupOwnerId => (is => 'ro', isa => 'Str');
  has ToPort => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeSecurityGroupIngress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::RevokeSecurityGroupIngressResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RevokeSecurityGroupIngress - Arguments for method RevokeSecurityGroupIngress on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RevokeSecurityGroupIngress on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method RevokeSecurityGroupIngress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RevokeSecurityGroupIngress.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $RevokeSecurityGroupIngressResult = $ec2->RevokeSecurityGroupIngress(
      CidrIp        => 'MyString',               # OPTIONAL
      DryRun        => 1,                        # OPTIONAL
      FromPort      => 1,                        # OPTIONAL
      GroupId       => 'MySecurityGroupId',      # OPTIONAL
      GroupName     => 'MySecurityGroupName',    # OPTIONAL
      IpPermissions => [
        {
          FromPort   => 1,
          IpProtocol => 'MyString',
          IpRanges   => [
            {
              CidrIp      => 'MyString',
              Description => 'MyString',
            },
            ...
          ],    # OPTIONAL
          Ipv6Ranges => [
            {
              CidrIpv6    => 'MyString',
              Description => 'MyString',
            },
            ...
          ],    # OPTIONAL
          PrefixListIds => [
            {
              Description  => 'MyString',
              PrefixListId => 'MyString',
            },
            ...
          ],    # OPTIONAL
          ToPort           => 1,
          UserIdGroupPairs => [
            {
              Description            => 'MyString',
              GroupId                => 'MyString',
              GroupName              => 'MyString',
              PeeringStatus          => 'MyString',
              UserId                 => 'MyString',
              VpcId                  => 'MyString',
              VpcPeeringConnectionId => 'MyString',
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      IpProtocol                 => 'MyString',             # OPTIONAL
      SecurityGroupRuleIds       => [ 'MyString', ... ],    # OPTIONAL
      SourceSecurityGroupName    => 'MyString',             # OPTIONAL
      SourceSecurityGroupOwnerId => 'MyString',             # OPTIONAL
      ToPort                     => 1,                      # OPTIONAL
    );

    # Results:
    my $Return = $RevokeSecurityGroupIngressResult->Return;
    my $RevokedSecurityGroupRules =
      $RevokeSecurityGroupIngressResult->RevokedSecurityGroupRules;
    my $UnknownIpPermissions =
      $RevokeSecurityGroupIngressResult->UnknownIpPermissions;

    # Returns a L<Paws::EC2::RevokeSecurityGroupIngressResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/RevokeSecurityGroupIngress>

=head1 ATTRIBUTES


=head2 CidrIp => Str

The CIDR IP address range. You can't specify this parameter when
specifying a source security group.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 FromPort => Int

If the protocol is TCP or UDP, this is the start of the port range. If
the protocol is ICMP, this is the ICMP type or -1 (all ICMP types).



=head2 GroupId => Str

The ID of the security group.



=head2 GroupName => Str

[Default VPC] The name of the security group. You must specify either
the security group ID or the security group name in the request. For
security groups in a nondefault VPC, you must specify the security
group ID.



=head2 IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>]

The sets of IP permissions. You can't specify a source security group
and a CIDR IP address range in the same set of permissions.



=head2 IpProtocol => Str

The IP protocol name (C<tcp>, C<udp>, C<icmp>) or number (see Protocol
Numbers
(http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)).
Use C<-1> to specify all.



=head2 SecurityGroupRuleIds => ArrayRef[Str|Undef]

The IDs of the security group rules.



=head2 SourceSecurityGroupName => Str

[Default VPC] The name of the source security group. You can't specify
this parameter in combination with the following parameters: the CIDR
IP address range, the start of the port range, the IP protocol, and the
end of the port range. The source security group must be in the same
VPC. To revoke a specific rule for an IP protocol and port range, use a
set of IP permissions instead.



=head2 SourceSecurityGroupOwnerId => Str

Not supported.



=head2 ToPort => Int

If the protocol is TCP or UDP, this is the end of the port range. If
the protocol is ICMP, this is the ICMP code or -1 (all ICMP codes).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RevokeSecurityGroupIngress in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

