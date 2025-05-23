# Generated by default/object.tt
package Paws::S3Control::BucketLevel;
  use Moose;
  has ActivityMetrics => (is => 'ro', isa => 'Paws::S3Control::ActivityMetrics');
  has AdvancedCostOptimizationMetrics => (is => 'ro', isa => 'Paws::S3Control::AdvancedCostOptimizationMetrics');
  has AdvancedDataProtectionMetrics => (is => 'ro', isa => 'Paws::S3Control::AdvancedDataProtectionMetrics');
  has DetailedStatusCodesMetrics => (is => 'ro', isa => 'Paws::S3Control::DetailedStatusCodesMetrics');
  has PrefixLevel => (is => 'ro', isa => 'Paws::S3Control::PrefixLevel');

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::BucketLevel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::BucketLevel object:

  $service_obj->Method(Att1 => { ActivityMetrics => $value, ..., PrefixLevel => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::BucketLevel object:

  $result = $service_obj->Method(...);
  $result->Att1->ActivityMetrics

=head1 DESCRIPTION

A container for the bucket-level configuration for Amazon S3 Storage
Lens.

For more information about S3 Storage Lens, see Assessing your storage
activity and usage with S3 Storage Lens
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage_lens.html)
in the I<Amazon S3 User Guide>.

=head1 ATTRIBUTES


=head2 ActivityMetrics => L<Paws::S3Control::ActivityMetrics>

A container for the bucket-level activity metrics for S3 Storage Lens.


=head2 AdvancedCostOptimizationMetrics => L<Paws::S3Control::AdvancedCostOptimizationMetrics>

A container for bucket-level advanced cost-optimization metrics for S3
Storage Lens.


=head2 AdvancedDataProtectionMetrics => L<Paws::S3Control::AdvancedDataProtectionMetrics>

A container for bucket-level advanced data-protection metrics for S3
Storage Lens.


=head2 DetailedStatusCodesMetrics => L<Paws::S3Control::DetailedStatusCodesMetrics>

A container for bucket-level detailed status code metrics for S3
Storage Lens.


=head2 PrefixLevel => L<Paws::S3Control::PrefixLevel>

A container for the prefix-level metrics for S3 Storage Lens.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

