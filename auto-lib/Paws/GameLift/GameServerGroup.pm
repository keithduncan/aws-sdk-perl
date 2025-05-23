# Generated by default/object.tt
package Paws::GameLift::GameServerGroup;
  use Moose;
  has AutoScalingGroupArn => (is => 'ro', isa => 'Str');
  has BalancingStrategy => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has GameServerGroupArn => (is => 'ro', isa => 'Str');
  has GameServerGroupName => (is => 'ro', isa => 'Str');
  has GameServerProtectionPolicy => (is => 'ro', isa => 'Str');
  has InstanceDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::InstanceDefinition]');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusReason => (is => 'ro', isa => 'Str');
  has SuspendedActions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::GameServerGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::GameServerGroup object:

  $service_obj->Method(Att1 => { AutoScalingGroupArn => $value, ..., SuspendedActions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::GameServerGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoScalingGroupArn

=head1 DESCRIPTION

B<This data type is used with the Amazon GameLift FleetIQ and game
server groups.>

Properties that describe a game server group resource. A game server
group manages certain properties related to a corresponding Amazon EC2
Auto Scaling group.

A game server group is created by a successful call to
C<CreateGameServerGroup> and deleted by calling
C<DeleteGameServerGroup>. Game server group activity can be temporarily
suspended and resumed by calling C<SuspendGameServerGroup> and
C<ResumeGameServerGroup>, respectively.

=head1 ATTRIBUTES


=head2 AutoScalingGroupArn => Str

A generated unique ID for the Amazon EC2 Auto Scaling group that is
associated with this game server group.


=head2 BalancingStrategy => Str

Indicates how Amazon GameLift FleetIQ balances the use of Spot
Instances and On-Demand Instances in the game server group. Method
options include the following:

=over

=item *

C<SPOT_ONLY> - Only Spot Instances are used in the game server group.
If Spot Instances are unavailable or not viable for game hosting, the
game server group provides no hosting capacity until Spot Instances can
again be used. Until then, no new instances are started, and the
existing nonviable Spot Instances are terminated (after current
gameplay ends) and are not replaced.

=item *

C<SPOT_PREFERRED> - (default value) Spot Instances are used whenever
available in the game server group. If Spot Instances are unavailable,
the game server group continues to provide hosting capacity by falling
back to On-Demand Instances. Existing nonviable Spot Instances are
terminated (after current gameplay ends) and are replaced with new
On-Demand Instances.

=item *

C<ON_DEMAND_ONLY> - Only On-Demand Instances are used in the game
server group. No Spot Instances are used, even when available, while
this balancing strategy is in force.

=back



=head2 CreationTime => Str

A time stamp indicating when this data object was created. Format is a
number expressed in Unix time as milliseconds (for example
C<"1469498468.057">).


=head2 GameServerGroupArn => Str

A generated unique ID for the game server group.


=head2 GameServerGroupName => Str

A developer-defined identifier for the game server group. The name is
unique for each Region in each Amazon Web Services account.


=head2 GameServerProtectionPolicy => Str

A flag that indicates whether instances in the game server group are
protected from early termination. Unprotected instances that have
active game servers running might be terminated during a scale-down
event, causing players to be dropped from the game. Protected instances
cannot be terminated while there are active game servers running except
in the event of a forced game server group deletion (see ). An
exception to this is with Spot Instances, which can be terminated by
Amazon Web Services regardless of protection status.


=head2 InstanceDefinitions => ArrayRef[L<Paws::GameLift::InstanceDefinition>]

The set of Amazon EC2 instance types that Amazon GameLift FleetIQ can
use when balancing and automatically scaling instances in the
corresponding Auto Scaling group.


=head2 LastUpdatedTime => Str

A timestamp that indicates when this game server group was last
updated.


=head2 RoleArn => Str

The Amazon Resource Name (ARN
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html))
for an IAM role that allows Amazon GameLift to access your Amazon EC2
Auto Scaling groups.


=head2 Status => Str

The current status of the game server group. Possible statuses include:

=over

=item *

C<NEW> - Amazon GameLift FleetIQ has validated the
C<CreateGameServerGroup()> request.

=item *

C<ACTIVATING> - Amazon GameLift FleetIQ is setting up a game server
group, which includes creating an Auto Scaling group in your Amazon Web
Services account.

=item *

C<ACTIVE> - The game server group has been successfully created.

=item *

C<DELETE_SCHEDULED> - A request to delete the game server group has
been received.

=item *

C<DELETING> - Amazon GameLift FleetIQ has received a valid
C<DeleteGameServerGroup()> request and is processing it. Amazon
GameLift FleetIQ must first complete and release hosts before it
deletes the Auto Scaling group and the game server group.

=item *

C<DELETED> - The game server group has been successfully deleted.

=item *

C<ERROR> - The asynchronous processes of activating or deleting a game
server group has failed, resulting in an error state.

=back



=head2 StatusReason => Str

Additional information about the current game server group status. This
information might provide additional insight on groups that are in
C<ERROR> status.


=head2 SuspendedActions => ArrayRef[Str|Undef]

A list of activities that are currently suspended for this game server
group. If this property is empty, all activities are occurring.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

