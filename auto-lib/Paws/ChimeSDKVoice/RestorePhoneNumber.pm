
package Paws::ChimeSDKVoice::RestorePhoneNumber;
  use Moose;
  has PhoneNumberId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'phoneNumberId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestorePhoneNumber');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/phone-numbers/{phoneNumberId}?operation=restore');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::RestorePhoneNumberResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::RestorePhoneNumber - Arguments for method RestorePhoneNumber on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestorePhoneNumber on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method RestorePhoneNumber.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestorePhoneNumber.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $RestorePhoneNumberResponse = $voice -chime->RestorePhoneNumber(
      PhoneNumberId => 'MySensitiveNonEmptyString',

    );

    # Results:
    my $PhoneNumber = $RestorePhoneNumberResponse->PhoneNumber;

    # Returns a L<Paws::ChimeSDKVoice::RestorePhoneNumberResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/RestorePhoneNumber>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PhoneNumberId => Str

The ID of the phone number being restored.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestorePhoneNumber in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

