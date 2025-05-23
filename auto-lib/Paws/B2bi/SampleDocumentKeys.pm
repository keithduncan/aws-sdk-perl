# Generated by default/object.tt
package Paws::B2bi::SampleDocumentKeys;
  use Moose;
  has Input => (is => 'ro', isa => 'Str', request_name => 'input', traits => ['NameInRequest']);
  has Output => (is => 'ro', isa => 'Str', request_name => 'output', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::SampleDocumentKeys

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::B2bi::SampleDocumentKeys object:

  $service_obj->Method(Att1 => { Input => $value, ..., Output => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::B2bi::SampleDocumentKeys object:

  $result = $service_obj->Method(...);
  $result->Att1->Input

=head1 DESCRIPTION

An array of the Amazon S3 keys used to identify the location for your
sample documents.

=head1 ATTRIBUTES


=head2 Input => Str

An array of keys for your input sample documents.


=head2 Output => Str

An array of keys for your output sample documents.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::B2bi>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

