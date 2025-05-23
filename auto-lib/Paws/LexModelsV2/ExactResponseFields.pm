# Generated by default/object.tt
package Paws::LexModelsV2::ExactResponseFields;
  use Moose;
  has AnswerField => (is => 'ro', isa => 'Str', request_name => 'answerField', traits => ['NameInRequest'], required => 1);
  has QuestionField => (is => 'ro', isa => 'Str', request_name => 'questionField', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ExactResponseFields

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModelsV2::ExactResponseFields object:

  $service_obj->Method(Att1 => { AnswerField => $value, ..., QuestionField => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModelsV2::ExactResponseFields object:

  $result = $service_obj->Method(...);
  $result->Att1->AnswerField

=head1 DESCRIPTION

Contains the names of the fields used for an exact response to the
user.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnswerField => Str

The name of the field that contains the answer to the query made to the
OpenSearch Service database.


=head2 B<REQUIRED> QuestionField => Str

The name of the field that contains the query made to the OpenSearch
Service database.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

