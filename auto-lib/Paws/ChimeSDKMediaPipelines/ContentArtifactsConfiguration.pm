# Generated by default/object.tt
package Paws::ChimeSDKMediaPipelines::ContentArtifactsConfiguration;
  use Moose;
  has MuxType => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMediaPipelines::ContentArtifactsConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ChimeSDKMediaPipelines::ContentArtifactsConfiguration object:

  $service_obj->Method(Att1 => { MuxType => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ChimeSDKMediaPipelines::ContentArtifactsConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->MuxType

=head1 DESCRIPTION

The content artifact object.

=head1 ATTRIBUTES


=head2 MuxType => Str

The MUX type of the artifact configuration.


=head2 B<REQUIRED> State => Str

Indicates whether the content artifact is enabled or disabled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ChimeSDKMediaPipelines>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

