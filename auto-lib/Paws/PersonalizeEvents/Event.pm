# Generated by default/object.tt
package Paws::PersonalizeEvents::Event;
  use Moose;
  has EventId => (is => 'ro', isa => 'Str', request_name => 'eventId', traits => ['NameInRequest']);
  has EventType => (is => 'ro', isa => 'Str', request_name => 'eventType', traits => ['NameInRequest'], required => 1);
  has EventValue => (is => 'ro', isa => 'Num', request_name => 'eventValue', traits => ['NameInRequest']);
  has Impression => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'impression', traits => ['NameInRequest']);
  has ItemId => (is => 'ro', isa => 'Str', request_name => 'itemId', traits => ['NameInRequest']);
  has MetricAttribution => (is => 'ro', isa => 'Paws::PersonalizeEvents::MetricAttribution', request_name => 'metricAttribution', traits => ['NameInRequest']);
  has Properties => (is => 'ro', isa => 'Str', request_name => 'properties', traits => ['NameInRequest']);
  has RecommendationId => (is => 'ro', isa => 'Str', request_name => 'recommendationId', traits => ['NameInRequest']);
  has SentAt => (is => 'ro', isa => 'Str', request_name => 'sentAt', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::PersonalizeEvents::Event

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PersonalizeEvents::Event object:

  $service_obj->Method(Att1 => { EventId => $value, ..., SentAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PersonalizeEvents::Event object:

  $result = $service_obj->Method(...);
  $result->Att1->EventId

=head1 DESCRIPTION

Represents item interaction event information sent using the
C<PutEvents> API.

=head1 ATTRIBUTES


=head2 EventId => Str

An ID associated with the event. If an event ID is not provided, Amazon
Personalize generates a unique ID for the event. An event ID is not
used as an input to the model. Amazon Personalize uses the event ID to
distinguish unique events. Any subsequent events after the first with
the same event ID are not used in model training.


=head2 B<REQUIRED> EventType => Str

The type of event, such as click or download. This property corresponds
to the C<EVENT_TYPE> field of your Item interactions dataset's schema
and depends on the types of events you are tracking.


=head2 EventValue => Num

The event value that corresponds to the C<EVENT_VALUE> field of the
Item interactions schema.


=head2 Impression => ArrayRef[Str|Undef]

A list of item IDs that represents the sequence of items you have shown
the user. For example, C<["itemId1", "itemId2", "itemId3"]>. Provide a
list of items to manually record impressions data for an event. For
more information on recording impressions data, see Recording
impressions data
(https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html#putevents-including-impressions-data).


=head2 ItemId => Str

The item ID key that corresponds to the C<ITEM_ID> field of the Item
interactions dataset's schema.


=head2 MetricAttribution => L<Paws::PersonalizeEvents::MetricAttribution>

Contains information about the metric attribution associated with an
event. For more information about metric attributions, see Measuring
impact of recommendations
(https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html).


=head2 Properties => Str

A string map of event-specific data that you might choose to record.
For example, if a user rates a movie on your site, other than movie ID
(C<itemId>) and rating (C<eventValue>) , you might also send the number
of movie ratings made by the user.

Each item in the map consists of a key-value pair. For example,

C<{"numberOfRatings": "12"}>

The keys use camel case names that match the fields in the Item
interactions dataset's schema. In the above example, the
C<numberOfRatings> would match the 'NUMBER_OF_RATINGS' field defined in
the Item interactions dataset's schema.

The following can't be included as a keyword for properties (case
insensitive).

=over

=item *

userId

=item *

sessionId

=item *

eventType

=item *

timestamp

=item *

recommendationId

=item *

impression

=back



=head2 RecommendationId => Str

The ID of the list of recommendations that contains the item the user
interacted with. Provide a C<recommendationId> to have Amazon
Personalize implicitly record the recommendations you show your user as
impressions data. Or provide a C<recommendationId> if you use a metric
attribution to measure the impact of recommendations.

For more information on recording impressions data, see Recording
impressions data
(https://docs.aws.amazon.com/personalize/latest/dg/recording-events.html#putevents-including-impressions-data).
For more information on creating a metric attribution see Measuring
impact of recommendations
(https://docs.aws.amazon.com/personalize/latest/dg/measuring-recommendation-impact.html).


=head2 B<REQUIRED> SentAt => Str

The timestamp (in Unix time) on the client side when the event
occurred.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PersonalizeEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

