# Generated by default/object.tt
package Paws::FMS::NetworkFirewallMissingExpectedRTViolation;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CurrentRouteTable => (is => 'ro', isa => 'Str');
  has ExpectedRouteTable => (is => 'ro', isa => 'Str');
  has ViolationTarget => (is => 'ro', isa => 'Str');
  has VPC => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::NetworkFirewallMissingExpectedRTViolation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FMS::NetworkFirewallMissingExpectedRTViolation object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., VPC => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FMS::NetworkFirewallMissingExpectedRTViolation object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

Violation detail for Network Firewall for a subnet that's not
associated to the expected Firewall Manager managed route table.

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone of a violating subnet.


=head2 CurrentRouteTable => Str

The resource ID of the current route table that's associated with the
subnet, if one is available.


=head2 ExpectedRouteTable => Str

The resource ID of the route table that should be associated with the
subnet.


=head2 ViolationTarget => Str

The ID of the Network Firewall or VPC resource that's in violation.


=head2 VPC => Str

The resource ID of the VPC associated with a violating subnet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

