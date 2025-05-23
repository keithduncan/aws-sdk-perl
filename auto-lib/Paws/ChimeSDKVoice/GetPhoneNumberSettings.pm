
package Paws::ChimeSDKVoice::GetPhoneNumberSettings;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPhoneNumberSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/settings/phone-number');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::GetPhoneNumberSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::GetPhoneNumberSettings - Arguments for method GetPhoneNumberSettings on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPhoneNumberSettings on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method GetPhoneNumberSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPhoneNumberSettings.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $GetPhoneNumberSettingsResponse =
      $voice -chime->GetPhoneNumberSettings();

    # Results:
    my $CallingName = $GetPhoneNumberSettingsResponse->CallingName;
    my $CallingNameUpdatedTimestamp =
      $GetPhoneNumberSettingsResponse->CallingNameUpdatedTimestamp;

    # Returns a L<Paws::ChimeSDKVoice::GetPhoneNumberSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/GetPhoneNumberSettings>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPhoneNumberSettings in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

