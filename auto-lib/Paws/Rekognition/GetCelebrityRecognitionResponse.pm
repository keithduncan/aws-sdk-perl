
package Paws::Rekognition::GetCelebrityRecognitionResponse;
  use Moose;
  has Celebrities => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::CelebrityRecognition]');
  has JobId => (is => 'ro', isa => 'Str');
  has JobStatus => (is => 'ro', isa => 'Str');
  has JobTag => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has Video => (is => 'ro', isa => 'Paws::Rekognition::Video');
  has VideoMetadata => (is => 'ro', isa => 'Paws::Rekognition::VideoMetadata');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetCelebrityRecognitionResponse

=head1 ATTRIBUTES


=head2 Celebrities => ArrayRef[L<Paws::Rekognition::CelebrityRecognition>]

Array of celebrities recognized in the video.


=head2 JobId => Str

Job identifier for the celebrity recognition operation for which you
want to obtain results. The job identifer is returned by an initial
call to StartCelebrityRecognition.


=head2 JobStatus => Str

The current status of the celebrity recognition job.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">
=head2 JobTag => Str

A job identifier specified in the call to StartCelebrityRecognition and
returned in the job completion notification sent to your Amazon Simple
Notification Service topic.


=head2 NextToken => Str

If the response is truncated, Amazon Rekognition Video returns this
token that you can use in the subsequent request to retrieve the next
set of celebrities.


=head2 StatusMessage => Str

If the job fails, C<StatusMessage> provides a descriptive error
message.


=head2 Video => L<Paws::Rekognition::Video>




=head2 VideoMetadata => L<Paws::Rekognition::VideoMetadata>

Information about a video that Amazon Rekognition Video analyzed.
C<Videometadata> is returned in every page of paginated responses from
a Amazon Rekognition Video operation.


=head2 _request_id => Str


=cut

1;