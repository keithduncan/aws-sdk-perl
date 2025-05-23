# Generated by default/object.tt
package Paws::Comprehend::DocumentTypeListItem;
  use Moose;
  has Page => (is => 'ro', isa => 'Int');
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DocumentTypeListItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Comprehend::DocumentTypeListItem object:

  $service_obj->Method(Att1 => { Page => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Comprehend::DocumentTypeListItem object:

  $result = $service_obj->Method(...);
  $result->Att1->Page

=head1 DESCRIPTION

Document type for each page in the document.

=head1 ATTRIBUTES


=head2 Page => Int

Page number.


=head2 Type => Str

Document type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Comprehend>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

