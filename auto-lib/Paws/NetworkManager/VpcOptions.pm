# Generated by default/object.tt
package Paws::NetworkManager::VpcOptions;
  use Moose;
  has ApplianceModeSupport => (is => 'ro', isa => 'Bool');
  has Ipv6Support => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::VpcOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NetworkManager::VpcOptions object:

  $service_obj->Method(Att1 => { ApplianceModeSupport => $value, ..., Ipv6Support => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NetworkManager::VpcOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplianceModeSupport

=head1 DESCRIPTION

Describes the VPC options.

=head1 ATTRIBUTES


=head2 ApplianceModeSupport => Bool

Indicates whether appliance mode is supported. If enabled, traffic flow
between a source and destination use the same Availability Zone for the
VPC attachment for the lifetime of that flow. The default value is
C<false>.


=head2 Ipv6Support => Bool

Indicates whether IPv6 is supported.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

