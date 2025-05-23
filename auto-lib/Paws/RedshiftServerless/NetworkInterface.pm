# Generated by default/object.tt
package Paws::RedshiftServerless::NetworkInterface;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has Ipv6Address => (is => 'ro', isa => 'Str', request_name => 'ipv6Address', traits => ['NameInRequest']);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceId', traits => ['NameInRequest']);
  has PrivateIpAddress => (is => 'ro', isa => 'Str', request_name => 'privateIpAddress', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::NetworkInterface

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedshiftServerless::NetworkInterface object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., SubnetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedshiftServerless::NetworkInterface object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

Contains information about a network interface in an Amazon Redshift
Serverless managed VPC endpoint.

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The availability Zone.


=head2 Ipv6Address => Str

The IPv6 address of the network interface within the subnet.


=head2 NetworkInterfaceId => Str

The unique identifier of the network interface.


=head2 PrivateIpAddress => Str

The IPv4 address of the network interface within the subnet.


=head2 SubnetId => Str

The unique identifier of the subnet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

