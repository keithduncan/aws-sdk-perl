
package Paws::ChimeSDKVoice::ListPhoneNumbers;
  use Moose;
  has FilterName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'filter-name');
  has FilterValue => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'filter-value');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has ProductType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'product-type');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPhoneNumbers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/phone-numbers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKVoice::ListPhoneNumbersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKVoice::ListPhoneNumbers - Arguments for method ListPhoneNumbers on L<Paws::ChimeSDKVoice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPhoneNumbers on the
L<Amazon Chime SDK Voice|Paws::ChimeSDKVoice> service. Use the attributes of this class
as arguments to method ListPhoneNumbers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPhoneNumbers.

=head1 SYNOPSIS

    my $voice-chime = Paws->service('ChimeSDKVoice');
    my $ListPhoneNumbersResponse = $voice -chime->ListPhoneNumbers(
      FilterName  => 'VoiceConnectorId',    # OPTIONAL
      FilterValue => 'MyString',            # OPTIONAL
      MaxResults  => 1,                     # OPTIONAL
      NextToken   => 'MyString',            # OPTIONAL
      ProductType => 'VoiceConnector',      # OPTIONAL
      Status      => 'MyString',            # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListPhoneNumbersResponse->NextToken;
    my $PhoneNumbers = $ListPhoneNumbersResponse->PhoneNumbers;

    # Returns a L<Paws::ChimeSDKVoice::ListPhoneNumbersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voice-chime/ListPhoneNumbers>

=head1 ATTRIBUTES


=head2 FilterName => Str

The filter to limit the number of results.

Valid values are: C<"VoiceConnectorId">, C<"VoiceConnectorGroupId">, C<"SipRuleId">

=head2 FilterValue => Str

The filter value.



=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

The token used to return the next page of results.



=head2 ProductType => Str

The phone number product types.

Valid values are: C<"VoiceConnector">, C<"SipMediaApplicationDialIn">

=head2 Status => Str

The status of your organization's phone numbers.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPhoneNumbers in L<Paws::ChimeSDKVoice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

