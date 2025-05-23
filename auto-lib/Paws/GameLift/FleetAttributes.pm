# Generated by default/object.tt
package Paws::GameLift::FleetAttributes;
  use Moose;
  has AnywhereConfiguration => (is => 'ro', isa => 'Paws::GameLift::AnywhereConfiguration');
  has BuildArn => (is => 'ro', isa => 'Str');
  has BuildId => (is => 'ro', isa => 'Str');
  has CertificateConfiguration => (is => 'ro', isa => 'Paws::GameLift::CertificateConfiguration');
  has ComputeType => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has FleetArn => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str');
  has FleetType => (is => 'ro', isa => 'Str');
  has InstanceRoleArn => (is => 'ro', isa => 'Str');
  has InstanceRoleCredentialsProvider => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has LogPaths => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MetricGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str');
  has NewGameSessionProtectionPolicy => (is => 'ro', isa => 'Str');
  has OperatingSystem => (is => 'ro', isa => 'Str');
  has ResourceCreationLimitPolicy => (is => 'ro', isa => 'Paws::GameLift::ResourceCreationLimitPolicy');
  has ScriptArn => (is => 'ro', isa => 'Str');
  has ScriptId => (is => 'ro', isa => 'Str');
  has ServerLaunchParameters => (is => 'ro', isa => 'Str');
  has ServerLaunchPath => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StoppedActions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TerminationTime => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::FleetAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::FleetAttributes object:

  $service_obj->Method(Att1 => { AnywhereConfiguration => $value, ..., TerminationTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::FleetAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->AnywhereConfiguration

=head1 DESCRIPTION

Describes an Amazon GameLift fleet of game hosting resources.
Attributes differ based on the fleet's compute type, as follows:

=over

=item *

EC2 fleet attributes identify a C<Build> resource (for fleets with
customer game server builds) or a C<Script> resource (for Amazon
GameLift Realtime fleets).

=item *

Amazon GameLift Anywhere fleets have an abbreviated set of attributes,
because most fleet configurations are set directly on the fleet's
computes. Attributes include fleet identifiers and descriptive
properties, creation/termination time, and fleet status.

=back

B<Returned by:>
https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetAttributes
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_DescribeFleetAttributes)

=head1 ATTRIBUTES


=head2 AnywhereConfiguration => L<Paws::GameLift::AnywhereConfiguration>

A set of attributes that are specific to an Anywhere fleet.


=head2 BuildArn => Str

The Amazon Resource Name (ARN
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html))
associated with the Amazon GameLift build resource that is deployed on
instances in this fleet. In a GameLift build ARN, the resource ID
matches the C<BuildId> value. This attribute is used with fleets where
C<ComputeType> is "EC2".


=head2 BuildId => Str

A unique identifier for the build resource that is deployed on
instances in this fleet. This attribute is used with fleets where
C<ComputeType> is "EC2".


=head2 CertificateConfiguration => L<Paws::GameLift::CertificateConfiguration>

Determines whether a TLS/SSL certificate is generated for a fleet. This
feature must be enabled when creating the fleet. All instances in a
fleet share the same certificate.


=head2 ComputeType => Str

The type of compute resource used to host your game servers. You can
use your own compute resources with Amazon GameLift Anywhere or use
Amazon EC2 instances with managed Amazon GameLift.


=head2 CreationTime => Str

A time stamp indicating when this data object was created. Format is a
number expressed in Unix time as milliseconds (for example
C<"1469498468.057">).


=head2 Description => Str

A human-readable description of the fleet.


=head2 FleetArn => Str

The Amazon Resource Name (ARN
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html))
that is assigned to a Amazon GameLift fleet resource and uniquely
identifies it. ARNs are unique across all Regions. Format is
C<arn:aws:gamelift:E<lt>regionE<gt>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912>.
In a GameLift fleet ARN, the resource ID matches the C<FleetId> value.


=head2 FleetId => Str

A unique identifier for the fleet.


=head2 FleetType => Str

Indicates whether the fleet uses On-Demand or Spot instances. For more
information, see On-Demand versus Spot Instances
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-ec2-instances.html#gamelift-ec2-instances-spot).
This fleet property can't be changed after the fleet is created.


=head2 InstanceRoleArn => Str

A unique identifier for an IAM role that manages access to your Amazon
Web Services services. With an instance role ARN set, any application
that runs on an instance in this fleet can assume the role, including
install scripts, server processes, and daemons (background processes).
Create a role or look up a role's ARN by using the IAM dashboard
(https://console.aws.amazon.com/iam/) in the Amazon Web Services
Management Console. Learn more about using on-box credentials for your
game servers at Access external resources from a game server
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html).
This attribute is used with fleets where C<ComputeType> is C<EC2>.


=head2 InstanceRoleCredentialsProvider => Str

