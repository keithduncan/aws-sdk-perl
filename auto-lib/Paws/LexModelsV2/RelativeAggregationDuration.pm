# Generated by default/object.tt
package Paws::LexModelsV2::RelativeAggregationDuration;
  use Moose;
  has TimeDimension => (is => 'ro', isa => 'Str', request_name => 'timeDimension', traits => ['NameInRequest'], required => 1);
  has TimeValue => (is => 'ro', isa => 'Int', request_name => 'timeValue', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::RelativeAggregationDuration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModelsV2::RelativeAggregationDuration object:

  $service_obj->Method(Att1 => { TimeDimension => $value, ..., TimeValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModelsV2::RelativeAggregationDuration object:

  $result = $service_obj->Method(...);
  $result->Att1->TimeDimension

=head1 DESCRIPTION

Specifies the time window that utterance statistics are returned for.
The time window is always relative to the last time that the that
utterances were aggregated. For example, if the
C<ListAggregatedUtterances> operation is called at 1600, the time
window is set to 1 hour, and the last refresh time was 1530, only
utterances made between 1430 and 1530 are returned.

You can choose the time window that statistics should be returned for.

=over

=item *

B<Hours> - You can request utterance statistics for 1, 3, 6, 12, or 24
hour time windows. Statistics are refreshed every half hour for 1 hour
time windows, and hourly for the other time windows.

=item *

B<Days> - You can request utterance statistics for 3 days. Statistics
are refreshed every 6 hours.

=item *

B<Weeks> - You can see statistics for one or two weeks. Statistics are
refreshed every 12 hours for one week time windows, and once per day
for two week time windows.

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> TimeDimension => Str

The type of time period that the C<timeValue> field represents.


=head2 B<REQUIRED> TimeValue => Int

The period of the time window to gather statistics for. The valid value
depends on the setting of the C<timeDimension> field.

=over

=item *

C<Hours> - 1/3/6/12/24

=item *

C<Days> - 3

=item *

C<Weeks> - 1/2

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

