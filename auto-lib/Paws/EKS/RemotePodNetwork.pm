# Generated by default/object.tt
package Paws::EKS::RemotePodNetwork;
  use Moose;
  has Cidrs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'cidrs', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::RemotePodNetwork

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::RemotePodNetwork object:

  $service_obj->Method(Att1 => { Cidrs => $value, ..., Cidrs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::RemotePodNetwork object:

  $result = $service_obj->Method(...);
  $result->Att1->Cidrs

=head1 DESCRIPTION

A network CIDR that can contain pods that run Kubernetes webhooks on
hybrid nodes.

These CIDR blocks are determined by configuring your Container Network
Interface (CNI) plugin. We recommend the Calico CNI or Cilium CNI. Note
that the Amazon VPC CNI plugin for Kubernetes isn't available for
on-premises and edge locations.

Enter one or more IPv4 CIDR blocks in decimal dotted-quad notation (for
example, C< 10.2.0.0/16>).

It must satisfy the following requirements:

=over

=item *

Each block must be within an C<IPv4> RFC-1918 network range. Minimum
allowed size is /24, maximum allowed size is /8. Publicly-routable
addresses aren't supported.

=item *

Each block cannot overlap with the range of the VPC CIDR blocks for
your EKS resources, or the block of the Kubernetes service IP range.

=back


=head1 ATTRIBUTES


=head2 Cidrs => ArrayRef[Str|Undef]

A network CIDR that can contain pods that run Kubernetes webhooks on
hybrid nodes.

These CIDR blocks are determined by configuring your Container Network
Interface (CNI) plugin. We recommend the Calico CNI or Cilium CNI. Note
that the Amazon VPC CNI plugin for Kubernetes isn't available for
on-premises and edge locations.

Enter one or more IPv4 CIDR blocks in decimal dotted-quad notation (for
example, C< 10.2.0.0/16>).

It must satisfy the following requirements:

=over

=item *

Each block must be within an C<IPv4> RFC-1918 network range. Minimum
allowed size is /24, maximum allowed size is /8. Publicly-routable
addresses aren't supported.

=item *

Each block cannot overlap with the range of the VPC CIDR blocks for
your EKS resources, or the block of the Kubernetes service IP range.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

