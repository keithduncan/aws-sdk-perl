# Generated by default/object.tt
package Paws::BCMPricingCalculator::BatchCreateWorkloadEstimateUsageItem;
  use Moose;
  has Cost => (is => 'ro', isa => 'Num', request_name => 'cost', traits => ['NameInRequest']);
  has Currency => (is => 'ro', isa => 'Str', request_name => 'currency', traits => ['NameInRequest']);
  has Group => (is => 'ro', isa => 'Str', request_name => 'group', traits => ['NameInRequest']);
  has HistoricalUsage => (is => 'ro', isa => 'Paws::BCMPricingCalculator::HistoricalUsageEntity', request_name => 'historicalUsage', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Key => (is => 'ro', isa => 'Str', request_name => 'key', traits => ['NameInRequest']);
  has Location => (is => 'ro', isa => 'Str', request_name => 'location', traits => ['NameInRequest']);
  has Operation => (is => 'ro', isa => 'Str', request_name => 'operation', traits => ['NameInRequest'], required => 1);
  has Quantity => (is => 'ro', isa => 'Paws::BCMPricingCalculator::WorkloadEstimateUsageQuantity', request_name => 'quantity', traits => ['NameInRequest']);
  has ServiceCode => (is => 'ro', isa => 'Str', request_name => 'serviceCode', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has UsageAccountId => (is => 'ro', isa => 'Str', request_name => 'usageAccountId', traits => ['NameInRequest']);
  has UsageType => (is => 'ro', isa => 'Str', request_name => 'usageType', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::BatchCreateWorkloadEstimateUsageItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BCMPricingCalculator::BatchCreateWorkloadEstimateUsageItem object:

  $service_obj->Method(Att1 => { Cost => $value, ..., UsageType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BCMPricingCalculator::BatchCreateWorkloadEstimateUsageItem object:

  $result = $service_obj->Method(...);
  $result->Att1->Cost

=head1 DESCRIPTION

Represents a successfully created item in a batch operation for
workload estimate usage.

=head1 ATTRIBUTES


=head2 Cost => Num

The estimated cost associated with this usage.


=head2 Currency => Str

The currency of the estimated cost.


=head2 Group => Str

The group identifier for the created usage estimate.


=head2 HistoricalUsage => L<Paws::BCMPricingCalculator::HistoricalUsageEntity>

Historical usage data associated with this estimate, if available.


=head2 Id => Str

The unique identifier assigned to the created usage estimate.


=head2 Key => Str

The key of the successfully created entry.


=head2 Location => Str

The location associated with this usage estimate.


=head2 B<REQUIRED> Operation => Str

The specific operation associated with this usage estimate.


=head2 Quantity => L<Paws::BCMPricingCalculator::WorkloadEstimateUsageQuantity>

The estimated usage quantity.


=head2 B<REQUIRED> ServiceCode => Str

The Amazon Web Services service code for this usage estimate.


=head2 Status => Str

The current status of the created usage estimate.


=head2 UsageAccountId => Str

The Amazon Web Services account ID associated with the created usage
estimate.


=head2 B<REQUIRED> UsageType => Str

The type of usage that was estimated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BCMPricingCalculator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

