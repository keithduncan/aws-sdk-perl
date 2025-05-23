# Generated by default/object.tt
package Paws::Notifications::ManagedNotificationChildEvent;
  use Moose;
  has AggregateManagedNotificationEventArn => (is => 'ro', isa => 'Str', request_name => 'aggregateManagedNotificationEventArn', traits => ['NameInRequest'], required => 1);
  has AggregationDetail => (is => 'ro', isa => 'Paws::Notifications::AggregationDetail', request_name => 'aggregationDetail', traits => ['NameInRequest']);
  has EndTime => (is => 'ro', isa => 'Str', request_name => 'endTime', traits => ['NameInRequest']);
  has EventStatus => (is => 'ro', isa => 'Str', request_name => 'eventStatus', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest'], required => 1);
  has MessageComponents => (is => 'ro', isa => 'Paws::Notifications::MessageComponents', request_name => 'messageComponents', traits => ['NameInRequest'], required => 1);
  has NotificationType => (is => 'ro', isa => 'Str', request_name => 'notificationType', traits => ['NameInRequest'], required => 1);
  has OrganizationalUnitId => (is => 'ro', isa => 'Str', request_name => 'organizationalUnitId', traits => ['NameInRequest']);
  has SchemaVersion => (is => 'ro', isa => 'Str', request_name => 'schemaVersion', traits => ['NameInRequest'], required => 1);
  has SourceEventDetailUrl => (is => 'ro', isa => 'Str', request_name => 'sourceEventDetailUrl', traits => ['NameInRequest']);
  has SourceEventDetailUrlDisplayText => (is => 'ro', isa => 'Str', request_name => 'sourceEventDetailUrlDisplayText', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
  has TextParts => (is => 'ro', isa => 'Paws::Notifications::TextParts', request_name => 'textParts', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::ManagedNotificationChildEvent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Notifications::ManagedNotificationChildEvent object:

  $service_obj->Method(Att1 => { AggregateManagedNotificationEventArn => $value, ..., TextParts => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Notifications::ManagedNotificationChildEvent object:

  $result = $service_obj->Method(...);
  $result->Att1->AggregateManagedNotificationEventArn

=head1 DESCRIPTION

A ManagedNotificationChildEvent is a notification-focused
representation of an event. They contain semantic information used to
create aggregated or non-aggregated end-user notifications.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AggregateManagedNotificationEventArn => Str

The Amazon Resource Name (ARN) of the ManagedNotificationEvent that is
associated with this Managed Notification Child Event.


=head2 AggregationDetail => L<Paws::Notifications::AggregationDetail>

Provides detailed information about the dimensions used for event
summarization and aggregation.


=head2 EndTime => Str

The end time of the event.


=head2 EventStatus => Str

The assesed nature of the event.

=over

=item *

Values:

=over

=item *

C<HEALTHY>

=over

=item *

All C<EventRules> are C<ACTIVE>.

=back

=item *

C<UNHEALTHY>

=over

=item *

Some C<EventRules> are C<ACTIVE> and some are C<INACTIVE>.

=back

=back

=back



=head2 B<REQUIRED> Id => Str

The unique identifier for a Managed Notification Child Event.


=head2 B<REQUIRED> MessageComponents => L<Paws::Notifications::MessageComponents>




=head2 B<REQUIRED> NotificationType => Str

The type of event causing the notification.

=over

=item *

Values:

=over

=item *

C<ALERT>

=over

=item *

A notification about an event where something was triggered, initiated,
reopened, deployed, or a threshold was breached.

=back

=item *

C<WARNING>

=over

=item *

A notification about an event where an issue is about to arise. For
example, something is approaching a threshold.

=back

=item *

C<ANNOUNCEMENT>

=over

=item *

A notification about an important event. For example, a step in a
workflow or escalation path or that a workflow was updated.

=back

=item *

C<INFORMATIONAL>

=over

=item *

A notification about informational messages. For example,
recommendations, service announcements, or reminders.

=back

=back

=back



=head2 OrganizationalUnitId => Str

The Organizational Unit Id that an Amazon Web Services account belongs
to.


=head2 B<REQUIRED> SchemaVersion => Str

The schema version of the Managed Notification Child Event.


=head2 SourceEventDetailUrl => Str

The source event URL.


=head2 SourceEventDetailUrlDisplayText => Str

The detailed URL for the source event.


=head2 StartTime => Str

The notification event start time.


=head2 B<REQUIRED> TextParts => L<Paws::Notifications::TextParts>

A list of text values.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Notifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

