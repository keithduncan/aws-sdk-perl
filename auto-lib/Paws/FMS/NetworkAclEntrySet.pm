# Generated by default/object.tt
package Paws::FMS::NetworkAclEntrySet;
  use Moose;
  has FirstEntries => (is => 'ro', isa => 'ArrayRef[Paws::FMS::NetworkAclEntry]');
  has ForceRemediateForFirstEntries => (is => 'ro', isa => 'Bool', required => 1);
  has ForceRemediateForLastEntries => (is => 'ro', isa => 'Bool', required => 1);
  has LastEntries => (is => 'ro', isa => 'ArrayRef[Paws::FMS::NetworkAclEntry]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::NetworkAclEntrySet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FMS::NetworkAclEntrySet object:

  $service_obj->Method(Att1 => { FirstEntries => $value, ..., LastEntries => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FMS::NetworkAclEntrySet object:

  $result = $service_obj->Method(...);
  $result->Att1->FirstEntries

=head1 DESCRIPTION

The configuration of the first and last rules for the network ACL
policy, and the remediation settings for each.

=head1 ATTRIBUTES


=head2 FirstEntries => ArrayRef[L<Paws::FMS::NetworkAclEntry>]

The rules that you want to run first in the Firewall Manager managed
network ACLs.

Provide these in the order in which you want them to run. Firewall
Manager will assign the specific rule numbers for you, in the network
ACLs that it creates.

You must specify at least one first entry or one last entry in any
network ACL policy.


=head2 B<REQUIRED> ForceRemediateForFirstEntries => Bool

Applies only when remediation is enabled for the policy as a whole.
Firewall Manager uses this setting when it finds policy violations that
involve conflicts between the custom entries and the policy entries.

If forced remediation is disabled, Firewall Manager marks the network
ACL as noncompliant and does not try to remediate. For more information
about the remediation behavior, see Remediation for managed network
ACLs
(https://docs.aws.amazon.com/waf/latest/developerguide/network-acl-policies.html#network-acls-remediation)
in the I<Firewall Manager Developer Guide>.


=head2 B<REQUIRED> ForceRemediateForLastEntries => Bool

Applies only when remediation is enabled for the policy as a whole.
Firewall Manager uses this setting when it finds policy violations that
involve conflicts between the custom entries and the policy entries.

If forced remediation is disabled, Firewall Manager marks the network
ACL as noncompliant and does not try to remediate. For more information
about the remediation behavior, see Remediation for managed network
ACLs
(https://docs.aws.amazon.com/waf/latest/developerguide/network-acl-policies.html#network-acls-remediation)
in the I<Firewall Manager Developer Guide>.


=head2 LastEntries => ArrayRef[L<Paws::FMS::NetworkAclEntry>]

The rules that you want to run last in the Firewall Manager managed
network ACLs.

Provide these in the order in which you want them to run. Firewall
Manager will assign the specific rule numbers for you, in the network
ACLs that it creates.

You must specify at least one first entry or one last entry in any
network ACL policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

