# Generated by default/object.tt
package Paws::SageMaker::InferenceComponentComputeResourceRequirements;
  use Moose;
  has MaxMemoryRequiredInMb => (is => 'ro', isa => 'Int');
  has MinMemoryRequiredInMb => (is => 'ro', isa => 'Int', required => 1);
  has NumberOfAcceleratorDevicesRequired => (is => 'ro', isa => 'Num');
  has NumberOfCpuCoresRequired => (is => 'ro', isa => 'Num');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::InferenceComponentComputeResourceRequirements

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::InferenceComponentComputeResourceRequirements object:

  $service_obj->Method(Att1 => { MaxMemoryRequiredInMb => $value, ..., NumberOfCpuCoresRequired => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::InferenceComponentComputeResourceRequirements object:

  $result = $service_obj->Method(...);
  $result->Att1->MaxMemoryRequiredInMb

=head1 DESCRIPTION

Defines the compute resources to allocate to run a model, plus any
adapter models, that you assign to an inference component. These
resources include CPU cores, accelerators, and memory.

=head1 ATTRIBUTES


=head2 MaxMemoryRequiredInMb => Int

The maximum MB of memory to allocate to run a model that you assign to
an inference component.


=head2 B<REQUIRED> MinMemoryRequiredInMb => Int

The minimum MB of memory to allocate to run a model that you assign to
an inference component.


=head2 NumberOfAcceleratorDevicesRequired => Num

The number of accelerators to allocate to run a model that you assign
to an inference component. Accelerators include GPUs and Amazon Web
Services Inferentia.


=head2 NumberOfCpuCoresRequired => Num

The number of CPU cores to allocate to run a model that you assign to
an inference component.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

