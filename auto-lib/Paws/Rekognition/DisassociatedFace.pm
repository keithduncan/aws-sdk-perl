# Generated by default/object.tt
package Paws::Rekognition::DisassociatedFace;
  use Moose;
  has FaceId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DisassociatedFace

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::DisassociatedFace object:

  $service_obj->Method(Att1 => { FaceId => $value, ..., FaceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::DisassociatedFace object:

  $result = $service_obj->Method(...);
  $result->Att1->FaceId

=head1 DESCRIPTION

Provides face metadata for the faces that are disassociated from a
specific UserID.

=head1 ATTRIBUTES


=head2 FaceId => Str

Unique identifier assigned to the face.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

