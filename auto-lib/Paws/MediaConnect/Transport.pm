# Generated by default/object.tt
package Paws::MediaConnect::Transport;
  use Moose;
  has CidrAllowList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'cidrAllowList', traits => ['NameInRequest']);
  has MaxBitrate => (is => 'ro', isa => 'Int', request_name => 'maxBitrate', traits => ['NameInRequest']);
  has MaxLatency => (is => 'ro', isa => 'Int', request_name => 'maxLatency', traits => ['NameInRequest']);
  has MaxSyncBuffer => (is => 'ro', isa => 'Int', request_name => 'maxSyncBuffer', traits => ['NameInRequest']);
  has MinLatency => (is => 'ro', isa => 'Int', request_name => 'minLatency', traits => ['NameInRequest']);
  has NdiProgramName => (is => 'ro', isa => 'Str', request_name => 'ndiProgramName', traits => ['NameInRequest']);
  has NdiSpeedHqQuality => (is => 'ro', isa => 'Int', request_name => 'ndiSpeedHqQuality', traits => ['NameInRequest']);
  has Protocol => (is => 'ro', isa => 'Str', request_name => 'protocol', traits => ['NameInRequest'], required => 1);
  has RemoteId => (is => 'ro', isa => 'Str', request_name => 'remoteId', traits => ['NameInRequest']);
  has SenderControlPort => (is => 'ro', isa => 'Int', request_name => 'senderControlPort', traits => ['NameInRequest']);
  has SenderIpAddress => (is => 'ro', isa => 'Str', request_name => 'senderIpAddress', traits => ['NameInRequest']);
  has SmoothingLatency => (is => 'ro', isa => 'Int', request_name => 'smoothingLatency', traits => ['NameInRequest']);
  has SourceListenerAddress => (is => 'ro', isa => 'Str', request_name => 'sourceListenerAddress', traits => ['NameInRequest']);
  has SourceListenerPort => (is => 'ro', isa => 'Int', request_name => 'sourceListenerPort', traits => ['NameInRequest']);
  has StreamId => (is => 'ro', isa => 'Str', request_name => 'streamId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::Transport

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::Transport object:

  $service_obj->Method(Att1 => { CidrAllowList => $value, ..., StreamId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::Transport object:

  $result = $service_obj->Method(...);
  $result->Att1->CidrAllowList

=head1 DESCRIPTION

Attributes related to the transport stream that are used in a source or
output.

=head1 ATTRIBUTES


=head2 CidrAllowList => ArrayRef[Str|Undef]

The range of IP addresses that should be allowed to initiate output
requests to this flow. These IP addresses should be in the form of a
Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16


=head2 MaxBitrate => Int

The smoothing max bitrate (in bps) for RIST, RTP, and RTP-FEC streams.


=head2 MaxLatency => Int

The maximum latency in milliseconds. This parameter applies only to
RIST-based and Zixi-based streams.


=head2 MaxSyncBuffer => Int

The size of the buffer (in milliseconds) to use to sync incoming source
data.


=head2 MinLatency => Int

The minimum latency in milliseconds for SRT-based streams. In streams
that use the SRT protocol, this value that you set on your MediaConnect
source or output represents the minimal potential latency of that
connection. The latency of the stream is set to the highest number
between the senderE<rsquo>s minimum latency and the receiverE<rsquo>s
minimum latency.


=head2 NdiProgramName => Str

A suffix for the names of the NDI sources that the flow creates. If a
custom name isn't specified, MediaConnect uses the output name.


=head2 NdiSpeedHqQuality => Int

A quality setting for the NDI Speed HQ encoder.


=head2 B<REQUIRED> Protocol => Str

The protocol that is used by the source or output.

Elemental MediaConnect no longer supports the Fujitsu QoS protocol.
This reference is maintained for legacy purposes only.


=head2 RemoteId => Str

The remote ID for the Zixi-pull stream.


=head2 SenderControlPort => Int

The port that the flow uses to send outbound requests to initiate
connection with the sender.


=head2 SenderIpAddress => Str

The IP address that the flow communicates with to initiate connection
with the sender.


=head2 SmoothingLatency => Int

The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC
streams.


=head2 SourceListenerAddress => Str

Source IP or domain name for SRT-caller protocol.


=head2 SourceListenerPort => Int

Source port for SRT-caller protocol.


=head2 StreamId => Str

The stream ID that you want to use for this transport. This parameter
applies only to Zixi and SRT caller-based streams.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

