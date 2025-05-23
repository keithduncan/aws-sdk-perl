# Generated by default/object.tt
package Paws::Support::SupportedLanguage;
  use Moose;
  has Code => (is => 'ro', isa => 'Str', request_name => 'code', traits => ['NameInRequest']);
  has Display => (is => 'ro', isa => 'Str', request_name => 'display', traits => ['NameInRequest']);
  has Language => (is => 'ro', isa => 'Str', request_name => 'language', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::SupportedLanguage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Support::SupportedLanguage object:

  $service_obj->Method(Att1 => { Code => $value, ..., Language => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::SupportedLanguage object:

  $result = $service_obj->Method(...);
  $result->Att1->Code

=head1 DESCRIPTION

A JSON-formatted object that contains the available ISO 639-1 language
C<code>, C<language> name and langauge C<display> value. The language
code is what should be used in the CreateCase call.

=head1 ATTRIBUTES


=head2 Code => Str

2 digit ISO 639-1 code. e.g. C<en>


=head2 Display => Str

Language display value e.g. C<ENGLISH>


=head2 Language => Str

Full language description e.g. C<ENGLISH>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

