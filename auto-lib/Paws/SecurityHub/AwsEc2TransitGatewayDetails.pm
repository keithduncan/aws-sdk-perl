# Generated by default/object.tt
package Paws::SecurityHub::AwsEc2TransitGatewayDetails;
  use Moose;
  has AmazonSideAsn => (is => 'ro', isa => 'Int');
  has AssociationDefaultRouteTableId => (is => 'ro', isa => 'Str');
  has AutoAcceptSharedAttachments => (is => 'ro', isa => 'Str');
  has DefaultRouteTableAssociation => (is => 'ro', isa => 'Str');
  has DefaultRouteTablePropagation => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DnsSupport => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has MulticastSupport => (is => 'ro', isa => 'Str');
  has PropagationDefaultRouteTableId => (is => 'ro', isa => 'Str');
  has TransitGatewayCidrBlocks => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VpnEcmpSupport => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsEc2TransitGatewayDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsEc2TransitGatewayDetails object:

  $service_obj->Method(Att1 => { AmazonSideAsn => $value, ..., VpnEcmpSupport => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsEc2TransitGatewayDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AmazonSideAsn

=head1 DESCRIPTION

Information about an Amazon Web Services Amazon EC2 Transit Gateway
that interconnects virtual private clouds (VPCs) and on-premises
networks.

=head1 ATTRIBUTES


=head2 AmazonSideAsn => Int

A private Autonomous System Number (ASN) for the Amazon side of a BGP
session.


=head2 AssociationDefaultRouteTableId => Str

The ID of the default association route table.


=head2 AutoAcceptSharedAttachments => Str

Turn on or turn off automatic acceptance of attachment requests.


=head2 DefaultRouteTableAssociation => Str

Turn on or turn off automatic association with the default association
route table.


=head2 DefaultRouteTablePropagation => Str

Turn on or turn off automatic propagation of routes to the default
propagation route table.


=head2 Description => Str

The description of the transit gateway.


=head2 DnsSupport => Str

Turn on or turn off DNS support.


=head2 Id => Str

The ID of the transit gateway.


=head2 MulticastSupport => Str

Indicates whether multicast is supported on the transit gateway.


=head2 PropagationDefaultRouteTableId => Str

The ID of the default propagation route table.


=head2 TransitGatewayCidrBlocks => ArrayRef[Str|Undef]

The transit gateway Classless Inter-Domain Routing (CIDR) blocks.


=head2 VpnEcmpSupport => Str

Turn on or turn off Equal Cost Multipath Protocol (ECMP) support.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

