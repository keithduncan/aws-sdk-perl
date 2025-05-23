# Generated by default/object.tt
package Paws::Rekognition::MediaAnalysisOutputConfig;
  use Moose;
  has S3Bucket => (is => 'ro', isa => 'Str', required => 1);
  has S3KeyPrefix => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::MediaAnalysisOutputConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::MediaAnalysisOutputConfig object:

  $service_obj->Method(Att1 => { S3Bucket => $value, ..., S3KeyPrefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::MediaAnalysisOutputConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Bucket

=head1 DESCRIPTION

Output configuration provided in the job creation request.

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3Bucket => Str

Specifies the Amazon S3 bucket to contain the output of the media
analysis job.


=head2 S3KeyPrefix => Str

Specifies the Amazon S3 key prefix that comes after the name of the
bucket you have designated for storage.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

