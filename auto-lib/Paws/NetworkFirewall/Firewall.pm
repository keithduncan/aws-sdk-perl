# Generated by default/object.tt
package Paws::NetworkFirewall::Firewall;
  use Moose;
  has DeleteProtection => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has EnabledAnalysisTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::NetworkFirewall::EncryptionConfiguration');
  has FirewallArn => (is => 'ro', isa => 'Str');
  has FirewallId => (is => 'ro', isa => 'Str', required => 1);
  has FirewallName => (is => 'ro', isa => 'Str');
  has FirewallPolicyArn => (is => 'ro', isa => 'Str', required => 1);
  has FirewallPolicyChangeProtection => (is => 'ro', isa => 'Bool');
  has SubnetChangeProtection => (is => 'ro', isa => 'Bool');
  has SubnetMappings => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFirewall::SubnetMapping]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::NetworkFirewall::Tag]');
  has VpcId => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::Firewall

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NetworkFirewall::Firewall object:

  $service_obj->Method(Att1 => { DeleteProtection => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NetworkFirewall::Firewall object:

  $result = $service_obj->Method(...);
  $result->Att1->DeleteProtection

=head1 DESCRIPTION

The firewall defines the configuration settings for an Network Firewall
firewall. These settings include the firewall policy, the subnets in
your VPC to use for the firewall endpoints, and any tags that are
attached to the firewall Amazon Web Services resource.

The status of the firewall, for example whether it's ready to filter
network traffic, is provided in the corresponding FirewallStatus. You
can retrieve both objects by calling DescribeFirewall.

=head1 ATTRIBUTES


=head2 DeleteProtection => Bool

A flag indicating whether it is possible to delete the firewall. A
setting of C<TRUE> indicates that the firewall is protected against
deletion. Use this setting to protect against accidentally deleting a
firewall that is in use. When you create a firewall, the operation
initializes this flag to C<TRUE>.


=head2 Description => Str

A description of the firewall.


=head2 EnabledAnalysisTypes => ArrayRef[Str|Undef]

An optional setting indicating the specific traffic analysis types to
enable on the firewall.


=head2 EncryptionConfiguration => L<Paws::NetworkFirewall::EncryptionConfiguration>

A complex type that contains the Amazon Web Services KMS encryption
configuration settings for your firewall.


=head2 FirewallArn => Str

The Amazon Resource Name (ARN) of the firewall.


=head2 B<REQUIRED> FirewallId => Str

The unique identifier for the firewall.


=head2 FirewallName => Str

The descriptive name of the firewall. You can't change the name of a
firewall after you create it.


=head2 B<REQUIRED> FirewallPolicyArn => Str

The Amazon Resource Name (ARN) of the firewall policy.

The relationship of firewall to firewall policy is many to one. Each
firewall requires one firewall policy association, and you can use the
same firewall policy for multiple firewalls.


=head2 FirewallPolicyChangeProtection => Bool

A setting indicating whether the firewall is protected against a change
to the firewall policy association. Use this setting to protect against
accidentally modifying the firewall policy for a firewall that is in
use. When you create a firewall, the operation initializes this setting
to C<TRUE>.


=head2 SubnetChangeProtection => Bool

A setting indicating whether the firewall is protected against changes
to the subnet associations. Use this setting to protect against
accidentally modifying the subnet associations for a firewall that is
in use. When you create a firewall, the operation initializes this
setting to C<TRUE>.


=head2 B<REQUIRED> SubnetMappings => ArrayRef[L<Paws::NetworkFirewall::SubnetMapping>]

The public subnets that Network Firewall is using for the firewall.
Each subnet must belong to a different Availability Zone.


=head2 Tags => ArrayRef[L<Paws::NetworkFirewall::Tag>]




=head2 B<REQUIRED> VpcId => Str

The unique identifier of the VPC where the firewall is in use.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NetworkFirewall>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

