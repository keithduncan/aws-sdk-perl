# Generated by default/object.tt
package Paws::IVS::IngestConfiguration;
  use Moose;
  has Audio => (is => 'ro', isa => 'Paws::IVS::AudioConfiguration', request_name => 'audio', traits => ['NameInRequest']);
  has Video => (is => 'ro', isa => 'Paws::IVS::VideoConfiguration', request_name => 'video', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::IngestConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IVS::IngestConfiguration object:

  $service_obj->Method(Att1 => { Audio => $value, ..., Video => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IVS::IngestConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Audio

=head1 DESCRIPTION

Object specifying the ingest configuration set up by the broadcaster,
usually in an encoder.

B<Note:> IngestConfiguration is deprecated in favor of
IngestConfigurations but retained to ensure backward compatibility. If
multitrack is not enabled, IngestConfiguration and IngestConfigurations
contain the same data, namely information about track0 (the sole
track). If multitrack is enabled, IngestConfiguration contains data for
only the first track (track0) and IngestConfigurations contains data
for all tracks.

=head1 ATTRIBUTES


=head2 Audio => L<Paws::IVS::AudioConfiguration>

Encoder settings for audio.


=head2 Video => L<Paws::IVS::VideoConfiguration>

Encoder settings for video.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IVS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

