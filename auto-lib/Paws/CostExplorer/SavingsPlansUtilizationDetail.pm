# Generated by default/object.tt
package Paws::CostExplorer::SavingsPlansUtilizationDetail;
  use Moose;
  has AmortizedCommitment => (is => 'ro', isa => 'Paws::CostExplorer::SavingsPlansAmortizedCommitment');
  has Attributes => (is => 'ro', isa => 'Paws::CostExplorer::Attributes');
  has Savings => (is => 'ro', isa => 'Paws::CostExplorer::SavingsPlansSavings');
  has SavingsPlanArn => (is => 'ro', isa => 'Str');
  has Utilization => (is => 'ro', isa => 'Paws::CostExplorer::SavingsPlansUtilization');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::SavingsPlansUtilizationDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::SavingsPlansUtilizationDetail object:

  $service_obj->Method(Att1 => { AmortizedCommitment => $value, ..., Utilization => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::SavingsPlansUtilizationDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->AmortizedCommitment

=head1 DESCRIPTION

A single daily or monthly Savings Plans utilization rate and details
for your account. A management account in an organization have access
to member accounts. You can use C<GetDimensionValues> to determine the
possible dimension values.

=head1 ATTRIBUTES


=head2 AmortizedCommitment => L<Paws::CostExplorer::SavingsPlansAmortizedCommitment>

The total amortized commitment for a Savings Plans. Includes the sum of
the upfront and recurring Savings Plans fees.


=head2 Attributes => L<Paws::CostExplorer::Attributes>

The attribute that applies to a specific C<Dimension>.


=head2 Savings => L<Paws::CostExplorer::SavingsPlansSavings>

The amount saved by using existing Savings Plans. Savings returns both
net savings from savings plans and also the C<onDemandCostEquivalent>
of the Savings Plans when considering the utilization rate.


=head2 SavingsPlanArn => Str

The unique Amazon Resource Name (ARN) for a particular Savings Plan.


=head2 Utilization => L<Paws::CostExplorer::SavingsPlansUtilization>

A ratio of your effectiveness of using existing Savings Plans to apply
to workloads that are Savings Plans eligible.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

