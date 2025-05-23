package Paws::EC2::InstanceCreditSpecification;
  use Moose;
  has CpuCredits => (is => 'ro', isa => 'Str', request_name => 'cpuCredits', traits => ['NameInRequest']);
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceCreditSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceCreditSpecification object:

  $service_obj->Method(Att1 => { CpuCredits => $value, ..., InstanceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceCreditSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->CpuCredits

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CpuCredits => Str

The credit option for CPU usage of the instance.

Valid values: C<standard> | C<unlimited>


=head2 InstanceId => Str

The ID of the instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
