# Generated by default/object.tt
package Paws::MediaConnect::MediaStreamOutputConfiguration;
  use Moose;
  has DestinationConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::DestinationConfiguration]', request_name => 'destinationConfigurations', traits => ['NameInRequest']);
  has EncodingName => (is => 'ro', isa => 'Str', request_name => 'encodingName', traits => ['NameInRequest'], required => 1);
  has EncodingParameters => (is => 'ro', isa => 'Paws::MediaConnect::EncodingParameters', request_name => 'encodingParameters', traits => ['NameInRequest']);
  has MediaStreamName => (is => 'ro', isa => 'Str', request_name => 'mediaStreamName', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::MediaStreamOutputConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::MediaStreamOutputConfiguration object:

  $service_obj->Method(Att1 => { DestinationConfigurations => $value, ..., MediaStreamName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::MediaStreamOutputConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationConfigurations

=head1 DESCRIPTION

The media stream that is associated with the output, and the parameters
for that association.

=head1 ATTRIBUTES


=head2 DestinationConfigurations => ArrayRef[L<Paws::MediaConnect::DestinationConfiguration>]

The transport parameters that are associated with each outbound media
stream.


=head2 B<REQUIRED> EncodingName => Str

The format that was used to encode the data. For ancillary data
streams, set the encoding name to smpte291. For audio streams, set the
encoding name to pcm. For video, 2110 streams, set the encoding name to
raw. For video, JPEG XS streams, set the encoding name to jxsv.


=head2 EncodingParameters => L<Paws::MediaConnect::EncodingParameters>

A collection of parameters that determine how MediaConnect will convert
the content. These fields only apply to outputs on flows that have a
CDI source.


=head2 B<REQUIRED> MediaStreamName => Str

The name of the media stream.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

