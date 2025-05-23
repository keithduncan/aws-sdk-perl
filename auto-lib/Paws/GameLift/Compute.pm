# Generated by default/object.tt
package Paws::GameLift::Compute;
  use Moose;
  has ComputeArn => (is => 'ro', isa => 'Str');
  has ComputeName => (is => 'ro', isa => 'Str');
  has ComputeStatus => (is => 'ro', isa => 'Str');
  has ContainerAttributes => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::ContainerAttribute]');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DnsName => (is => 'ro', isa => 'Str');
  has FleetArn => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str');
  has GameLiftAgentEndpoint => (is => 'ro', isa => 'Str');
  has GameLiftServiceSdkEndpoint => (is => 'ro', isa => 'Str');
  has GameServerContainerGroupDefinitionArn => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has IpAddress => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Str');
  has OperatingSystem => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::Compute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::Compute object:

  $service_obj->Method(Att1 => { ComputeArn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::Compute object:

  $result = $service_obj->Method(...);
  $result->Att1->ComputeArn

=head1 DESCRIPTION

An Amazon GameLift compute resource for hosting your game servers.
Computes in an Amazon GameLift fleet differs depending on the fleet's
compute type property as follows:

=over

=item *

For managed EC2 fleets, a compute is an EC2 instance.

=item *

For Anywhere fleets, a compute is a computing resource that you provide
and is registered to the fleet.

=back


=head1 ATTRIBUTES


=head2 ComputeArn => Str

The ARN that is assigned to a compute resource and uniquely identifies
it. ARNs are unique across locations. Instances in managed EC2 fleets
are not assigned a Compute ARN.


=head2 ComputeName => Str

A descriptive label for the compute resource. For instances in a
managed EC2 fleet, the compute name is the same value as the
C<InstanceId> ID.


=head2 ComputeStatus => Str

Current status of the compute. A compute must have an C<ACTIVE> status
to host game sessions.


=head2 ContainerAttributes => ArrayRef[L<Paws::GameLift::ContainerAttribute>]

A set of attributes for each container in the compute.


=head2 CreationTime => Str

A time stamp indicating when this data object was created. Format is a
number expressed in Unix time as milliseconds (for example
C<"1469498468.057">).


=head2 DnsName => Str

The DNS name of a compute resource. Amazon GameLift requires a DNS name
or IP address for a compute.


=head2 FleetArn => Str

The Amazon Resource Name (ARN) of the fleet that the compute belongs
to.


=head2 FleetId => Str

A unique identifier for the fleet that the compute belongs to.


=head2 GameLiftAgentEndpoint => Str

The endpoint of the Amazon GameLift Agent.


=head2 GameLiftServiceSdkEndpoint => Str

The Amazon GameLift SDK endpoint connection for a registered compute
resource in an Anywhere fleet. The game servers on the compute use this
endpoint to connect to the Amazon GameLift service.


=head2 GameServerContainerGroupDefinitionArn => Str

The game server container group definition for the compute.


=head2 InstanceId => Str

The C<InstanceID> of the EC2 instance that is hosting the compute.


=head2 IpAddress => Str

The IP address of a compute resource. Amazon GameLift requires a DNS
name or IP address for a compute.


=head2 Location => Str

The name of the custom location you added to the fleet that this
compute resource resides in.


=head2 OperatingSystem => Str

The type of operating system on the compute resource.

Amazon Linux 2 (AL2) will reach end of support on 6/30/2025. See more
details in the Amazon Linux 2 FAQs
(https://aws.amazon.com/amazon-linux-2/faqs/). For game servers that
are hosted on AL2 and use server SDK version 4.x for Amazon GameLift,
first update the game server build to server SDK 5.x, and then deploy
to AL2023 instances. See Migrate to server SDK version 5.
(https://docs.aws.amazon.com/gamelift/latest/developerguide/reference-serversdk5-migration.html)


=head2 Type => Str

The Amazon EC2 instance type that the fleet uses. For registered
computes in an Amazon GameLift Anywhere fleet, this property is empty.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

