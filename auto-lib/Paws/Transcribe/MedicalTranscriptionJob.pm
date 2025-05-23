# Generated by default/object.tt
package Paws::Transcribe::MedicalTranscriptionJob;
  use Moose;
  has CompletionTime => (is => 'ro', isa => 'Str');
  has ContentIdentificationType => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has LanguageCode => (is => 'ro', isa => 'Str');
  has Media => (is => 'ro', isa => 'Paws::Transcribe::Media');
  has MediaFormat => (is => 'ro', isa => 'Str');
  has MediaSampleRateHertz => (is => 'ro', isa => 'Int');
  has MedicalTranscriptionJobName => (is => 'ro', isa => 'Str');
  has Settings => (is => 'ro', isa => 'Paws::Transcribe::MedicalTranscriptionSetting');
  has Specialty => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Transcribe::Tag]');
  has Transcript => (is => 'ro', isa => 'Paws::Transcribe::MedicalTranscript');
  has TranscriptionJobStatus => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::MedicalTranscriptionJob

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transcribe::MedicalTranscriptionJob object:

  $service_obj->Method(Att1 => { CompletionTime => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transcribe::MedicalTranscriptionJob object:

  $result = $service_obj->Method(...);
  $result->Att1->CompletionTime

=head1 DESCRIPTION

Provides detailed information about a medical transcription job.

To view the status of the specified medical transcription job, check
the C<TranscriptionJobStatus> field. If the status is C<COMPLETED>, the
job is finished and you can find the results at the location specified
in C<TranscriptFileUri>. If the status is C<FAILED>, C<FailureReason>
provides details on why your transcription job failed.

=head1 ATTRIBUTES


=head2 CompletionTime => Str

The date and time the specified medical transcription job finished
processing.

Timestamps are in the format C<YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC>. For
example, C<2022-05-04T12:33:13.922000-07:00> represents a transcription
job that started processing at 12:33 PM UTC-7 on May 4, 2022.


=head2 ContentIdentificationType => Str

Indicates whether content identification was enabled for your
transcription request.


=head2 CreationTime => Str

The date and time the specified medical transcription job request was
made.

Timestamps are in the format C<YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC>. For
example, C<2022-05-04T12:32:58.761000-07:00> represents a transcription
job that started processing at 12:32 PM UTC-7 on May 4, 2022.


=head2 FailureReason => Str

If C<TranscriptionJobStatus> is C<FAILED>, C<FailureReason> contains
information about why the transcription job request failed.

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
sample rate must be between 16,000 and 48,000 hertz.

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



=head2 LanguageCode => Str

The language code used to create your medical transcription job. US
English (C<en-US>) is the only supported language for medical
transcriptions.


=head2 Media => L<Paws::Transcribe::Media>




=head2 MediaFormat => Str

The format of the input media file.


=head2 MediaSampleRateHertz => Int

The sample rate, in hertz, of the audio track in your input media file.


=head2 MedicalTranscriptionJobName => Str

The name of the medical transcription job. Job names are case sensitive
and must be unique within an Amazon Web Services account.


=head2 Settings => L<Paws::Transcribe::MedicalTranscriptionSetting>

Provides information on any additional settings that were included in
your request. Additional settings include channel identification,
alternative transcriptions, speaker partitioning, custom vocabularies,
and custom vocabulary filters.


=head2 Specialty => Str

Describes the medical specialty represented in your media.


=head2 StartTime => Str

The date and time the specified medical transcription job began
processing.

Timestamps are in the format C<YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC>. For
example, C<2022-05-04T12:32:58.789000-07:00> represents a transcription
job that started processing at 12:32 PM UTC-7 on May 4, 2022.


=head2 Tags => ArrayRef[L<Paws::Transcribe::Tag>]

The tags, each in the form of a key:value pair, assigned to the
specified medical transcription job.


=head2 Transcript => L<Paws::Transcribe::MedicalTranscript>

Provides you with the Amazon S3 URI you can use to access your
transcript.


=head2 TranscriptionJobStatus => Str

Provides the status of the specified medical transcription job.

If the status is C<COMPLETED>, the job is finished and you can find the
results at the location specified in C<TranscriptFileUri>. If the
status is C<FAILED>, C<FailureReason> provides details on why your
transcription job failed.


=head2 Type => Str

Indicates whether the input media is a dictation or a conversation, as
specified in the C<StartMedicalTranscriptionJob> request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

