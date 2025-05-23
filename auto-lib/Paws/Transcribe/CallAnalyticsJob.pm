# Generated by default/object.tt
package Paws::Transcribe::CallAnalyticsJob;
  use Moose;
  has CallAnalyticsJobDetails => (is => 'ro', isa => 'Paws::Transcribe::CallAnalyticsJobDetails');
  has CallAnalyticsJobName => (is => 'ro', isa => 'Str');
  has CallAnalyticsJobStatus => (is => 'ro', isa => 'Str');
  has ChannelDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::ChannelDefinition]');
  has CompletionTime => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DataAccessRoleArn => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has IdentifiedLanguageScore => (is => 'ro', isa => 'Num');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has Media => (is => 'ro', isa => 'Paws::Transcribe::Media');
  has MediaFormat => (is => 'ro', isa => 'Str');
  has MediaSampleRateHertz => (is => 'ro', isa => 'Int');
  has Settings => (is => 'ro', isa => 'Paws::Transcribe::CallAnalyticsJobSettings');
  has StartTime => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::Tag]');
  has Transcript => (is => 'ro', isa => 'Paws::Transcribe::Transcript');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::CallAnalyticsJob

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transcribe::CallAnalyticsJob object:

  $service_obj->Method(Att1 => { CallAnalyticsJobDetails => $value, ..., Transcript => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transcribe::CallAnalyticsJob object:

  $result = $service_obj->Method(...);
  $result->Att1->CallAnalyticsJobDetails

=head1 DESCRIPTION

Provides detailed information about a Call Analytics job.

To view the job's status, refer to C<CallAnalyticsJobStatus>. If the
status is C<COMPLETED>, the job is finished. You can find your
completed transcript at the URI specified in C<TranscriptFileUri>. If
the status is C<FAILED>, C<FailureReason> provides details on why your
transcription job failed.

If you enabled personally identifiable information (PII) redaction, the
redacted transcript appears at the location specified in
C<RedactedTranscriptFileUri>.

If you chose to redact the audio in your media file, you can find your
redacted media file at the location specified in the
C<RedactedMediaFileUri> field of your response.

=head1 ATTRIBUTES


=head2 CallAnalyticsJobDetails => L<Paws::Transcribe::CallAnalyticsJobDetails>

Provides detailed information about a call analytics job, including
information about skipped analytics features.


=head2 CallAnalyticsJobName => Str

The name of the Call Analytics job. Job names are case sensitive and
must be unique within an Amazon Web Services account.


=head2 CallAnalyticsJobStatus => Str

Provides the status of the specified Call Analytics job.

If the status is C<COMPLETED>, the job is finished and you can find the
results at the location specified in C<TranscriptFileUri> (or
C<RedactedTranscriptFileUri>, if you requested transcript redaction).
If the status is C<FAILED>, C<FailureReason> provides details on why
your transcription job failed.


=head2 ChannelDefinitions => ArrayRef[L<Paws::Transcribe::ChannelDefinition>]

Indicates which speaker is on which channel.


=head2 CompletionTime => Str

The date and time the specified Call Analytics job finished processing.

Timestamps are in the format C<YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC>. For
example, C<2022-05-04T12:33:13.922000-07:00> represents a transcription
job that started processing at 12:33 PM UTC-7 on May 4, 2022.


=head2 CreationTime => Str

The date and time the specified Call Analytics job request was made.

Timestamps are in the format C<YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC>. For
example, C<2022-05-04T12:32:58.761000-07:00> represents a transcription
job that started processing at 12:32 PM UTC-7 on May 4, 2022.


=head2 DataAccessRoleArn => Str

The Amazon Resource Name (ARN) you included in your request.


=head2 FailureReason => Str

If C<CallAnalyticsJobStatus> is C<FAILED>, C<FailureReason> contains
information about why the Call Analytics job request failed.

The C<FailureReason> field contains one of the following values:

=over

=item *

C<Unsupported media format>.

The media format specified in C<MediaFormat> isn't valid. Refer to
refer to the C<MediaFormat> parameter for a list of supported formats.

=item *

C<The media format provided does not match the detected media format>.

The media format specified in C<MediaFormat> doesn't match the format
of the input file. Check the media format of your media file and
correct the specified value.

=item *

C<Invalid sample rate for audio file>.

The sample rate specified in C<MediaSampleRateHertz> isn't valid. The
sample rate must be between 8,000 and 48,000 hertz.

=item *

C<The sample rate provided does not match the detected sample rate>.

The sample rate specified in C<MediaSampleRateHertz> doesn't match the
sample rate detected in your input media file. Check the sample rate of
your media file and correct the specified value.

=item *

C<Invalid file size: file size too large>.

The size of your media file is larger than what Amazon Transcribe can
process. For more information, refer to Service quotas
(https://docs.aws.amazon.com/general/latest/gr/transcribe.html#limits-amazon-transcribe).

=item *

C<Invalid number of channels: number of channels too large>.

Your audio contains more channels than Amazon Transcribe is able to
process. For more information, refer to Service quotas
(https://docs.aws.amazon.com/general/latest/gr/transcribe.html#limits-amazon-transcribe).

=back



=head2 IdentifiedLanguageScore => Num

The confidence score associated with the language identified in your
media file.

Confidence scores are values between 0 and 1; a larger value indicates
a higher probability that the identified language correctly matches the
language spoken in your media.


=head2 LanguageCode => Str

The language code used to create your Call Analytics job. For a list of
supported languages and their associated language codes, refer to the
Supported languages
(https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html)
table.

If you do not know the language spoken in your media file, you can omit
this field and let Amazon Transcribe automatically identify the
language of your media. To improve the accuracy of language
identification, you can include several language codes and Amazon
Transcribe chooses the closest match for your transcription.


=head2 Media => L<Paws::Transcribe::Media>

Provides the Amazon S3 location of the media file you used in your Call
Analytics request.


=head2 MediaFormat => Str

The format of the input media file.


=head2 MediaSampleRateHertz => Int

The sample rate, in hertz, of the audio track in your input media file.


=head2 Settings => L<Paws::Transcribe::CallAnalyticsJobSettings>

Provides information on any additional settings that were included in
your request. Additional settings include content redaction and
language identification settings.


=head2 StartTime => Str

The date and time the specified Call Analytics job began processing.

Timestamps are in the format C<YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC>. For
example, C<2022-05-04T12:32:58.789000-07:00> represents a transcription
job that started processing at 12:32 PM UTC-7 on May 4, 2022.


=head2 Tags => ArrayRef[L<Paws::Transcribe::Tag>]

The tags, each in the form of a key:value pair, assigned to the
specified call analytics job.


=head2 Transcript => L<Paws::Transcribe::Transcript>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

