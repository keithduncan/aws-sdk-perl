
package Paws::ChimeSDKVoice::PutVoiceConnectorTermination;
  use Moose;
  has Termination => (is => 'ro', isa => 'Paws::ChimeSDKVoice::Termination', required => 1);
  has VoiceConnectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'voiceConnectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutVoiceConnectorTermination');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-connectors/{voiceConnectorId}/termination');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::PutVoiceConnectorTerminationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::PutVoiceConnectorTermination - Arguments for method PutVoiceConnectorTermination on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutVoiceConnectorTermination on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method PutVoiceConnectorTermination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutVoiceConnectorTermination.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $PutVoiceConnectorTerminationResponse =
      $voice -chime->PutVoiceConnectorTermination(
      Termination => {
        CallingRegions     => [ 'MyCallingRegion', ... ],    # OPTIONAL
        CidrAllowedList    => [ 'MyString',        ... ],    # OPTIONAL
        CpsLimit           => 1,                             # min: 1; OPTIONAL
        DefaultPhoneNumber => 'MyE164PhoneNumber',           # OPTIONAL
        Disabled           => 1,                             # OPTIONAL
      },
      VoiceConnectorId => 'MyNonEmptyString',

      );

    # Results:
    my $Termination = $PutVoiceConnectorTerminationResponse->Termination;

# Returns a L<Paws::ChimeSDKVoice::PutVoiceConnectorTerminationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/PutVoiceConnectorTermination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Termination => L<Paws::ChimeSDKVoice::Termination>

The termination settings to be updated.



=head2 B<REQUIRED> VoiceConnectorId => Str

The Voice Connector ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutVoiceConnectorTermination in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

