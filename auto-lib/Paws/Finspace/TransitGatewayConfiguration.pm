# Generated by default/object.tt
package Paws::Finspace::TransitGatewayConfiguration;
  use Moose;
  has AttachmentNetworkAclConfiguration => (is => 'ro', isa => 'ArrayRef[Paws::Finspace::NetworkACLEntry]', request_name => 'attachmentNetworkAclConfiguration', traits => ['NameInRequest']);
  has RoutableCIDRSpace => (is => 'ro', isa => 'Str', request_name => 'routableCIDRSpace', traits => ['NameInRequest'], required => 1);
  has TransitGatewayID => (is => 'ro', isa => 'Str', request_name => 'transitGatewayID', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::TransitGatewayConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Finspace::TransitGatewayConfiguration object:

  $service_obj->Method(Att1 => { AttachmentNetworkAclConfiguration => $value, ..., TransitGatewayID => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Finspace::TransitGatewayConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AttachmentNetworkAclConfiguration

=head1 DESCRIPTION

The structure of the transit gateway and network configuration that is
used to connect the kdb environment to an internal network.

=head1 ATTRIBUTES


=head2 AttachmentNetworkAclConfiguration => ArrayRef[L<Paws::Finspace::NetworkACLEntry>]

The rules that define how you manage the outbound traffic from kdb
network to your internal network.


=head2 B<REQUIRED> RoutableCIDRSpace => Str

The routing CIDR on behalf of kdb environment. It could be any "/26
range in the 100.64.0.0 CIDR space. After providing, it will be added
to the customer's transit gateway routing table so that the traffics
could be routed to kdb network.


=head2 B<REQUIRED> TransitGatewayID => Str

The identifier of the transit gateway created by the customer to
connect outbound traffics from kdb network to your internal network.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

