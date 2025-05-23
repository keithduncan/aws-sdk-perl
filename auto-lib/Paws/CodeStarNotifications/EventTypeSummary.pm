# Generated by default/object.tt
package Paws::CodeStarNotifications::EventTypeSummary;
  use Moose;
  has EventTypeId => (is => 'ro', isa => 'Str');
  has EventTypeName => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has ServiceName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::EventTypeSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeStarNotifications::EventTypeSummary object:

  $service_obj->Method(Att1 => { EventTypeId => $value, ..., ServiceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeStarNotifications::EventTypeSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->EventTypeId

=head1 DESCRIPTION

Returns information about an event that has triggered a notification
rule.

=head1 ATTRIBUTES


=head2 EventTypeId => Str

The system-generated ID of the event. For a complete list of event
types and IDs, see Notification concepts
(https://docs.aws.amazon.com/codestar-notifications/latest/userguide/concepts.html#concepts-api)
in the I<Developer Tools Console User Guide>.


=head2 EventTypeName => Str

The name of the event.


=head2 ResourceType => Str

The resource type of the event.


=head2 ServiceName => Str

The name of the service for which the event applies.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeStarNotifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

