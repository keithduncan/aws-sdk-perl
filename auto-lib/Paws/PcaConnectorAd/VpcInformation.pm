# Generated by default/object.tt
package Paws::PcaConnectorAd::VpcInformation;
  use Moose;
  has IpAddressType => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::VpcInformation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PcaConnectorAd::VpcInformation object:

  $service_obj->Method(Att1 => { IpAddressType => $value, ..., SecurityGroupIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PcaConnectorAd::VpcInformation object:

  $result = $service_obj->Method(...);
  $result->Att1->IpAddressType

=head1 DESCRIPTION

Information about your VPC and security groups used with the connector.

=head1 ATTRIBUTES


=head2 IpAddressType => Str

The VPC IP address type.


=head2 B<REQUIRED> SecurityGroupIds => ArrayRef[Str|Undef]

The security groups used with the connector. You can use a maximum of 4
security groups with a connector.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PcaConnectorAd>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

