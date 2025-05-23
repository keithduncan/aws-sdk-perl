# Generated by default/object.tt
package Paws::Connect::UserData;
  use Moose;
  has ActiveSlotsByChannel => (is => 'ro', isa => 'Paws::Connect::ChannelToCountMap');
  has AvailableSlotsByChannel => (is => 'ro', isa => 'Paws::Connect::ChannelToCountMap');
  has Contacts => (is => 'ro', isa => 'ArrayRef[Paws::Connect::AgentContactReference]');
  has HierarchyPath => (is => 'ro', isa => 'Paws::Connect::HierarchyPathReference');
  has MaxSlotsByChannel => (is => 'ro', isa => 'Paws::Connect::ChannelToCountMap');
  has NextStatus => (is => 'ro', isa => 'Str');
  has RoutingProfile => (is => 'ro', isa => 'Paws::Connect::RoutingProfileReference');
  has Status => (is => 'ro', isa => 'Paws::Connect::AgentStatusReference');
  has User => (is => 'ro', isa => 'Paws::Connect::UserReference');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UserData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::UserData object:

  $service_obj->Method(Att1 => { ActiveSlotsByChannel => $value, ..., User => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::UserData object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveSlotsByChannel

=head1 DESCRIPTION

Data for a user.

=head1 ATTRIBUTES


=head2 ActiveSlotsByChannel => L<Paws::Connect::ChannelToCountMap>

A map of active slots by channel. The key is a channel name. The value
is an integer: the number of active slots.


=head2 AvailableSlotsByChannel => L<Paws::Connect::ChannelToCountMap>

A map of available slots by channel. The key is a channel name. The
value is an integer: the available number of slots.


=head2 Contacts => ArrayRef[L<Paws::Connect::AgentContactReference>]

A list of contact reference information.


=head2 HierarchyPath => L<Paws::Connect::HierarchyPathReference>

Contains information about the levels of a hierarchy group assigned to
a user.


=head2 MaxSlotsByChannel => L<Paws::Connect::ChannelToCountMap>

A map of maximum slots by channel. The key is a channel name. The value
is an integer: the maximum number of slots. This is calculated from
MediaConcurrency
(https://docs.aws.amazon.com/connect/latest/APIReference/API_MediaConcurrency.html)
of the C<RoutingProfile> assigned to the agent.


=head2 NextStatus => Str

The Next status of the agent.


=head2 RoutingProfile => L<Paws::Connect::RoutingProfileReference>

Information about the routing profile that is assigned to the user.


=head2 Status => L<Paws::Connect::AgentStatusReference>

The status of the agent that they manually set in their Contact Control
Panel (CCP), or that the supervisor manually changes in the real-time
metrics report.


=head2 User => L<Paws::Connect::UserReference>

Information about the user for the data that is returned. It contains
the C<resourceId> and ARN of the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