Indicates that fleet instances maintain a shared credentials file for
the IAM role defined in C<InstanceRoleArn>. Shared credentials allow
applications that are deployed with the game server executable to
communicate with other Amazon Web Services resources. This property is
used only when the game server is integrated with the server SDK
version 5.x. For more information about using shared credentials, see
Communicate with other Amazon Web Services resources from your fleets
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-resources.html).
This attribute is used with fleets where C<ComputeType> is C<EC2>.


=head2 InstanceType => Str

The Amazon EC2 instance type that the fleet uses. Instance type
determines the computing resources of each instance in the fleet,
including CPU, memory, storage, and networking capacity. See Amazon
Elastic Compute Cloud Instance Types
(http://aws.amazon.com/ec2/instance-types/) for detailed descriptions.
This attribute is used with fleets where C<ComputeType> is C<EC2>.


=head2 LogPaths => ArrayRef[Str|Undef]

B<This parameter is no longer used.> Game session log paths are now
defined using the Amazon GameLift server API C<ProcessReady()>
C<logParameters>. See more information in the Server API Reference
(https://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-sdk-server-api-ref.html#gamelift-sdk-server-api-ref-dataypes-process).


=head2 MetricGroups => ArrayRef[Str|Undef]

Name of a metric group that metrics for this fleet are added to. In
Amazon CloudWatch, you can view aggregated metrics for fleets that are
in a metric group. A fleet can be included in only one metric group at
a time. This attribute is used with fleets where C<ComputeType> is
C<EC2>.


=head2 Name => Str

A descriptive label that is associated with a fleet. Fleet names do not
need to be unique.


=head2 NewGameSessionProtectionPolicy => Str

The type of game session protection to set on all new instances that
are started in the fleet. This attribute is used with fleets where
C<ComputeType> is C<EC2>.

=over

=item *

B<NoProtection> -- The game session can be terminated during a
scale-down event.

=item *

B<FullProtection> -- If the game session is in an C<ACTIVE> status, it
cannot be terminated during a scale-down event.

=back



=head2 OperatingSystem => Str

The operating system of the fleet's computing resources. A fleet's
operating system is determined by the OS of the build or script that is
deployed on this fleet. This attribute is used with fleets where
C<ComputeType> is C<EC2>.

Amazon Linux 2 (AL2) will reach end of support on 6/30/2025. See more
details in the Amazon Linux 2 FAQs
(https://aws.amazon.com/amazon-linux-2/faqs/). For game servers that
are hosted on AL2 and use server SDK version 4.x for Amazon GameLift,
first update the game server build to server SDK 5.x, and then deploy
to AL2023 instances. See Migrate to server SDK version 5.
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html)


=head2 ResourceCreationLimitPolicy => L<Paws::GameLift::ResourceCreationLimitPolicy>




=head2 ScriptArn => Str

The Amazon Resource Name (ARN
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html))
associated with the GameLift script resource that is deployed on
instances in this fleet. In a GameLift script ARN, the resource ID
matches the C<ScriptId> value.


=head2 ScriptId => Str

A unique identifier for the Realtime script resource that is deployed
on instances in this fleet. This attribute is used with fleets where
C<ComputeType> is "EC2".


=head2 ServerLaunchParameters => Str

B<This parameter is no longer used.> Server launch parameters are now
defined using the fleet's runtime configuration. Requests that use this
parameter continue to be valid.


=head2 ServerLaunchPath => Str

B<This parameter is no longer used.> Server launch paths are now
defined using the fleet's RuntimeConfiguration
(https://docs.aws.amazon.com/gamelift/latest/apireference/RuntimeConfiguration.html).
Requests that use this parameter continue to be valid.


=head2 Status => Str

Current status of the fleet. Possible fleet statuses include the
following:

=over

=item *

NEW -- A new fleet resource has been defined and Amazon GameLift has
started creating the fleet. Desired instances is set to 1.

=item *

DOWNLOADING/VALIDATING/BUILDING -- Amazon GameLift is download the game
server build, running install scripts, and then validating the build
files. When complete, Amazon GameLift launches a fleet instance.

=item *

ACTIVATING -- Amazon GameLift is launching a game server process and
testing its connectivity with the Amazon GameLift service.

=item *

ACTIVE -- The fleet is now ready to host game sessions.

=item *

ERROR -- An error occurred when downloading, validating, building, or
activating the fleet.

=item *

DELETING -- Hosts are responding to a delete fleet request.

=item *

TERMINATED -- The fleet no longer exists.

=back



=head2 StoppedActions => ArrayRef[Str|Undef]

A list of fleet activity that has been suspended using StopFleetActions
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_StopFleetActions.html).
This includes fleet auto-scaling. This attribute is used with fleets
where C<ComputeType> is C<EC2>.


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

