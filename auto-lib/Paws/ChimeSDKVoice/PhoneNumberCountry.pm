# Generated by default/object.tt
package Paws::ChimeSDKVoice::PhoneNumberCountry;
  use Moose;
  has CountryCode => (is => 'ro', isa => 'Str');
  has SupportedPhoneNumberTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::PhoneNumberCountry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ChimeSDKVoice::PhoneNumberCountry object:

  $service_obj->Method(Att1 => { CountryCode => $value, ..., SupportedPhoneNumberTypes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ChimeSDKVoice::PhoneNumberCountry object:

  $result = $service_obj->Method(...);
  $result->Att1->CountryCode

=head1 DESCRIPTION

The phone number's country.

=head1 ATTRIBUTES


=head2 CountryCode => Str

The phone number country code. Format: ISO 3166-1 alpha-2.


=head2 SupportedPhoneNumberTypes => ArrayRef[Str|Undef]

The supported phone number types.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

