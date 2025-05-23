# Generated by default/object.tt
package Paws::PartnerCentralSelling::EngagementCustomer;
  use Moose;
  has CompanyName => (is => 'ro', isa => 'Str', required => 1);
  has CountryCode => (is => 'ro', isa => 'Str', required => 1);
  has Industry => (is => 'ro', isa => 'Str', required => 1);
  has WebsiteUrl => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::EngagementCustomer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PartnerCentralSelling::EngagementCustomer object:

  $service_obj->Method(Att1 => { CompanyName => $value, ..., WebsiteUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PartnerCentralSelling::EngagementCustomer object:

  $result = $service_obj->Method(...);
  $result->Att1->CompanyName

=head1 DESCRIPTION

Contains details about the customer associated with the Engagement
Invitation, including company information and industry.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CompanyName => Str

Represents the name of the customerE<rsquo>s company associated with
the Engagement Invitation. This field is used to identify the customer.


=head2 B<REQUIRED> CountryCode => Str

Indicates the country in which the customerE<rsquo>s company operates.
This field is useful for understanding regional requirements or
compliance needs.


=head2 B<REQUIRED> Industry => Str

Specifies the industry to which the customerE<rsquo>s company belongs.
This field helps categorize the opportunity based on the
customerE<rsquo>s business sector.


=head2 B<REQUIRED> WebsiteUrl => Str

Provides the website URL of the customerE<rsquo>s company. This field
helps partners verify the legitimacy and size of the customer
organization.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

