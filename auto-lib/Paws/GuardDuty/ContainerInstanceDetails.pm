# Generated by default/object.tt
package Paws::GuardDuty::ContainerInstanceDetails;
  use Moose;
  has CompatibleContainerInstances => (is => 'ro', isa => 'Int', request_name => 'compatibleContainerInstances', traits => ['NameInRequest']);
  has CoveredContainerInstances => (is => 'ro', isa => 'Int', request_name => 'coveredContainerInstances', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ContainerInstanceDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::ContainerInstanceDetails object:

  $service_obj->Method(Att1 => { CompatibleContainerInstances => $value, ..., CoveredContainerInstances => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::ContainerInstanceDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->CompatibleContainerInstances

=head1 DESCRIPTION

Contains information about the Amazon EC2 instance that is running the
Amazon ECS container.

=head1 ATTRIBUTES


=head2 CompatibleContainerInstances => Int

Represents total number of nodes in the Amazon ECS cluster.


=head2 CoveredContainerInstances => Int

Represents the nodes in the Amazon ECS cluster that has a C<HEALTHY>
coverage status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

