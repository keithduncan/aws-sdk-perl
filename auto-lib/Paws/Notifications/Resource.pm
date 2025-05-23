# Generated by default/object.tt
package Paws::Notifications::Resource;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has DetailUrl => (is => 'ro', isa => 'Str', request_name => 'detailUrl', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'tags', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::Resource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Notifications::Resource object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Notifications::Resource object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A resource affected by or closely linked to an event.

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the resource. At least one id or ARN
is required.


=head2 DetailUrl => Str

The URL to the resource's detail page. If a detail page URL is
unavailable, it is the URL to an informational page that describes the
resource's type.


=head2 Id => Str

The unique identifier for the resource.

At least one id or ARN is required.


=head2 Tags => ArrayRef[Str|Undef]

A map of tags assigned to a resource. A tag is a string-to-string map
of key-value pairs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Notifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

