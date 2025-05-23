# Generated by default/object.tt
package Paws::ECS::InferenceAccelerator;
  use Moose;
  has DeviceName => (is => 'ro', isa => 'Str', request_name => 'deviceName', traits => ['NameInRequest'], required => 1);
  has DeviceType => (is => 'ro', isa => 'Str', request_name => 'deviceType', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::InferenceAccelerator

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::InferenceAccelerator object:

  $service_obj->Method(Att1 => { DeviceName => $value, ..., DeviceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::InferenceAccelerator object:

  $result = $service_obj->Method(...);
  $result->Att1->DeviceName

=head1 DESCRIPTION

Details on an Elastic Inference accelerator. For more information, see
Working with Amazon Elastic Inference on Amazon ECS
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-inference.html)
in the I<Amazon Elastic Container Service Developer Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceName => Str

The Elastic Inference accelerator device name. The C<deviceName> must
also be referenced in a container definition as a ResourceRequirement
(https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_ResourceRequirement.html).


=head2 B<REQUIRED> DeviceType => Str

The Elastic Inference accelerator type to use.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

