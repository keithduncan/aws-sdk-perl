# Generated by default/object.tt
package Paws::Rekognition::MediaAnalysisResults;
  use Moose;
  has ModelVersions => (is => 'ro', isa => 'Paws::Rekognition::MediaAnalysisModelVersions');
  has S3Object => (is => 'ro', isa => 'Paws::Rekognition::S3Object');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::MediaAnalysisResults

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::MediaAnalysisResults object:

  $service_obj->Method(Att1 => { ModelVersions => $value, ..., S3Object => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::MediaAnalysisResults object:

  $result = $service_obj->Method(...);
  $result->Att1->ModelVersions

=head1 DESCRIPTION

Contains the results for a media analysis job created with
StartMediaAnalysisJob.

=head1 ATTRIBUTES


=head2 ModelVersions => L<Paws::Rekognition::MediaAnalysisModelVersions>

Information about the model versions for the features selected in a
given job.


=head2 S3Object => L<Paws::Rekognition::S3Object>





=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

