# Generated by default/object.tt
package Paws::Textract::LendingDocument;
  use Moose;
  has LendingFields => (is => 'ro', isa => 'ArrayRef[Paws::Textract::LendingField]');
  has SignatureDetections => (is => 'ro', isa => 'ArrayRef[Paws::Textract::SignatureDetection]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Textract::LendingDocument

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Textract::LendingDocument object:

  $service_obj->Method(Att1 => { LendingFields => $value, ..., SignatureDetections => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Textract::LendingDocument object:

  $result = $service_obj->Method(...);
  $result->Att1->LendingFields

=head1 DESCRIPTION

Holds the structured data returned by AnalyzeDocument for lending
documents.

=head1 ATTRIBUTES


=head2 LendingFields => ArrayRef[L<Paws::Textract::LendingField>]

An array of LendingField objects.


=head2 SignatureDetections => ArrayRef[L<Paws::Textract::SignatureDetection>]

A list of signatures detected in a lending document.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Textract>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

