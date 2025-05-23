
package Paws::ChimeSDKVoice::CreatePhoneNumberOrder;
  use Moose;
  has E164PhoneNumbers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has ProductType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePhoneNumberOrder');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/phone-number-orders');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::CreatePhoneNumberOrderResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::CreatePhoneNumberOrder - Arguments for method CreatePhoneNumberOrder on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePhoneNumberOrder on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method CreatePhoneNumberOrder.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePhoneNumberOrder.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $CreatePhoneNumberOrderResponse = $voice -chime->CreatePhoneNumberOrder(
      E164PhoneNumbers => [ 'MyE164PhoneNumber', ... ],
      ProductType      => 'VoiceConnector',
      Name             => 'MyPhoneNumberName',            # OPTIONAL
    );

    # Results:
    my $PhoneNumberOrder = $CreatePhoneNumberOrderResponse->PhoneNumberOrder;

    # Returns a L<Paws::ChimeSDKVoice::CreatePhoneNumberOrderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/CreatePhoneNumberOrder>

=head1 ATTRIBUTES


=head2 B<REQUIRED> E164PhoneNumbers => ArrayRef[Str|Undef]

List of phone numbers, in E.164 format.



=head2 Name => Str

Specifies the name assigned to one or more phone numbers.



=head2 B<REQUIRED> ProductType => Str

The phone number product type.

Valid values are: C<"VoiceConnector">, C<"SipMediaApplicationDialIn">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePhoneNumberOrder in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

