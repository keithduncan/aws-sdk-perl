# Generated by default/object.tt
package Paws::Route53::HostedZoneSummary;
  use Moose;
  has HostedZoneId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Owner => (is => 'ro', isa => 'Paws::Route53::HostedZoneOwner', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::HostedZoneSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::HostedZoneSummary object:

  $service_obj->Method(Att1 => { HostedZoneId => $value, ..., Owner => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::HostedZoneSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->HostedZoneId

=head1 DESCRIPTION

In the response to a C<ListHostedZonesByVPC> request, the
C<HostedZoneSummaries> element contains one C<HostedZoneSummary>
element for each hosted zone that the specified Amazon VPC is
associated with. Each C<HostedZoneSummary> element contains the hosted
zone name and ID, and information about who owns the hosted zone.

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostedZoneId => Str

The Route 53 hosted zone ID of a private hosted zone that the specified
VPC is associated with.


=head2 B<REQUIRED> Name => Str

The name of the private hosted zone, such as C<example.com>.


=head2 B<REQUIRED> Owner => L<Paws::Route53::HostedZoneOwner>

The owner of a private hosted zone that the specified VPC is associated
with. The owner can be either an Amazon Web Services account or an
Amazon Web Services service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

