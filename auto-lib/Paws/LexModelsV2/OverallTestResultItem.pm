# Generated by default/object.tt
package Paws::LexModelsV2::OverallTestResultItem;
  use Moose;
  has EndToEndResultCounts => (is => 'ro', isa => 'Paws::LexModelsV2::TestResultMatchStatusCountMap', request_name => 'endToEndResultCounts', traits => ['NameInRequest'], required => 1);
  has MultiTurnConversation => (is => 'ro', isa => 'Bool', request_name => 'multiTurnConversation', traits => ['NameInRequest'], required => 1);
  has SpeechTranscriptionResultCounts => (is => 'ro', isa => 'Paws::LexModelsV2::TestResultMatchStatusCountMap', request_name => 'speechTranscriptionResultCounts', traits => ['NameInRequest']);
  has TotalResultCount => (is => 'ro', isa => 'Int', request_name => 'totalResultCount', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::OverallTestResultItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModelsV2::OverallTestResultItem object:

  $service_obj->Method(Att1 => { EndToEndResultCounts => $value, ..., TotalResultCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModelsV2::OverallTestResultItem object:

  $result = $service_obj->Method(...);
  $result->Att1->EndToEndResultCounts

=head1 DESCRIPTION

Information about the overall results for a test execution result.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndToEndResultCounts => L<Paws::LexModelsV2::TestResultMatchStatusCountMap>

The number of results that succeeded.


=head2 B<REQUIRED> MultiTurnConversation => Bool

Indicates whether the conversation contains multiple turns or not.


=head2 SpeechTranscriptionResultCounts => L<Paws::LexModelsV2::TestResultMatchStatusCountMap>

The number of speech transcription results in the overall test.


=head2 B<REQUIRED> TotalResultCount => Int

The total number of overall results in the result of the test
execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

