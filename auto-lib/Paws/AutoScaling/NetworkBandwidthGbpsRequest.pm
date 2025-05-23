# Generated by default/object.tt
package Paws::AutoScaling::NetworkBandwidthGbpsRequest;
  use Moose;
  has Max => (is => 'ro', isa => 'Num');
  has Min => (is => 'ro', isa => 'Num');

1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::NetworkBandwidthGbpsRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::NetworkBandwidthGbpsRequest object:

  $service_obj->Method(Att1 => { Max => $value, ..., Min => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::NetworkBandwidthGbpsRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Max

=head1 DESCRIPTION

Specifies the minimum and maximum for the C<NetworkBandwidthGbps>
object when you specify InstanceRequirements
(https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_InstanceRequirements.html)
for an Auto Scaling group.

Setting the minimum bandwidth does not guarantee that your instance
will achieve the minimum bandwidth. Amazon EC2 will identify instance
types that support the specified minimum bandwidth, but the actual
bandwidth of your instance might go below the specified minimum at
times. For more information, see Available instance bandwidth
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-network-bandwidth.html#available-instance-bandwidth)
in the I<Amazon EC2 User Guide for Linux Instances>.

=head1 ATTRIBUTES


=head2 Max => Num

The maximum amount of network bandwidth, in gigabits per second (Gbps).


=head2 Min => Num

The minimum amount of network bandwidth, in gigabits per second (Gbps).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

