package Paws::EC2::InstanceNetworkInterfaceAssociation;
  use Moose;
  has CarrierIp => (is => 'ro', isa => 'Str', request_name => 'carrierIp', traits => ['NameInRequest']);
  has CustomerOwnedIp => (is => 'ro', isa => 'Str', request_name => 'customerOwnedIp', traits => ['NameInRequest']);
  has IpOwnerId => (is => 'ro', isa => 'Str', request_name => 'ipOwnerId', traits => ['NameInRequest']);
  has PublicDnsName => (is => 'ro', isa => 'Str', request_name => 'publicDnsName', traits => ['NameInRequest']);
  has PublicIp => (is => 'ro', isa => 'Str', request_name => 'publicIp', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceNetworkInterfaceAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceNetworkInterfaceAssociation object:

  $service_obj->Method(Att1 => { CarrierIp => $value, ..., PublicIp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceNetworkInterfaceAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->CarrierIp

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CarrierIp => Str

The carrier IP address associated with the network interface.


=head2 CustomerOwnedIp => Str

The customer-owned IP address associated with the network interface.


=head2 IpOwnerId => Str

The ID of the owner of the Elastic IP address.


=head2 PublicDnsName => Str

The public DNS name.


=head2 PublicIp => Str

The public IP address or Elastic IP address bound to the network
interface.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
