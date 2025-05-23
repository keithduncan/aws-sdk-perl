# Generated by default/object.tt
package Paws::DirectConnect::AssociatedCoreNetwork;
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str', request_name => 'attachmentId', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has OwnerAccount => (is => 'ro', isa => 'Str', request_name => 'ownerAccount', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::AssociatedCoreNetwork

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DirectConnect::AssociatedCoreNetwork object:

  $service_obj->Method(Att1 => { AttachmentId => $value, ..., OwnerAccount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DirectConnect::AssociatedCoreNetwork object:

  $result = $service_obj->Method(...);
  $result->Att1->AttachmentId

=head1 DESCRIPTION

The Amazon Web Services Cloud WAN core network that the Direct Connect
gateway is associated to. This is only returned when a Direct Connect
gateway is associated to a Cloud WAN core network.

=head1 ATTRIBUTES


=head2 AttachmentId => Str

the ID of the Direct Connect gateway attachment.


=head2 Id => Str

The ID of the Cloud WAN core network that the Direct Connect gateway is
associated to.


=head2 OwnerAccount => Str

The account owner of the Cloud WAN core network.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

