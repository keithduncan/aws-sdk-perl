# Generated by default/object.tt
package Paws::SecurityHub::AwsNetworkFirewallFirewallPolicyDetails;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has FirewallPolicy => (is => 'ro', isa => 'Paws::SecurityHub::FirewallPolicyDetails');
  has FirewallPolicyArn => (is => 'ro', isa => 'Str');
  has FirewallPolicyId => (is => 'ro', isa => 'Str');
  has FirewallPolicyName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsNetworkFirewallFirewallPolicyDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsNetworkFirewallFirewallPolicyDetails object:

  $service_obj->Method(Att1 => { Description => $value, ..., FirewallPolicyName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsNetworkFirewallFirewallPolicyDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Details about a firewall policy. A firewall policy defines the behavior
of a network firewall.

=head1 ATTRIBUTES


=head2 Description => Str

A description of the firewall policy.


=head2 FirewallPolicy => L<Paws::SecurityHub::FirewallPolicyDetails>

The firewall policy configuration.


=head2 FirewallPolicyArn => Str

The ARN of the firewall policy.


=head2 FirewallPolicyId => Str

The identifier of the firewall policy.


=head2 FirewallPolicyName => Str

The name of the firewall policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

