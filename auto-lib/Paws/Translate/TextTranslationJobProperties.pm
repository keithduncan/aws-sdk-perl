# Generated by default/object.tt
package Paws::Translate::TextTranslationJobProperties;
  use Moose;
  has DataAccessRoleArn => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has InputDataConfig => (is => 'ro', isa => 'Paws::Translate::InputDataConfig');
  has JobDetails => (is => 'ro', isa => 'Paws::Translate::JobDetails');
  has JobId => (is => 'ro', isa => 'Str');
  has JobName => (is => 'ro', isa => 'Str');
  has JobStatus => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has OutputDataConfig => (is => 'ro', isa => 'Paws::Translate::OutputDataConfig');
  has ParallelDataNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Settings => (is => 'ro', isa => 'Paws::Translate::TranslationSettings');
  has SourceLanguageCode => (is => 'ro', isa => 'Str');
  has SubmittedTime => (is => 'ro', isa => 'Str');
  has TargetLanguageCodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TerminologyNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::TextTranslationJobProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Translate::TextTranslationJobProperties object:

  $service_obj->Method(Att1 => { DataAccessRoleArn => $value, ..., TerminologyNames => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Translate::TextTranslationJobProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->DataAccessRoleArn

=head1 DESCRIPTION

Provides information about a translation job.

=head1 ATTRIBUTES


=head2 DataAccessRoleArn => Str

The Amazon Resource Name (ARN) of an AWS Identity Access and Management
(IAM) role that granted Amazon Translate read access to the job's input
data.


=head2 EndTime => Str

The time at which the translation job ended.


=head2 InputDataConfig => L<Paws::Translate::InputDataConfig>

The input configuration properties that were specified when the job was
requested.


=head2 JobDetails => L<Paws::Translate::JobDetails>

The number of documents successfully and unsuccessfully processed
during the translation job.


=head2 JobId => Str

The ID of the translation job.


=head2 JobName => Str

The user-defined name of the translation job.


=head2 JobStatus => Str

The status of the translation job.


=head2 Message => Str

An explanation of any errors that may have occurred during the
translation job.


=head2 OutputDataConfig => L<Paws::Translate::OutputDataConfig>

The output configuration properties that were specified when the job
was requested.


=head2 ParallelDataNames => ArrayRef[Str|Undef]

A list containing the names of the parallel data resources applied to
the translation job.


=head2 Settings => L<Paws::Translate::TranslationSettings>

Settings that modify the translation output.


=head2 SourceLanguageCode => Str

The language code of the language of the source text. The language must
be a language supported by Amazon Translate.


=head2 SubmittedTime => Str

The time at which the translation job was submitted.


=head2 TargetLanguageCodes => ArrayRef[Str|Undef]

The language code of the language of the target text. The language must
be a language supported by Amazon Translate.


=head2 TerminologyNames => ArrayRef[Str|Undef]

A list containing the names of the terminologies applied to a
translation job. Only one terminology can be applied per
StartTextTranslationJob request at this time.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

