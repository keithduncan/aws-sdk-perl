# Generated by default/object.tt
package Paws::Transcribe::MedicalScribeOutput;
  use Moose;
  has ClinicalDocumentUri => (is => 'ro', isa => 'Str', required => 1);
  has TranscriptFileUri => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::MedicalScribeOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transcribe::MedicalScribeOutput object:

  $service_obj->Method(Att1 => { ClinicalDocumentUri => $value, ..., TranscriptFileUri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transcribe::MedicalScribeOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->ClinicalDocumentUri

=head1 DESCRIPTION

The location of the output of your Medical Scribe job.
C<ClinicalDocumentUri> holds the Amazon S3 URI for the Clinical
Document and C<TranscriptFileUri> holds the Amazon S3 URI for the
Transcript.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClinicalDocumentUri => Str

Holds the Amazon S3 URI for the Clinical Document.


=head2 B<REQUIRED> TranscriptFileUri => Str

Holds the Amazon S3 URI for the Transcript.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

