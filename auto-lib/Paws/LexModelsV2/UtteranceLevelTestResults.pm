# Generated by default/object.tt
package Paws::LexModelsV2::UtteranceLevelTestResults;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::UtteranceLevelTestResultItem]', request_name => 'items', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::UtteranceLevelTestResults

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModelsV2::UtteranceLevelTestResults object:

  $service_obj->Method(Att1 => { Items => $value, ..., Items => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModelsV2::UtteranceLevelTestResults object:

  $result = $service_obj->Method(...);
  $result->Att1->Items

=head1 DESCRIPTION

Contains information about the utterances in the results of the test
set execution.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Items => ArrayRef[L<Paws::LexModelsV2::UtteranceLevelTestResultItem>]

Contains information about an utterance in the results of the test set
execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

