# Generated by default/object.tt
package Paws::VoiceID::OutputDataConfig;
  use Moose;
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has S3Uri => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::OutputDataConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::VoiceID::OutputDataConfig object:

  $service_obj->Method(Att1 => { KmsKeyId => $value, ..., S3Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::VoiceID::OutputDataConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->KmsKeyId

=head1 DESCRIPTION

The configuration containing output file information for a batch job.

=head1 ATTRIBUTES


=head2 KmsKeyId => Str

The identifier of the KMS key you want Voice ID to use to encrypt the
output file of a speaker enrollment job/fraudster registration job.


=head2 B<REQUIRED> S3Uri => Str

The S3 path of the folder where Voice ID writes the job output file. It
has a C<*.out> extension. For example, if the input file name is
C<input-file.json> and the output folder path is
C<s3://output-bucket/output-folder>, the full output file path is
C<s3://output-bucket/output-folder/job-Id/input-file.json.out>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::VoiceID>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

