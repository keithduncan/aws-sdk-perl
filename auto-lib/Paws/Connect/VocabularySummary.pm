# Generated by default/object.tt
package Paws::Connect::VocabularySummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has FailureReason => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LanguageCode => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has State => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::VocabularySummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::VocabularySummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::VocabularySummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains summary information about the custom vocabulary.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the custom vocabulary.


=head2 FailureReason => Str

The reason why the custom vocabulary was not created.


=head2 B<REQUIRED> Id => Str

The identifier of the custom vocabulary.


=head2 B<REQUIRED> LanguageCode => Str

The language code of the vocabulary entries. For a list of languages
and their corresponding language codes, see What is Amazon Transcribe?
(https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-whatis.html)


=head2 B<REQUIRED> LastModifiedTime => Str

The timestamp when the custom vocabulary was last modified.


=head2 B<REQUIRED> Name => Str

A unique name of the custom vocabulary.


=head2 B<REQUIRED> State => Str

The current state of the custom vocabulary.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

