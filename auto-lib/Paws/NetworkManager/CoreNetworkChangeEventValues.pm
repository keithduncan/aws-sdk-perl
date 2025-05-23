# Generated by default/object.tt
package Paws::NetworkManager::CoreNetworkChangeEventValues;
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str');
  has Cidr => (is => 'ro', isa => 'Str');
  has EdgeLocation => (is => 'ro', isa => 'Str');
  has NetworkFunctionGroupName => (is => 'ro', isa => 'Str');
  has SegmentName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CoreNetworkChangeEventValues

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NetworkManager::CoreNetworkChangeEventValues object:

  $service_obj->Method(Att1 => { AttachmentId => $value, ..., SegmentName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NetworkManager::CoreNetworkChangeEventValues object:

  $result = $service_obj->Method(...);
  $result->Att1->AttachmentId

=head1 DESCRIPTION

Describes a core network change event.

=head1 ATTRIBUTES


=head2 AttachmentId => Str

The ID of the attachment if the change event is associated with an
attachment.


=head2 Cidr => Str

For a C<STATIC_ROUTE> event, this is the IP address.


=head2 EdgeLocation => Str

The edge location for the core network change event.


=head2 NetworkFunctionGroupName => Str

The changed network function group name.


=head2 SegmentName => Str

The segment name if the change event is associated with a segment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

