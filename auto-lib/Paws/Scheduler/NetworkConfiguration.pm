# Generated by default/object.tt
package Paws::Scheduler::NetworkConfiguration;
  use Moose;
  has AwsvpcConfiguration => (is => 'ro', isa => 'Paws::Scheduler::AwsVpcConfiguration', request_name => 'awsvpcConfiguration', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Scheduler::NetworkConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Scheduler::NetworkConfiguration object:

  $service_obj->Method(Att1 => { AwsvpcConfiguration => $value, ..., AwsvpcConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Scheduler::NetworkConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsvpcConfiguration

=head1 DESCRIPTION

Specifies the network configuration for an ECS task.

=head1 ATTRIBUTES


=head2 AwsvpcConfiguration => L<Paws::Scheduler::AwsVpcConfiguration>

Specifies the Amazon VPC subnets and security groups for the task, and
whether a public IP address is to be used. This structure is relevant
only for ECS tasks that use the awsvpc network mode.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Scheduler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

