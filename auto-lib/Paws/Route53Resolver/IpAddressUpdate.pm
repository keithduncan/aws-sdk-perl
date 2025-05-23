# Generated by default/object.tt
package Paws::Route53Resolver::IpAddressUpdate;
  use Moose;
  has Ip => (is => 'ro', isa => 'Str');
  has IpId => (is => 'ro', isa => 'Str');
  has Ipv6 => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::IpAddressUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53Resolver::IpAddressUpdate object:

  $service_obj->Method(Att1 => { Ip => $value, ..., SubnetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53Resolver::IpAddressUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->Ip

=head1 DESCRIPTION

In an UpdateResolverEndpoint
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_UpdateResolverEndpoint.html)
request, information about an IP address to update.

=head1 ATTRIBUTES


=head2 Ip => Str

The new IPv4 address.


=head2 IpId => Str

I<Only when removing an IP address from a Resolver endpoint>: The ID of
the IP address that you want to remove. To get this ID, use
GetResolverEndpoint
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html).


=head2 Ipv6 => Str

The new IPv6 address.


=head2 SubnetId => Str

The ID of the subnet that includes the IP address that you want to
update. To get this ID, use GetResolverEndpoint
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_route53resolver_GetResolverEndpoint.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

