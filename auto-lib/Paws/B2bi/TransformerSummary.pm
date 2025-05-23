# Generated by default/object.tt
package Paws::B2bi::TransformerSummary;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest'], required => 1);
  has EdiType => (is => 'ro', isa => 'Paws::B2bi::EdiType', request_name => 'ediType', traits => ['NameInRequest']);
  has FileFormat => (is => 'ro', isa => 'Str', request_name => 'fileFormat', traits => ['NameInRequest']);
  has InputConversion => (is => 'ro', isa => 'Paws::B2bi::InputConversion', request_name => 'inputConversion', traits => ['NameInRequest']);
  has Mapping => (is => 'ro', isa => 'Paws::B2bi::Mapping', request_name => 'mapping', traits => ['NameInRequest']);
  has MappingTemplate => (is => 'ro', isa => 'Str', request_name => 'mappingTemplate', traits => ['NameInRequest']);
  has ModifiedAt => (is => 'ro', isa => 'Str', request_name => 'modifiedAt', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has OutputConversion => (is => 'ro', isa => 'Paws::B2bi::OutputConversion', request_name => 'outputConversion', traits => ['NameInRequest']);
  has SampleDocument => (is => 'ro', isa => 'Str', request_name => 'sampleDocument', traits => ['NameInRequest']);
  has SampleDocuments => (is => 'ro', isa => 'Paws::B2bi::SampleDocuments', request_name => 'sampleDocuments', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
  has TransformerId => (is => 'ro', isa => 'Str', request_name => 'transformerId', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::TransformerSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::B2bi::TransformerSummary object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., TransformerId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::B2bi::TransformerSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

Contains the details for a transformer object. A transformer can take
an EDI file as input and transform it into a JSON-or XML-formatted
document. Alternatively, a transformer can take a JSON-or XML-formatted
document as input and transform it into an EDI file.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

Returns a timestamp indicating when the transformer was created. For
example, C<2023-07-20T19:58:44.624Z>.


=head2 EdiType => L<Paws::B2bi::EdiType>

Returns the details for the EDI standard that is being used for the
transformer. Currently, only X12 is supported. X12 is a set of
standards and corresponding messages that define specific business
documents.


=head2 FileFormat => Str

Returns that the currently supported file formats for EDI
transformations are C<JSON> and C<XML>.


=head2 InputConversion => L<Paws::B2bi::InputConversion>

Returns a structure that contains the format options for the
transformation.


=head2 Mapping => L<Paws::B2bi::Mapping>

Returns the structure that contains the mapping template and its
language (either XSLT or JSONATA).


=head2 MappingTemplate => Str

Returns the mapping template for the transformer. This template is used
to map the parsed EDI file using JSONata or XSLT.


=head2 ModifiedAt => Str

Returns a timestamp representing the date and time for the most recent
change for the transformer object.


=head2 B<REQUIRED> Name => Str

Returns the descriptive name for the transformer.


=head2 OutputConversion => L<Paws::B2bi::OutputConversion>

Returns the C<OutputConversion> object, which contains the format
options for the outbound transformation.


=head2 SampleDocument => Str

Returns a sample EDI document that is used by a transformer as a guide
for processing the EDI data.


=head2 SampleDocuments => L<Paws::B2bi::SampleDocuments>

Returns a structure that contains the Amazon S3 bucket and an array of
the corresponding keys used to identify the location for your sample
documents.


=head2 B<REQUIRED> Status => Str

Returns the state of the newly created transformer. The transformer can
be either C<active> or C<inactive>. For the transformer to be used in a
capability, its status must C<active>.


=head2 B<REQUIRED> TransformerId => Str

Returns the system-assigned unique identifier for the transformer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::B2bi>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

