
package Paws::ChimeSDKVoice::DeleteVoiceConnectorProxy;
  use Moose;
  has VoiceConnectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'voiceConnectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVoiceConnectorProxy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-connectors/{voiceConnectorId}/programmable-numbers/proxy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::DeleteVoiceConnectorProxy - Arguments for method DeleteVoiceConnectorProxy on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteVoiceConnectorProxy on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method DeleteVoiceConnectorProxy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteVoiceConnectorProxy.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    $voice -chime->DeleteVoiceConnectorProxy(
      VoiceConnectorId => 'MyNonEmptyString128',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/DeleteVoiceConnectorProxy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VoiceConnectorId => Str

The Voice Connector ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteVoiceConnectorProxy in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

