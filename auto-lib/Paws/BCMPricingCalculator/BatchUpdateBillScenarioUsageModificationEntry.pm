# Generated by default/object.tt
package Paws::BCMPricingCalculator::BatchUpdateBillScenarioUsageModificationEntry;
  use Moose;
  has Amounts => (is => 'ro', isa => 'ArrayRef[Paws::BCMPricingCalculator::UsageAmount]', request_name => 'amounts', traits => ['NameInRequest']);
  has Group => (is => 'ro', isa => 'Str', request_name => 'group', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::BatchUpdateBillScenarioUsageModificationEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BCMPricingCalculator::BatchUpdateBillScenarioUsageModificationEntry object:

  $service_obj->Method(Att1 => { Amounts => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BCMPricingCalculator::BatchUpdateBillScenarioUsageModificationEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Amounts

=head1 DESCRIPTION

Represents an entry in a batch operation to update bill scenario usage
modifications.

=head1 ATTRIBUTES


=head2 Amounts => ArrayRef[L<Paws::BCMPricingCalculator::UsageAmount>]

The updated usage amounts for the modification.


=head2 Group => Str

The updated group identifier for the usage modification.


=head2 B<REQUIRED> Id => Str

The unique identifier of the usage modification to update.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

