# Generated by default/object.tt
package Paws::CostOptimizationHub::DynamoDbReservedCapacityConfiguration;
  use Moose;
  has AccountScope => (is => 'ro', isa => 'Str', request_name => 'accountScope', traits => ['NameInRequest']);
  has CapacityUnits => (is => 'ro', isa => 'Str', request_name => 'capacityUnits', traits => ['NameInRequest']);
  has MonthlyRecurringCost => (is => 'ro', isa => 'Str', request_name => 'monthlyRecurringCost', traits => ['NameInRequest']);
  has NumberOfCapacityUnitsToPurchase => (is => 'ro', isa => 'Str', request_name => 'numberOfCapacityUnitsToPurchase', traits => ['NameInRequest']);
  has PaymentOption => (is => 'ro', isa => 'Str', request_name => 'paymentOption', traits => ['NameInRequest']);
  has ReservedInstancesRegion => (is => 'ro', isa => 'Str', request_name => 'reservedInstancesRegion', traits => ['NameInRequest']);
  has Service => (is => 'ro', isa => 'Str', request_name => 'service', traits => ['NameInRequest']);
  has Term => (is => 'ro', isa => 'Str', request_name => 'term', traits => ['NameInRequest']);
  has UpfrontCost => (is => 'ro', isa => 'Str', request_name => 'upfrontCost', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CostOptimizationHub::DynamoDbReservedCapacityConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostOptimizationHub::DynamoDbReservedCapacityConfiguration object:

  $service_obj->Method(Att1 => { AccountScope => $value, ..., UpfrontCost => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostOptimizationHub::DynamoDbReservedCapacityConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountScope

=head1 DESCRIPTION

The DynamoDB reserved capacity configuration used for recommendations.

=head1 ATTRIBUTES


=head2 AccountScope => Str

The account scope for which you want recommendations.


=head2 CapacityUnits => Str

The capacity unit of the recommended reservation.


=head2 MonthlyRecurringCost => Str

How much purchasing this reserved capacity costs you on a monthly
basis.


=head2 NumberOfCapacityUnitsToPurchase => Str

The number of reserved capacity units that Amazon Web Services
recommends that you purchase.


=head2 PaymentOption => Str

The payment option for the commitment.


=head2 ReservedInstancesRegion => Str

The Amazon Web Services Region of the commitment.


=head2 Service => Str

The service for which you want recommendations.


=head2 Term => Str

The reserved capacity recommendation term in years.


=head2 UpfrontCost => Str

How much purchasing this reserved capacity costs you upfront.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostOptimizationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

