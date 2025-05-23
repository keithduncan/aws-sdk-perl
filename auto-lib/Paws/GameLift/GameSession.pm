# Generated by default/object.tt
package Paws::GameLift::GameSession;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has CreatorId => (is => 'ro', isa => 'Str');
  has CurrentPlayerSessionCount => (is => 'ro', isa => 'Int');
  has DnsName => (is => 'ro', isa => 'Str');
  has FleetArn => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str');
  has GameProperties => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameProperty]');
  has GameSessionData => (is => 'ro', isa => 'Str');
  has GameSessionId => (is => 'ro', isa => 'Str');
  has IpAddress => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Str');
  has MatchmakerData => (is => 'ro', isa => 'Str');
  has MaximumPlayerSessionCount => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has PlayerSessionCreationPolicy => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Str');
  has StatusReason => (is => 'ro', isa => 'Str');
  has TerminationTime => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::GameSession

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::GameSession object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., TerminationTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::GameSession object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Properties describing a game session.

A game session in ACTIVE status can host players. When a game session
ends, its status is set to C<TERMINATED>.

Amazon GameLift retains a game session resource for 30 days after the
game session ends. You can reuse idempotency token values after this
time. Game session logs are retained for 14 days.

All APIs by task
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-awssdk.html#reference-awssdk-resources-fleets)

=head1 ATTRIBUTES


=head2 CreationTime => Str

A time stamp indicating when this data object was created. Format is a
number expressed in Unix time as milliseconds (for example
C<"1469498468.057">).


=head2 CreatorId => Str

A unique identifier for a player. This ID is used to enforce a resource
protection policy (if one exists), that limits the number of game
sessions a player can create.


=head2 CurrentPlayerSessionCount => Int

Number of players currently in the game session.


=head2 DnsName => Str

The DNS identifier assigned to the instance that is running the game
session. Values have the following format:

=over

=item *

TLS-enabled fleets: C<E<lt>unique identifierE<gt>.E<lt>region
identifierE<gt>.amazongamelift.com>.

=item *

Non-TLS-enabled fleets: C<ec2-E<lt>unique
identifierE<gt>.compute.amazonaws.com>. (See Amazon EC2 Instance IP
Addressing
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#concepts-public-addresses).)

=back

When connecting to a game session that is running on a TLS-enabled
fleet, you must use the DNS name, not the IP address.


=head2 FleetArn => Str

The Amazon Resource Name (ARN
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html))
associated with the GameLift fleet that this game session is running
on.


=head2 FleetId => Str

A unique identifier for the fleet that the game session is running on.


=head2 GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]

A set of key-value pairs that can store custom data in a game session.
For example: C<{"Key": "difficulty", "Value": "novice"}>.


=head2 GameSessionData => Str

A set of custom game session properties, formatted as a single string
value. This data is passed to a game server process with a request to
start a new game session. For more information, see Start a game
session
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api.html#gamelift-sdk-server-startsession).


=head2 GameSessionId => Str

A unique identifier for the game session. A game session ARN has the
following format:
C<arn:aws:gamelift:E<lt>locationE<gt>::gamesession/E<lt>fleet
IDE<gt>/E<lt>custom ID string or idempotency tokenE<gt>>.


=head2 IpAddress => Str

The IP address of the game session. To connect to a Amazon GameLift
game server, an app needs both the IP address and port number.


=head2 Location => Str

The fleet location where the game session is running. This value might
specify the fleet's home Region or a remote location. Location is
expressed as an Amazon Web Services Region code such as C<us-west-2>.


=head2 MatchmakerData => Str

Information about the matchmaking process that resulted in the game
session, if matchmaking was used. Data is in JSON syntax, formatted as
a string. Information includes the matchmaker ID as well as player
attributes and team assignments. For more details on matchmaker data,
see Match Data
(https://docs.aws.amazon.com/gamelift/latest/flexmatchguide/match-server.html#match-server-data).
Matchmaker data is updated whenever new players are added during a
successful backfill (see StartMatchBackfill
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_StartMatchBackfill.html)).


=head2 MaximumPlayerSessionCount => Int

The maximum number of players that can be connected simultaneously to
the game session.


=head2 Name => Str

A descriptive label that is associated with a game session. Session
names do not need to be unique.


=head2 PlayerSessionCreationPolicy => Str

Indicates whether the game session is accepting new players.


=head2 Port => Int

The port number for the game session. To connect to a Amazon GameLift
game server, an app needs both the IP address and port number.


=head2 Status => Str

Current status of the game session. A game session must have an
C<ACTIVE> status to have player sessions.


=head2 StatusReason => Str

Provides additional information about game session status.

=over

=item *

C<INTERRUPTED> -- The game session was hosted on an EC2 Spot instance
that was reclaimed, causing the active game session to be stopped.

=item *

C<TRIGGERED_ON_PROCESS_TERMINATE> E<ndash> The game session was stopped
by calling C<TerminateGameSession> with the termination mode
C<TRIGGER_ON_PROCESS_TERMINATE>.

=item *

C<FORCE_TERMINATED> E<ndash> The game session was stopped by calling
C<TerminateGameSession> with the termination mode C<FORCE_TERMINATE>.

=back



=head2 TerminationTime => Str

A time stamp indicating when this data object was terminated. Format is
a number expressed in Unix time as milliseconds (for example
C<"1469498468.057">).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

