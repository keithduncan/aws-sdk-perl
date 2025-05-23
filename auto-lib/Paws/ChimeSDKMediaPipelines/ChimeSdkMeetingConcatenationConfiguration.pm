# Generated by default/object.tt
package Paws::ChimeSDKMediaPipelines::ChimeSdkMeetingConcatenationConfiguration;
  use Moose;
  has ArtifactsConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKMediaPipelines::ArtifactsConcatenationConfiguration', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::ChimeSdkMeetingConcatenationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ChimeSDKMediaPipelines::ChimeSdkMeetingConcatenationConfiguration object:

  $service_obj->Method(Att1 => { ArtifactsConfiguration => $value, ..., ArtifactsConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ChimeSDKMediaPipelines::ChimeSdkMeetingConcatenationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ArtifactsConfiguration

=head1 DESCRIPTION

The configuration object of the Amazon Chime SDK meeting concatenation
for a specified media pipeline.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArtifactsConfiguration => L<Paws::ChimeSDKMediaPipelines::ArtifactsConcatenationConfiguration>

The configuration for the artifacts in an Amazon Chime SDK meeting
concatenation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ChimeSDKMediaPipelines>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

