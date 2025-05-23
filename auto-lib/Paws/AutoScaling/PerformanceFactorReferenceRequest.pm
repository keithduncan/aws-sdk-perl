# Generated by default/object.tt
package Paws::AutoScaling::PerformanceFactorReferenceRequest;
  use Moose;
  has InstanceFamily => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::PerformanceFactorReferenceRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::PerformanceFactorReferenceRequest object:

  $service_obj->Method(Att1 => { InstanceFamily => $value, ..., InstanceFamily => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::PerformanceFactorReferenceRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->InstanceFamily

=head1 DESCRIPTION

Specify an instance family to use as the baseline reference for CPU
performance. All instance types that All instance types that match your
specified attributes will be compared against the CPU performance of
the referenced instance family, regardless of CPU manufacturer or
architecture differences.

Currently only one instance family can be specified in the list.

=head1 ATTRIBUTES


=head2 InstanceFamily => Str

The instance family to use as a baseline reference.

Make sure that you specify the correct value for the instance family.
The instance family is everything before the period (.) in the instance
type name. For example, in the instance C<c6i.large>, the instance
family is C<c6i>, not C<c6>. For more information, see Amazon EC2
instance type naming conventions
(https://docs.aws.amazon.com/ec2/latest/instancetypes/instance-type-names.html)
in I<Amazon EC2 Instance Types>.

The following instance types are I<not supported> for performance
protection.

=over

=item *

C<c1>

=item *

C<g3| g3s>

=item *

C<hpc7g>

=item *

C<m1| m2>

=item *

C<mac1 | mac2 | mac2-m1ultra | mac2-m2 | mac2-m2pro>

=item *

C<p3dn | p4d | p5>

=item *

C<t1>

=item *

C<u-12tb1 | u-18tb1 | u-24tb1 | u-3tb1 | u-6tb1 | u-9tb1 | u7i-12tb |
u7in-16tb | u7in-24tb | u7in-32tb>

=back

If you performance protection by specifying a supported instance
family, the returned instance types will exclude the preceding
unsupported instance families.

If you specify an unsupported instance family as a value for baseline
performance, the API returns an empty response.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

