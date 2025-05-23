# Generated by default/object.tt
package Paws::B2bi::InputFileSource;
  use Moose;
  has FileContent => (is => 'ro', isa => 'Str', request_name => 'fileContent', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::InputFileSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::B2bi::InputFileSource object:

  $service_obj->Method(Att1 => { FileContent => $value, ..., FileContent => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::B2bi::InputFileSource object:

  $result = $service_obj->Method(...);
  $result->Att1->FileContent

=head1 DESCRIPTION

The input file to use for an outbound transformation.

=head1 ATTRIBUTES


=head2 FileContent => Str

Specify the input contents, as a string, for the source of an outbound
transformation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::B2bi>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

