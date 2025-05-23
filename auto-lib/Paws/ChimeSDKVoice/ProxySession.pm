# Generated by default/object.tt
package Paws::ChimeSDKVoice::ProxySession;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has EndedTimestamp => (is => 'ro', isa => 'Str');
  has ExpiryMinutes => (is => 'ro', isa => 'Int');
  has GeoMatchLevel => (is => 'ro', isa => 'Str');
  has GeoMatchParams => (is => 'ro', isa => 'Paws::ChimeSDKVoice::GeoMatchParams');
  has Name => (is => 'ro', isa => 'Str');
  has NumberSelectionBehavior => (is => 'ro', isa => 'Str');
  has Participants => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKVoice::Participant]');
  has ProxySessionId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UpdatedTimestamp => (is => 'ro', isa => 'Str');
  has VoiceConnectorId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::ProxySession

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ChimeSDKVoice::ProxySession object:

  $service_obj->Method(Att1 => { Capabilities => $value, ..., VoiceConnectorId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ChimeSDKVoice::ProxySession object:

  $result = $service_obj->Method(...);
  $result->Att1->Capabilities

=head1 DESCRIPTION

The proxy session for an Amazon Chime SDK Voice Connector.

=head1 ATTRIBUTES


=head2 Capabilities => ArrayRef[Str|Undef]

The proxy session capabilities.


=head2 CreatedTimestamp => Str

The created time stamp, in ISO 8601 format.


=head2 EndedTimestamp => Str

The ended time stamp, in ISO 8601 format.


=head2 ExpiryMinutes => Int

The number of minutes allowed for the proxy session.


=head2 GeoMatchLevel => Str

The preference for matching the country or area code of the proxy phone
number with that of the first participant.


=head2 GeoMatchParams => L<Paws::ChimeSDKVoice::GeoMatchParams>

The country and area code for the proxy phone number.


=head2 Name => Str

The proxy session name.


=head2 NumberSelectionBehavior => Str

The preference for proxy phone number reuse, or stickiness, between the
same participants across sessions.


=head2 Participants => ArrayRef[L<Paws::ChimeSDKVoice::Participant>]

The proxy session participants.


=head2 ProxySessionId => Str

The proxy session ID.


=head2 Status => Str

The proxy session status.


=head2 UpdatedTimestamp => Str

The updated time stamp, in ISO 8601 format.


=head2 VoiceConnectorId => Str

The Voice Connector ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

