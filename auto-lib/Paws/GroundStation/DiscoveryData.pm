# Generated by default/object.tt
package Paws::GroundStation::DiscoveryData;
  use Moose;
  has CapabilityArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'capabilityArns', traits => ['NameInRequest'], required => 1);
  has PrivateIpAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'privateIpAddresses', traits => ['NameInRequest'], required => 1);
  has PublicIpAddresses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'publicIpAddresses', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::DiscoveryData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GroundStation::DiscoveryData object:

  $service_obj->Method(Att1 => { CapabilityArns => $value, ..., PublicIpAddresses => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GroundStation::DiscoveryData object:

  $result = $service_obj->Method(...);
  $result->Att1->CapabilityArns

=head1 DESCRIPTION

Data for agent discovery.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapabilityArns => ArrayRef[Str|Undef]

List of capabilities to associate with agent.


=head2 B<REQUIRED> PrivateIpAddresses => ArrayRef[Str|Undef]

List of private IP addresses to associate with agent.


=head2 B<REQUIRED> PublicIpAddresses => ArrayRef[Str|Undef]

List of public IP addresses to associate with agent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

