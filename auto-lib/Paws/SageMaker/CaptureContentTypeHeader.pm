# Generated by default/object.tt
package Paws::SageMaker::CaptureContentTypeHeader;
  use Moose;
  has CsvContentTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has JsonContentTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CaptureContentTypeHeader

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::CaptureContentTypeHeader object:

  $service_obj->Method(Att1 => { CsvContentTypes => $value, ..., JsonContentTypes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::CaptureContentTypeHeader object:

  $result = $service_obj->Method(...);
  $result->Att1->CsvContentTypes

=head1 DESCRIPTION

Configuration specifying how to treat different headers. If no headers
are specified Amazon SageMaker AI will by default base64 encode when
capturing the data.

=head1 ATTRIBUTES


=head2 CsvContentTypes => ArrayRef[Str|Undef]

The list of all content type headers that Amazon SageMaker AI will
treat as CSV and capture accordingly.


=head2 JsonContentTypes => ArrayRef[Str|Undef]

The list of all content type headers that SageMaker AI will treat as
JSON and capture accordingly.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

