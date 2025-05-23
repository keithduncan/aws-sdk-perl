# Generated by default/object.tt
package Paws::Translate::Document;
  use Moose;
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has ContentType => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::Document

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Translate::Document object:

  $service_obj->Method(Att1 => { Content => $value, ..., ContentType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Translate::Document object:

  $result = $service_obj->Method(...);
  $result->Att1->Content

=head1 DESCRIPTION

The content and content type of a document.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => Str

The C<Content>field type is Binary large object (blob). This object
contains the document content converted into base64-encoded binary
data. If you use one of the AWS SDKs, the SDK performs the
Base64-encoding on this field before sending the request.


=head2 B<REQUIRED> ContentType => Str

Describes the format of the document. You can specify one of the
following:

=over

=item *

C<text/html> - The input data consists of HTML content. Amazon
Translate translates only the text in the HTML element.

=item *

C<text/plain> - The input data consists of unformatted text. Amazon
Translate translates every character in the content.

=item *

C<application/vnd.openxmlformats-officedocument.wordprocessingml.document>
- The input data consists of a Word document (.docx).

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

