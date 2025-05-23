# Generated by default/object.tt
package Paws::FMS::NetworkAclCommonPolicy;
  use Moose;
  has NetworkAclEntrySet => (is => 'ro', isa => 'Paws::FMS::NetworkAclEntrySet', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::NetworkAclCommonPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FMS::NetworkAclCommonPolicy object:

  $service_obj->Method(Att1 => { NetworkAclEntrySet => $value, ..., NetworkAclEntrySet => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FMS::NetworkAclCommonPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->NetworkAclEntrySet

=head1 DESCRIPTION

Defines a Firewall Manager network ACL policy. This is used in the
C<PolicyOption> of a C<SecurityServicePolicyData> for a C<Policy>, when
the C<SecurityServicePolicyData> type is set to C<NETWORK_ACL_COMMON>.

For information about network ACLs, see Control traffic to subnets
using network ACLs
(https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html)
in the I<Amazon Virtual Private Cloud User Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> NetworkAclEntrySet => L<Paws::FMS::NetworkAclEntrySet>

The definition of the first and last rules for the network ACL policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

