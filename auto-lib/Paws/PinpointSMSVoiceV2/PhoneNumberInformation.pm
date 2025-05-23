# Generated by default/object.tt
package Paws::PinpointSMSVoiceV2::PhoneNumberInformation;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str', required => 1);
  has DeletionProtectionEnabled => (is => 'ro', isa => 'Bool', required => 1);
  has IsoCountryCode => (is => 'ro', isa => 'Str', required => 1);
  has MessageType => (is => 'ro', isa => 'Str', required => 1);
  has MonthlyLeasingPrice => (is => 'ro', isa => 'Str', required => 1);
  has NumberCapabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has NumberType => (is => 'ro', isa => 'Str', required => 1);
  has OptOutListName => (is => 'ro', isa => 'Str', required => 1);
  has PhoneNumber => (is => 'ro', isa => 'Str', required => 1);
  has PhoneNumberArn => (is => 'ro', isa => 'Str', required => 1);
  has PhoneNumberId => (is => 'ro', isa => 'Str');
  has PoolId => (is => 'ro', isa => 'Str');
  has RegistrationId => (is => 'ro', isa => 'Str');
  has SelfManagedOptOutsEnabled => (is => 'ro', isa => 'Bool', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has TwoWayChannelArn => (is => 'ro', isa => 'Str');
  has TwoWayChannelRole => (is => 'ro', isa => 'Str');
  has TwoWayEnabled => (is => 'ro', isa => 'Bool', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::PhoneNumberInformation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointSMSVoiceV2::PhoneNumberInformation object:

  $service_obj->Method(Att1 => { CreatedTimestamp => $value, ..., TwoWayEnabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointSMSVoiceV2::PhoneNumberInformation object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTimestamp

=head1 DESCRIPTION

The information for a phone number, in E.164 format, in an Amazon Web
Services account.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedTimestamp => Str

The time when the phone number was created, in UNIX epoch time
(https://www.epochconverter.com/) format.


=head2 B<REQUIRED> DeletionProtectionEnabled => Bool

When set to true the phone number can't be deleted.


=head2 B<REQUIRED> IsoCountryCode => Str

The two-character code, in ISO 3166-1 alpha-2 format, for the country
or region.


=head2 B<REQUIRED> MessageType => Str

The type of message. Valid values are TRANSACTIONAL for messages that
are critical or time-sensitive and PROMOTIONAL for messages that aren't
critical or time-sensitive.


=head2 B<REQUIRED> MonthlyLeasingPrice => Str

The price, in US dollars, to lease the phone number.


=head2 B<REQUIRED> NumberCapabilities => ArrayRef[Str|Undef]

Describes if the origination identity can be used for text messages,
voice calls or both.


=head2 B<REQUIRED> NumberType => Str

The type of phone number.


=head2 B<REQUIRED> OptOutListName => Str

The name of the OptOutList associated with the phone number.


=head2 B<REQUIRED> PhoneNumber => Str

The phone number in E.164 format.


=head2 B<REQUIRED> PhoneNumberArn => Str

The Amazon Resource Name (ARN) associated with the phone number.


=head2 PhoneNumberId => Str

The unique identifier for the phone number.


=head2 PoolId => Str

The unique identifier of the pool associated with the phone number.


=head2 RegistrationId => Str

The unique identifier for the registration.


=head2 B<REQUIRED> SelfManagedOptOutsEnabled => Bool

When set to false an end recipient sends a message that begins with
HELP or STOP to one of your dedicated numbers, AWS End User Messaging
SMS and Voice automatically replies with a customizable message and
adds the end recipient to the OptOutList. When set to true you're
responsible for responding to HELP and STOP requests. You're also
responsible for tracking and honoring opt-out request. For more
information see Self-managed opt-outs
(https://docs.aws.amazon.com/pinpoint/latest/userguide/settings-sms-managing.html#settings-account-sms-self-managed-opt-out)


=head2 B<REQUIRED> Status => Str

The current status of the phone number.


=head2 TwoWayChannelArn => Str

The Amazon Resource Name (ARN) of the two way channel.


=head2 TwoWayChannelRole => Str

An optional IAM Role Arn for a service to assume, to be able to post
inbound SMS messages.


=head2 B<REQUIRED> TwoWayEnabled => Bool

By default this is set to false. When set to true you can receive
incoming text messages from your end recipients using the
TwoWayChannelArn.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

