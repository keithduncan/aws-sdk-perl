# Generated by default/object.tt
package Paws::SSMContacts::Rotation;
  use Moose;
  has ContactIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Recurrence => (is => 'ro', isa => 'Paws::SSMContacts::RecurrenceSettings');
  has RotationArn => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str');
  has TimeZoneId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::Rotation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSMContacts::Rotation object:

  $service_obj->Method(Att1 => { ContactIds => $value, ..., TimeZoneId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSMContacts::Rotation object:

  $result = $service_obj->Method(...);
  $result->Att1->ContactIds

=head1 DESCRIPTION

Information about a rotation in an on-call schedule.

=head1 ATTRIBUTES


=head2 ContactIds => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of the contacts assigned to the
rotation team.


=head2 B<REQUIRED> Name => Str

The name of the rotation.


=head2 Recurrence => L<Paws::SSMContacts::RecurrenceSettings>

Information about when an on-call rotation is in effect and how long
the rotation period lasts.


=head2 B<REQUIRED> RotationArn => Str

The Amazon Resource Name (ARN) of the rotation.


=head2 StartTime => Str

The date and time the rotation becomes active.


=head2 TimeZoneId => Str

The time zone the rotationE<rsquo>s activity is based on, in Internet
Assigned Numbers Authority (IANA) format. For example:
"America/Los_Angeles", "UTC", or "Asia/Seoul".



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

