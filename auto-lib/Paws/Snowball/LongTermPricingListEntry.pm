# Generated by default/object.tt
package Paws::Snowball::LongTermPricingListEntry;
  use Moose;
  has CurrentActiveJob => (is => 'ro', isa => 'Str');
  has IsLongTermPricingAutoRenew => (is => 'ro', isa => 'Bool');
  has JobIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LongTermPricingEndDate => (is => 'ro', isa => 'Str');
  has LongTermPricingId => (is => 'ro', isa => 'Str');
  has LongTermPricingStartDate => (is => 'ro', isa => 'Str');
  has LongTermPricingStatus => (is => 'ro', isa => 'Str');
  has LongTermPricingType => (is => 'ro', isa => 'Str');
  has ReplacementJob => (is => 'ro', isa => 'Str');
  has SnowballType => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::LongTermPricingListEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Snowball::LongTermPricingListEntry object:

  $service_obj->Method(Att1 => { CurrentActiveJob => $value, ..., SnowballType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Snowball::LongTermPricingListEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrentActiveJob

=head1 DESCRIPTION

Each C<LongTermPricingListEntry> object contains information about a
long-term pricing type.

=head1 ATTRIBUTES


=head2 CurrentActiveJob => Str

The current active jobs on the device the long-term pricing type.


=head2 IsLongTermPricingAutoRenew => Bool

If set to C<true>, specifies that the current long-term pricing type
for the device should be automatically renewed before the long-term
pricing contract expires.


=head2 JobIds => ArrayRef[Str|Undef]

The IDs of the jobs that are associated with a long-term pricing type.


=head2 LongTermPricingEndDate => Str

The end date the long-term pricing contract.


=head2 LongTermPricingId => Str

The ID of the long-term pricing type for the device.


=head2 LongTermPricingStartDate => Str

The start date of the long-term pricing contract.


=head2 LongTermPricingStatus => Str

The status of the long-term pricing type.


=head2 LongTermPricingType => Str

The type of long-term pricing that was selected for the device.


=head2 ReplacementJob => Str

A new device that replaces a device that is ordered with long-term
pricing.


=head2 SnowballType => Str

The type of Snow Family devices associated with this long-term pricing
job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

