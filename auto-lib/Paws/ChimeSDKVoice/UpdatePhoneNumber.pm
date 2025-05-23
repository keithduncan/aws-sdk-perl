
package Paws::ChimeSDKVoice::UpdatePhoneNumber;
  use Moose;
  has CallingName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has PhoneNumberId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'phoneNumberId', required => 1);
  has ProductType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePhoneNumber');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/phone-numbers/{phoneNumberId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::UpdatePhoneNumberResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::UpdatePhoneNumber - Arguments for method UpdatePhoneNumber on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePhoneNumber on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method UpdatePhoneNumber.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePhoneNumber.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $UpdatePhoneNumberResponse = $voice -chime->UpdatePhoneNumber(
      PhoneNumberId => 'MySensitiveNonEmptyString',
      CallingName   => 'MyCallingName',               # OPTIONAL
      Name          => 'MyPhoneNumberName',           # OPTIONAL
      ProductType   => 'VoiceConnector',              # OPTIONAL
    );

    # Results:
    my $PhoneNumber = $UpdatePhoneNumberResponse->PhoneNumber;

    # Returns a L<Paws::ChimeSDKVoice::UpdatePhoneNumberResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/UpdatePhoneNumber>

=head1 ATTRIBUTES


=head2 CallingName => Str

The outbound calling name associated with the phone number.



=head2 Name => Str

Specifies the updated name assigned to one or more phone numbers.



=head2 B<REQUIRED> PhoneNumberId => Str

The phone number ID.



=head2 ProductType => Str

The product type.

Valid values are: C<"VoiceConnector">, C<"SipMediaApplicationDialIn">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePhoneNumber in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

