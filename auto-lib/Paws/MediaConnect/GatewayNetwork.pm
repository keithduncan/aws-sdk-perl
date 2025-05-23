# Generated by default/object.tt
package Paws::MediaConnect::GatewayNetwork;
  use Moose;
  has CidrBlock => (is => 'ro', isa => 'Str', request_name => 'cidrBlock', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::GatewayNetwork

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::GatewayNetwork object:

  $service_obj->Method(Att1 => { CidrBlock => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::GatewayNetwork object:

  $result = $service_obj->Method(...);
  $result->Att1->CidrBlock

=head1 DESCRIPTION

The network settings for a gateway.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CidrBlock => Str

A unique IP address range to use for this network. These IP addresses
should be in the form of a Classless Inter-Domain Routing (CIDR) block;
for example, 10.0.0.0/16.


=head2 B<REQUIRED> Name => Str

The name of the network. This name is used to reference the network and
must be unique among networks in this gateway.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

