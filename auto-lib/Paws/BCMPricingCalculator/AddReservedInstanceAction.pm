# Generated by default/object.tt
package Paws::BCMPricingCalculator::AddReservedInstanceAction;
  use Moose;
  has InstanceCount => (is => 'ro', isa => 'Int', request_name => 'instanceCount', traits => ['NameInRequest']);
  has ReservedInstancesOfferingId => (is => 'ro', isa => 'Str', request_name => 'reservedInstancesOfferingId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::AddReservedInstanceAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BCMPricingCalculator::AddReservedInstanceAction object:

  $service_obj->Method(Att1 => { InstanceCount => $value, ..., ReservedInstancesOfferingId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BCMPricingCalculator::AddReservedInstanceAction object:

  $result = $service_obj->Method(...);
  $result->Att1->InstanceCount

=head1 DESCRIPTION

Represents an action to add a Reserved Instance to a bill scenario.

=head1 ATTRIBUTES


=head2 InstanceCount => Int

The number of instances to add for this Reserved Instance offering.


=head2 ReservedInstancesOfferingId => Str

The ID of the Reserved Instance offering to add. For more information,
see DescribeReservedInstancesOfferings
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DescribeReservedInstancesOfferings.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

