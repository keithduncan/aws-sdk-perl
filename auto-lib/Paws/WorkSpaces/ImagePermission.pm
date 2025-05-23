# Generated by default/object.tt
package Paws::WorkSpaces::ImagePermission;
  use Moose;
  has SharedAccountId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::ImagePermission

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpaces::ImagePermission object:

  $service_obj->Method(Att1 => { SharedAccountId => $value, ..., SharedAccountId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpaces::ImagePermission object:

  $result = $service_obj->Method(...);
  $result->Att1->SharedAccountId

=head1 DESCRIPTION

Describes the Amazon Web Services accounts that have been granted
permission to use a shared image. For more information about sharing
images, see Share or Unshare a Custom WorkSpaces Image
(https://docs.aws.amazon.com/workspaces/latest/adminguide/share-custom-image.html).

=head1 ATTRIBUTES


=head2 SharedAccountId => Str

The identifier of the Amazon Web Services account that an image has
been shared with.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

