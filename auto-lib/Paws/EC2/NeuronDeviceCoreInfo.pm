package Paws::EC2::NeuronDeviceCoreInfo;
  use Moose;
  has Count => (is => 'ro', isa => 'Int', request_name => 'count', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Int', request_name => 'version', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::NeuronDeviceCoreInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::NeuronDeviceCoreInfo object:

  $service_obj->Method(Att1 => { Count => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::NeuronDeviceCoreInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Count

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Count => Int

The number of cores available to the neuron accelerator.


=head2 Version => Int

The version of the neuron accelerator.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
