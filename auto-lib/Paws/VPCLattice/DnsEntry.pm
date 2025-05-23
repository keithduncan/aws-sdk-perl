# Generated by default/object.tt
package Paws::VPCLattice::DnsEntry;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', request_name => 'domainName', traits => ['NameInRequest']);
  has HostedZoneId => (is => 'ro', isa => 'Str', request_name => 'hostedZoneId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::DnsEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::VPCLattice::DnsEntry object:

  $service_obj->Method(Att1 => { DomainName => $value, ..., HostedZoneId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::VPCLattice::DnsEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->DomainName

=head1 DESCRIPTION

Describes the DNS information of a service.

=head1 ATTRIBUTES


=head2 DomainName => Str

The domain name of the service.


=head2 HostedZoneId => Str

The ID of the hosted zone.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

