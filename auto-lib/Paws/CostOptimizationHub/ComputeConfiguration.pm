# Generated by default/object.tt
package Paws::CostOptimizationHub::ComputeConfiguration;
  use Moose;
  has Architecture => (is => 'ro', isa => 'Str', request_name => 'architecture', traits => ['NameInRequest']);
  has MemorySizeInMB => (is => 'ro', isa => 'Int', request_name => 'memorySizeInMB', traits => ['NameInRequest']);
  has Platform => (is => 'ro', isa => 'Str', request_name => 'platform', traits => ['NameInRequest']);
  has VCpu => (is => 'ro', isa => 'Num', request_name => 'vCpu', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CostOptimizationHub::ComputeConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostOptimizationHub::ComputeConfiguration object:

  $service_obj->Method(Att1 => { Architecture => $value, ..., VCpu => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostOptimizationHub::ComputeConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Architecture

=head1 DESCRIPTION

Describes the performance configuration for compute services such as
Amazon EC2, Lambda, and ECS.

=head1 ATTRIBUTES


=head2 Architecture => Str

The architecture of the resource.


=head2 MemorySizeInMB => Int

The memory size of the resource.


=head2 Platform => Str

The platform of the resource. The platform is the specific combination
of operating system, license model, and software on an instance.


=head2 VCpu => Num

The number of vCPU cores in the resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostOptimizationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

