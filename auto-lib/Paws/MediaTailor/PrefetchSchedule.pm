# Generated by default/object.tt
package Paws::MediaTailor::PrefetchSchedule;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Consumption => (is => 'ro', isa => 'Paws::MediaTailor::PrefetchConsumption');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has PlaybackConfigurationName => (is => 'ro', isa => 'Str', required => 1);
  has RecurringPrefetchConfiguration => (is => 'ro', isa => 'Paws::MediaTailor::RecurringPrefetchConfiguration');
  has Retrieval => (is => 'ro', isa => 'Paws::MediaTailor::PrefetchRetrieval');
  has ScheduleType => (is => 'ro', isa => 'Str');
  has StreamId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::PrefetchSchedule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaTailor::PrefetchSchedule object:

  $service_obj->Method(Att1 => { Arn => $value, ..., StreamId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaTailor::PrefetchSchedule object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A prefetch schedule allows you to tell MediaTailor to fetch and prepare
certain ads before an ad break happens. For more information about ad
prefetching, see Using ad prefetching
(https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html)
in the I<MediaTailor User Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the prefetch schedule.


=head2 Consumption => L<Paws::MediaTailor::PrefetchConsumption>

Consumption settings determine how, and when, MediaTailor places the
prefetched ads into ad breaks for single prefetch schedules. Ad
consumption occurs within a span of time that you define, called a
I<consumption window>. You can designate which ad breaks that
MediaTailor fills with prefetch ads by setting avail matching criteria.


=head2 B<REQUIRED> Name => Str

The name of the prefetch schedule. The name must be unique among all
prefetch schedules that are associated with the specified playback
configuration.


=head2 B<REQUIRED> PlaybackConfigurationName => Str

The name of the playback configuration to create the prefetch schedule
for.


=head2 RecurringPrefetchConfiguration => L<Paws::MediaTailor::RecurringPrefetchConfiguration>

The settings that determine how and when MediaTailor prefetches ads and
inserts them into ad breaks.


=head2 Retrieval => L<Paws::MediaTailor::PrefetchRetrieval>

A complex type that contains settings for prefetch retrieval from the
ad decision server (ADS).


=head2 ScheduleType => Str

The frequency that MediaTailor creates prefetch schedules. C<SINGLE>
indicates that this schedule applies to one ad break. C<RECURRING>
indicates that MediaTailor automatically creates a schedule for each ad
avail in a live event.

For more information about the prefetch types and when you might use
each, see Prefetching ads in Elemental MediaTailor.
(https://docs.aws.amazon.com/mediatailor/latest/ug/prefetching-ads.html)


=head2 StreamId => Str

An optional stream identifier that you can specify in order to prefetch
for multiple streams that use the same playback configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

