# Generated by default/object.tt
package Paws::EKS::UpdateTaintsPayload;
  use Moose;
  has AddOrUpdateTaints => (is => 'ro', isa => 'ArrayRef[Paws::EKS::Taint]', request_name => 'addOrUpdateTaints', traits => ['NameInRequest']);
  has RemoveTaints => (is => 'ro', isa => 'ArrayRef[Paws::EKS::Taint]', request_name => 'removeTaints', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::UpdateTaintsPayload

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::UpdateTaintsPayload object:

  $service_obj->Method(Att1 => { AddOrUpdateTaints => $value, ..., RemoveTaints => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::UpdateTaintsPayload object:

  $result = $service_obj->Method(...);
  $result->Att1->AddOrUpdateTaints

=head1 DESCRIPTION

An object representing the details of an update to a taints payload.
For more information, see Node taints on managed node groups
(https://docs.aws.amazon.com/eks/latest/userguide/node-taints-managed-node-groups.html)
in the I<Amazon EKS User Guide>.

=head1 ATTRIBUTES


=head2 AddOrUpdateTaints => ArrayRef[L<Paws::EKS::Taint>]

Kubernetes taints to be added or updated.


=head2 RemoveTaints => ArrayRef[L<Paws::EKS::Taint>]

Kubernetes taints to remove.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

