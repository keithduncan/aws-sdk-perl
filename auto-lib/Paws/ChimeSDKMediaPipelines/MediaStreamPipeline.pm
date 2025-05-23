# Generated by default/object.tt
package Paws::ChimeSDKMediaPipelines::MediaStreamPipeline;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has MediaPipelineArn => (is => 'ro', isa => 'Str');
  has MediaPipelineId => (is => 'ro', isa => 'Str');
  has Sinks => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMediaPipelines::MediaStreamSink]');
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMediaPipelines::MediaStreamSource]');
  has Status => (is => 'ro', isa => 'Str');
  has UpdatedTimestamp => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::MediaStreamPipeline

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ChimeSDKMediaPipelines::MediaStreamPipeline object:

  $service_obj->Method(Att1 => { CreatedTimestamp => $value, ..., UpdatedTimestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ChimeSDKMediaPipelines::MediaStreamPipeline object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTimestamp

=head1 DESCRIPTION

Structure that contains the settings for a media stream pipeline.

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

The time at which the media stream pipeline was created.


=head2 MediaPipelineArn => Str

The ARN of the media stream pipeline.


=head2 MediaPipelineId => Str

The ID of the media stream pipeline


=head2 Sinks => ArrayRef[L<Paws::ChimeSDKMediaPipelines::MediaStreamSink>]

The media stream pipeline's data sinks.


=head2 Sources => ArrayRef[L<Paws::ChimeSDKMediaPipelines::MediaStreamSource>]

The media stream pipeline's data sources.


=head2 Status => Str

The status of the media stream pipeline.


=head2 UpdatedTimestamp => Str

The time at which the media stream pipeline was updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ChimeSDKMediaPipelines>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

