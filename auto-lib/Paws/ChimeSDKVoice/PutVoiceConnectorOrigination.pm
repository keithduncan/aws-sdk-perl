
package Paws::ChimeSDKVoice::PutVoiceConnectorOrigination;
  use Moose;
  has Origination => (is => 'ro', isa => 'Paws::ChimeSDKVoice::Origination', required => 1);
  has VoiceConnectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'voiceConnectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutVoiceConnectorOrigination');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-connectors/{voiceConnectorId}/origination');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::PutVoiceConnectorOriginationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::PutVoiceConnectorOrigination - Arguments for method PutVoiceConnectorOrigination on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutVoiceConnectorOrigination on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method PutVoiceConnectorOrigination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutVoiceConnectorOrigination.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $PutVoiceConnectorOriginationResponse =
      $voice -chime->PutVoiceConnectorOrigination(
      Origination => {
        Disabled => 1,    # OPTIONAL
        Routes   => [
          {
            Host     => 'MyString',    # OPTIONAL
            Port     => 1,             # max: 65535; OPTIONAL
            Priority => 1,             # min: 1, max: 100; OPTIONAL
            Protocol => 'TCP',         # values: TCP, UDP; OPTIONAL
            Weight   => 1,             # min: 1, max: 100; OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },
      VoiceConnectorId => 'MyNonEmptyString',

      );

    # Results:
    my $Origination = $PutVoiceConnectorOriginationResponse->Origination;

# Returns a L<Paws::ChimeSDKVoice::PutVoiceConnectorOriginationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/PutVoiceConnectorOrigination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Origination => L<Paws::ChimeSDKVoice::Origination>

The origination settings being updated.



=head2 B<REQUIRED> VoiceConnectorId => Str

The Voice Connector ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutVoiceConnectorOrigination in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

