# Generated by default/object.tt
package Paws::PartnerCentralSelling::CustomerProjectsContext;
  use Moose;
  has Customer => (is => 'ro', isa => 'Paws::PartnerCentralSelling::EngagementCustomer');
  has Project => (is => 'ro', isa => 'Paws::PartnerCentralSelling::EngagementCustomerProjectDetails');

1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::CustomerProjectsContext

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PartnerCentralSelling::CustomerProjectsContext object:

  $service_obj->Method(Att1 => { Customer => $value, ..., Project => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PartnerCentralSelling::CustomerProjectsContext object:

  $result = $service_obj->Method(...);
  $result->Att1->Customer

=head1 DESCRIPTION

The CustomerProjects structure in Engagements offers a flexible
framework for managing customer-project relationships. It supports
multiple customers per Engagement and multiple projects per customer,
while also allowing for customers without projects and projects without
specific customers.

All Engagement members have full visibility of customers and their
associated projects, enabling the capture of relevant context even when
project details are not fully defined. This structure also facilitates
targeted invitations, allowing partners to focus on specific customers
and their business problems when sending Engagement invitations.

=head1 ATTRIBUTES


=head2 Customer => L<Paws::PartnerCentralSelling::EngagementCustomer>




=head2 Project => L<Paws::PartnerCentralSelling::EngagementCustomerProjectDetails>

Information about the customer project associated with the Engagement.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

