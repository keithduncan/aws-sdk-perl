# Generated by default/object.tt
package Paws::Connect::AssociatedContactSummary;
  use Moose;
  has Channel => (is => 'ro', isa => 'Str');
  has ContactArn => (is => 'ro', isa => 'Str');
  has ContactId => (is => 'ro', isa => 'Str');
  has DisconnectTimestamp => (is => 'ro', isa => 'Str');
  has InitialContactId => (is => 'ro', isa => 'Str');
  has InitiationMethod => (is => 'ro', isa => 'Str');
  has InitiationTimestamp => (is => 'ro', isa => 'Str');
  has PreviousContactId => (is => 'ro', isa => 'Str');
  has RelatedContactId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::AssociatedContactSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::AssociatedContactSummary object:

  $service_obj->Method(Att1 => { Channel => $value, ..., RelatedContactId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::AssociatedContactSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Channel

=head1 DESCRIPTION

Contact summary of a contact in contact tree associated with unique
identifier.

=head1 ATTRIBUTES


=head2 Channel => Str

How the contact reached your contact center.


=head2 ContactArn => Str

The Amazon Resource Name (ARN) of the contact


=head2 ContactId => Str

The identifier of the contact in this instance of Amazon Connect.


=head2 DisconnectTimestamp => Str

The date and time that the customer endpoint disconnected from the
current contact, in UTC time. In transfer scenarios, the
DisconnectTimestamp of the previous contact indicates the date and time
when that contact ended.


=head2 InitialContactId => Str

If this contact is related to other contacts, this is the ID of the
initial contact.


=head2 InitiationMethod => Str

Indicates how the contact was initiated.


=head2 InitiationTimestamp => Str

The date and time this contact was initiated, in UTC time.


=head2 PreviousContactId => Str

If this contact is not the first contact, this is the ID of the
previous contact.


=head2 RelatedContactId => Str

The contactId that is related to this contact.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

