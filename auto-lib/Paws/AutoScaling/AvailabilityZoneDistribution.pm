# Generated by default/object.tt
package Paws::AutoScaling::AvailabilityZoneDistribution;
  use Moose;
  has CapacityDistributionStrategy => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::AvailabilityZoneDistribution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::AvailabilityZoneDistribution object:

  $service_obj->Method(Att1 => { CapacityDistributionStrategy => $value, ..., CapacityDistributionStrategy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::AvailabilityZoneDistribution object:

  $result = $service_obj->Method(...);
  $result->Att1->CapacityDistributionStrategy

=head1 DESCRIPTION

Describes an Availability Zone distribution.

=head1 ATTRIBUTES


=head2 CapacityDistributionStrategy => Str

If launches fail in an Availability Zone, the following strategies are
available. The default is C<balanced-best-effort>.

=over

=item *

C<balanced-only> - If launches fail in an Availability Zone, Auto
Scaling will continue to attempt to launch in the unhealthy zone to
preserve a balanced distribution.

=item *

C<balanced-best-effort> - If launches fail in an Availability Zone,
Auto Scaling will attempt to launch in another healthy Availability
Zone instead.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

