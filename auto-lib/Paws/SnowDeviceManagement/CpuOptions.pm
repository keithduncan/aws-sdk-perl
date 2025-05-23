# Generated by default/object.tt
package Paws::SnowDeviceManagement::CpuOptions;
  use Moose;
  has CoreCount => (is => 'ro', isa => 'Int', request_name => 'coreCount', traits => ['NameInRequest']);
  has ThreadsPerCore => (is => 'ro', isa => 'Int', request_name => 'threadsPerCore', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement::CpuOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SnowDeviceManagement::CpuOptions object:

  $service_obj->Method(Att1 => { CoreCount => $value, ..., ThreadsPerCore => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SnowDeviceManagement::CpuOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->CoreCount

=head1 DESCRIPTION

The options for how a device's CPU is configured.

=head1 ATTRIBUTES


=head2 CoreCount => Int

The number of cores that the CPU can use.


=head2 ThreadsPerCore => Int

The number of threads per core in the CPU.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SnowDeviceManagement>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

