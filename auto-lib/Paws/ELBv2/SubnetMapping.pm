# Generated by default/object.tt
package Paws::ELBv2::SubnetMapping;
  use Moose;
  has AllocationId => (is => 'ro', isa => 'Str');
  has IPv6Address => (is => 'ro', isa => 'Str');
  has PrivateIPv4Address => (is => 'ro', isa => 'Str');
  has SourceNatIpv6Prefix => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::SubnetMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::SubnetMapping object:

  $service_obj->Method(Att1 => { AllocationId => $value, ..., SubnetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::SubnetMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocationId

=head1 DESCRIPTION

Information about a subnet mapping.

=head1 ATTRIBUTES


=head2 AllocationId => Str

[Network Load Balancers] The allocation ID of the Elastic IP address
for an internet-facing load balancer.


=head2 IPv6Address => Str

[Network Load Balancers] The IPv6 address.


=head2 PrivateIPv4Address => Str

[Network Load Balancers] The private IPv4 address for an internal load
balancer.


=head2 SourceNatIpv6Prefix => Str

[Network Load Balancers with UDP listeners] The IPv6 prefix to use for
source NAT. Specify an IPv6 prefix (/80 netmask) from the subnet CIDR
block or C<auto_assigned> to use an IPv6 prefix selected at random from
the subnet CIDR block.


=head2 SubnetId => Str

The ID of the subnet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

