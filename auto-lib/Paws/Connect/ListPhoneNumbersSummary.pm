# Generated by default/object.tt
package Paws::Connect::ListPhoneNumbersSummary;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str');
  has PhoneNumber => (is => 'ro', isa => 'Str');
  has PhoneNumberArn => (is => 'ro', isa => 'Str');
  has PhoneNumberCountryCode => (is => 'ro', isa => 'Str');
  has PhoneNumberDescription => (is => 'ro', isa => 'Str');
  has PhoneNumberId => (is => 'ro', isa => 'Str');
  has PhoneNumberType => (is => 'ro', isa => 'Str');
  has SourcePhoneNumberArn => (is => 'ro', isa => 'Str');
  has TargetArn => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListPhoneNumbersSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::ListPhoneNumbersSummary object:

  $service_obj->Method(Att1 => { InstanceId => $value, ..., TargetArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::ListPhoneNumbersSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->InstanceId

=head1 DESCRIPTION

Information about phone numbers that have been claimed to your Amazon
Connect instance or traffic distribution group.

=head1 ATTRIBUTES


=head2 InstanceId => Str

The identifier of the Amazon Connect instance that phone numbers are
claimed to. You can find the instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.


=head2 PhoneNumber => Str

The phone number. Phone numbers are formatted C<[+] [country code]
[subscriber number including area code]>.


=head2 PhoneNumberArn => Str

The Amazon Resource Name (ARN) of the phone number.


=head2 PhoneNumberCountryCode => Str

The ISO country code.


=head2 PhoneNumberDescription => Str

The description of the phone number.


=head2 PhoneNumberId => Str

A unique identifier for the phone number.


=head2 PhoneNumberType => Str

The type of phone number.


=head2 SourcePhoneNumberArn => Str

The claimed phone number ARN that was previously imported from the
external service, such as Amazon Web Services End User Messaging. If it
is from Amazon Web Services End User Messaging, it looks like the ARN
of the phone number that was imported from Amazon Web Services End User
Messaging.


=head2 TargetArn => Str

The Amazon Resource Name (ARN) for Amazon Connect instances or traffic
distribution groups that phone number inbound traffic is routed
through.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

