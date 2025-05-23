
package Paws::Rekognition::GetTextDetectionResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');
  has JobStatus => (is => 'ro', isa => 'Str');
  has JobTag => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has TextDetections => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::TextDetectionResult]');
  has TextModelVersion => (is => 'ro', isa => 'Str');
  has Video => (is => 'ro', isa => 'Paws::Rekognition::Video');
  has VideoMetadata => (is => 'ro', isa => 'Paws::Rekognition::VideoMetadata');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetTextDetectionResponse

=head1 ATTRIBUTES


=head2 JobId => Str

Job identifier for the text detection operation for which you want to
obtain results. The job identifer is returned by an initial call to
StartTextDetection.


=head2 JobStatus => Str

Current status of the text detection job.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">
=head2 JobTag => Str

A job identifier specified in the call to StartTextDetection and
returned in the job completion notification sent to your Amazon Simple
Notification Service topic.


=head2 NextToken => Str

If the response is truncated, Amazon Rekognition Video returns this
token that you can use in the subsequent request to retrieve the next
set of text.


=head2 StatusMessage => Str

If the job fails, C<StatusMessage> provides a descriptive error
message.


=head2 TextDetections => ArrayRef[L<Paws::Rekognition::TextDetectionResult>]

An array of text detected in the video. Each element contains the
detected text, the time in milliseconds from the start of the video
that the text was detected, and where it was detected on the screen.


=head2 TextModelVersion => Str

Version number of the text detection model that was used to detect
text.


=head2 Video => L<Paws::Rekognition::Video>




=head2 VideoMetadata => L<Paws::Rekognition::VideoMetadata>




=head2 _request_id => Str


=cut

1;