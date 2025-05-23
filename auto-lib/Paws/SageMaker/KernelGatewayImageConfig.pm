# Generated by default/object.tt
package Paws::SageMaker::KernelGatewayImageConfig;
  use Moose;
  has FileSystemConfig => (is => 'ro', isa => 'Paws::SageMaker::FileSystemConfig');
  has KernelSpecs => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::KernelSpec]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::KernelGatewayImageConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::KernelGatewayImageConfig object:

  $service_obj->Method(Att1 => { FileSystemConfig => $value, ..., KernelSpecs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::KernelGatewayImageConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->FileSystemConfig

=head1 DESCRIPTION

The configuration for the file system and kernels in a SageMaker AI
image running as a KernelGateway app.

=head1 ATTRIBUTES


=head2 FileSystemConfig => L<Paws::SageMaker::FileSystemConfig>

The Amazon Elastic File System storage configuration for a SageMaker AI
image.


=head2 B<REQUIRED> KernelSpecs => ArrayRef[L<Paws::SageMaker::KernelSpec>]

The specification of the Jupyter kernels in the image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

