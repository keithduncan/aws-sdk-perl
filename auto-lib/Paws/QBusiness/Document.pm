# Generated by default/object.tt
package Paws::QBusiness::Document;
  use Moose;
  has AccessConfiguration => (is => 'ro', isa => 'Paws::QBusiness::AccessConfiguration', request_name => 'accessConfiguration', traits => ['NameInRequest']);
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::DocumentAttribute]', request_name => 'attributes', traits => ['NameInRequest']);
  has Content => (is => 'ro', isa => 'Paws::QBusiness::DocumentContent', request_name => 'content', traits => ['NameInRequest']);
  has ContentType => (is => 'ro', isa => 'Str', request_name => 'contentType', traits => ['NameInRequest']);
  has DocumentEnrichmentConfiguration => (is => 'ro', isa => 'Paws::QBusiness::DocumentEnrichmentConfiguration', request_name => 'documentEnrichmentConfiguration', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has MediaExtractionConfiguration => (is => 'ro', isa => 'Paws::QBusiness::MediaExtractionConfiguration', request_name => 'mediaExtractionConfiguration', traits => ['NameInRequest']);
  has Title => (is => 'ro', isa => 'Str', request_name => 'title', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::Document

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QBusiness::Document object:

  $service_obj->Method(Att1 => { AccessConfiguration => $value, ..., Title => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QBusiness::Document object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessConfiguration

=head1 DESCRIPTION

A document in an Amazon Q Business application.

=head1 ATTRIBUTES


=head2 AccessConfiguration => L<Paws::QBusiness::AccessConfiguration>

Configuration information for access permission to a document.


=head2 Attributes => ArrayRef[L<Paws::QBusiness::DocumentAttribute>]

Custom attributes to apply to the document for refining Amazon Q
Business web experience responses.


=head2 Content => L<Paws::QBusiness::DocumentContent>

The contents of the document.


=head2 ContentType => Str

The file type of the document in the Blob field.

If you want to index snippets or subsets of HTML documents instead of
the entirety of the HTML documents, you add the C<HTML> start and
closing tags (C<E<lt>HTMLE<gt>contentE<lt>/HTMLE<gt>>) around the
content.


=head2 DocumentEnrichmentConfiguration => L<Paws::QBusiness::DocumentEnrichmentConfiguration>

The configuration information for altering document metadata and
content during the document ingestion process.


=head2 B<REQUIRED> Id => Str

The identifier of the document.


=head2 MediaExtractionConfiguration => L<Paws::QBusiness::MediaExtractionConfiguration>

The configuration for extracting information from media in the
document.


=head2 Title => Str

The title of the document.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

