# Generated by default/object.tt
package Paws::SSMContacts::ResolutionContact;
  use Moose;
  has ContactArn => (is => 'ro', isa => 'Str', required => 1);
  has StageIndex => (is => 'ro', isa => 'Int');
  has Type => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::ResolutionContact

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSMContacts::ResolutionContact object:

  $service_obj->Method(Att1 => { ContactArn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSMContacts::ResolutionContact object:

  $result = $service_obj->Method(...);
  $result->Att1->ContactArn

=head1 DESCRIPTION

Information about the engagement resolution steps. The resolution
starts from the first contact, which can be an escalation plan, then
resolves to an on-call rotation, and finally to a personal contact.

The C<ResolutionContact> structure describes the information for each
node or step in that process. It contains information about different
contact types, such as the escalation, rotation, and personal contacts.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactArn => Str

The Amazon Resource Name (ARN) of a contact in the engagement
resolution process.


=head2 StageIndex => Int

The stage in the escalation plan that resolves to this contact.


=head2 B<REQUIRED> Type => Str

The type of contact for a resolution step.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

