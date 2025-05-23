# Generated by default/object.tt
package Paws::AppRunner::InstanceConfiguration;
  use Moose;
  has Cpu => (is => 'ro', isa => 'Str');
  has InstanceRoleArn => (is => 'ro', isa => 'Str');
  has Memory => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::InstanceConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppRunner::InstanceConfiguration object:

  $service_obj->Method(Att1 => { Cpu => $value, ..., Memory => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppRunner::InstanceConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Cpu

=head1 DESCRIPTION

Describes the runtime configuration of an App Runner service instance
(scaling unit).

=head1 ATTRIBUTES


=head2 Cpu => Str

The number of CPU units reserved for each instance of your App Runner
service.

Default: C<1 vCPU>


=head2 InstanceRoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that provides permissions
to your App Runner service. These are permissions that your code needs
when it calls any Amazon Web Services APIs.


=head2 Memory => Str

The amount of memory, in MB or GB, reserved for each instance of your
App Runner service.

Default: C<2 GB>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppRunner>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

