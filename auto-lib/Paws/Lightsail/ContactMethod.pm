# Generated by default/object.tt
package Paws::Lightsail::ContactMethod;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has ContactEndpoint => (is => 'ro', isa => 'Str', request_name => 'contactEndpoint', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has Location => (is => 'ro', isa => 'Paws::Lightsail::ResourceLocation', request_name => 'location', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Protocol => (is => 'ro', isa => 'Str', request_name => 'protocol', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has SupportCode => (is => 'ro', isa => 'Str', request_name => 'supportCode', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::ContactMethod

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::ContactMethod object:

  $service_obj->Method(Att1 => { Arn => $value, ..., SupportCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::ContactMethod object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describes a contact method.

A contact method is a way to send you notifications. For more
information, see Notifications in Amazon Lightsail
(https://docs.aws.amazon.com/lightsail/latest/userguide/amazon-lightsail-notifications).

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the contact method.


=head2 ContactEndpoint => Str

The destination of the contact method, such as an email address or a
mobile phone number.


=head2 CreatedAt => Str

The timestamp when the contact method was created.


=head2 Location => L<Paws::Lightsail::ResourceLocation>

An object that describes the location of the contact method, such as
the Amazon Web Services Region and Availability Zone.


=head2 Name => Str

The name of the contact method.


=head2 Protocol => Str

The protocol of the contact method, such as email or SMS (text
messaging).


=head2 ResourceType => Str

The Lightsail resource type of the contact method.


=head2 Status => Str

The current status of the contact method.

A contact method has the following possible status:

=over

=item *

C<PendingVerification> - The contact method has not yet been verified,
and the verification has not yet expired.

=item *

C<Valid> - The contact method has been verified.

=item *

C<InValid> - An attempt was made to verify the contact method, but the
verification has expired.

=back



=head2 SupportCode => Str

The support code. Include this code in your email to support when you
have questions about your Lightsail contact method. This code enables
our support team to look up your Lightsail information more easily.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

