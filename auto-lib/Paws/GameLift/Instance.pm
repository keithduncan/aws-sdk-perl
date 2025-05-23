# Generated by default/object.tt
package Paws::GameLift::Instance;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has DnsName => (is => 'ro', isa => 'Str');
  has FleetArn => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has IpAddress => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Str');
  has OperatingSystem => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::Instance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::Instance object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::Instance object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Represents a virtual computing instance that runs game server processes
and hosts game sessions. In Amazon GameLift, one or more instances make
up a managed EC2 fleet.

=head1 ATTRIBUTES


=head2 CreationTime => Str

A time stamp indicating when this data object was created. Format is a
number expressed in Unix time as milliseconds (for example
C<"1469498468.057">).


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
that is assigned to a Amazon GameLift fleet resource and uniquely
identifies it. ARNs are unique across all Regions. Format is
C<arn:aws:gamelift:E<lt>regionE<gt>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912>.


=head2 FleetId => Str

A unique identifier for the fleet that the instance belongs to.


=head2 InstanceId => Str

A unique identifier for the instance.


=head2 IpAddress => Str

IP address that is assigned to the instance.


=head2 Location => Str

The fleet location of the instance, expressed as an Amazon Web Services
Region code, such as C<us-west-2>.


=head2 OperatingSystem => Str

Operating system that is running on this EC2 instance.

Amazon Linux 2 (AL2) will reach end of support on 6/30/2025. See more
details in the Amazon Linux 2 FAQs
(https://aws.amazon.com/amazon-linux-2/faqs/). For game servers that
are hosted on AL2 and use server SDK version 4.x for Amazon GameLift,
first update the game server build to server SDK 5.x, and then deploy
to AL2023 instances. See Migrate to server SDK version 5.
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html)


=head2 Status => Str

Current status of the instance. Possible statuses include the
following:

=over

=item *

B<PENDING> -- The instance is in the process of being created and
launching server processes as defined in the fleet's run-time
configuration.

=item *

B<ACTIVE> -- The instance has been successfully created and at least
one server process has successfully launched and reported back to
Amazon GameLift that it is ready to host a game session. The instance
is now considered ready to host game sessions.

=item *

B<TERMINATING> -- The instance is in the process of shutting down. This
may happen to reduce capacity during a scaling down event or to recycle
resources in the event of a problem.

=back



=head2 Type => Str

EC2 instance type that defines the computing resources of this
instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

