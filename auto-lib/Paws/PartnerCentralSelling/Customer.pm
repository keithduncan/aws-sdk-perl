# Generated by default/object.tt
package Paws::PartnerCentralSelling::Customer;
  use Moose;
  has Account => (is => 'ro', isa => 'Paws::PartnerCentralSelling::Account');
  has Contacts => (is => 'ro', isa => 'ArrayRef[Paws::PartnerCentralSelling::Contact]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::Customer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PartnerCentralSelling::Customer object:

  $service_obj->Method(Att1 => { Account => $value, ..., Contacts => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PartnerCentralSelling::Customer object:

  $result = $service_obj->Method(...);
  $result->Att1->Account

=head1 DESCRIPTION

An object that contains the customer's C<Account> and C<Contact>.

=head1 ATTRIBUTES


=head2 Account => L<Paws::PartnerCentralSelling::Account>

An object that contains the customer's account details.


=head2 Contacts => ArrayRef[L<Paws::PartnerCentralSelling::Contact>]

Represents the contact details for individuals associated with the
customer of the C<Opportunity>. This field captures relevant contacts,
including decision-makers, influencers, and technical stakeholders
within the customer organization. These contacts are key to progressing
the opportunity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

