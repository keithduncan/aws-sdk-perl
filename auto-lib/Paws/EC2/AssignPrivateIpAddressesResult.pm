
package Paws::EC2::AssignPrivateIpAddressesResult;
  use Moose;
  has AssignedIpv4Prefixes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Ipv4PrefixSpecification]', request_name => 'assignedIpv4PrefixSet', traits => ['NameInRequest',]);
  has AssignedPrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AssignedPrivateIpAddress]', request_name => 'assignedPrivateIpAddressesSet', traits => ['NameInRequest',]);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssignPrivateIpAddressesResult

=head1 ATTRIBUTES


=head2 AssignedIpv4Prefixes => ArrayRef[L<Paws::EC2::Ipv4PrefixSpecification>]

The IPv4 prefixes that are assigned to the network interface.


=head2 AssignedPrivateIpAddresses => ArrayRef[L<Paws::EC2::AssignedPrivateIpAddress>]

The private IP addresses assigned to the network interface.


=head2 NetworkInterfaceId => Str

The ID of the network interface.


=head2 _request_id => Str


=cut

