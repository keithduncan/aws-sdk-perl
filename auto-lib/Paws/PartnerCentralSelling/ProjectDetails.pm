# Generated by default/object.tt
package Paws::PartnerCentralSelling::ProjectDetails;
  use Moose;
  has BusinessProblem => (is => 'ro', isa => 'Str', required => 1);
  has ExpectedCustomerSpend => (is => 'ro', isa => 'ArrayRef[Paws::PartnerCentralSelling::ExpectedCustomerSpend]', required => 1);
  has TargetCompletionDate => (is => 'ro', isa => 'Str', required => 1);
  has Title => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::ProjectDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PartnerCentralSelling::ProjectDetails object:

  $service_obj->Method(Att1 => { BusinessProblem => $value, ..., Title => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PartnerCentralSelling::ProjectDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->BusinessProblem

=head1 DESCRIPTION

Contains details about the project associated with the Engagement
Invitation, including the business problem and expected outcomes.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BusinessProblem => Str

Describes the business problem that the project aims to solve. This
information is crucial for understanding the projectE<rsquo>s goals and
objectives.


=head2 B<REQUIRED> ExpectedCustomerSpend => ArrayRef[L<Paws::PartnerCentralSelling::ExpectedCustomerSpend>]

Contains revenue estimates for the partner related to the project. This
field provides an idea of the financial potential of the opportunity
for the partner.


=head2 B<REQUIRED> TargetCompletionDate => Str

Specifies the estimated date of project completion. This field helps
track the project timeline and manage expectations.


=head2 B<REQUIRED> Title => Str

Specifies the title of the project. This title helps partners quickly
identify and understand the focus of the project.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

