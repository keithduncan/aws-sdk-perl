package Paws::EC2::Host;
  use Moose;
  has AllocationTime => (is => 'ro', isa => 'Str', request_name => 'allocationTime', traits => ['NameInRequest']);
  has AllowsMultipleInstanceTypes => (is => 'ro', isa => 'Str', request_name => 'allowsMultipleInstanceTypes', traits => ['NameInRequest']);
  has AssetId => (is => 'ro', isa => 'Str', request_name => 'assetId', traits => ['NameInRequest']);
  has AutoPlacement => (is => 'ro', isa => 'Str', request_name => 'autoPlacement', traits => ['NameInRequest']);
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has AvailabilityZoneId => (is => 'ro', isa => 'Str', request_name => 'availabilityZoneId', traits => ['NameInRequest']);
  has AvailableCapacity => (is => 'ro', isa => 'Paws::EC2::AvailableCapacity', request_name => 'availableCapacity', traits => ['NameInRequest']);
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest']);
  has HostId => (is => 'ro', isa => 'Str', request_name => 'hostId', traits => ['NameInRequest']);
  has HostMaintenance => (is => 'ro', isa => 'Str', request_name => 'hostMaintenance', traits => ['NameInRequest']);
  has HostProperties => (is => 'ro', isa => 'Paws::EC2::HostProperties', request_name => 'hostProperties', traits => ['NameInRequest']);
  has HostRecovery => (is => 'ro', isa => 'Str', request_name => 'hostRecovery', traits => ['NameInRequest']);
  has HostReservationId => (is => 'ro', isa => 'Str', request_name => 'hostReservationId', traits => ['NameInRequest']);
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::EC2::HostInstance]', request_name => 'instances', traits => ['NameInRequest']);
  has MemberOfServiceLinkedResourceGroup => (is => 'ro', isa => 'Bool', request_name => 'memberOfServiceLinkedResourceGroup', traits => ['NameInRequest']);
  has OutpostArn => (is => 'ro', isa => 'Str', request_name => 'outpostArn', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has ReleaseTime => (is => 'ro', isa => 'Str', request_name => 'releaseTime', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Host

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Host object:

  $service_obj->Method(Att1 => { AllocationTime => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Host object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocationTime

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AllocationTime => Str

The time that the Dedicated Host was allocated.


=head2 AllowsMultipleInstanceTypes => Str

Indicates whether the Dedicated Host supports multiple instance types
of the same instance family. If the value is C<on>, the Dedicated Host
supports multiple instance types in the instance family. If the value
is C<off>, the Dedicated Host supports a single instance type only.


=head2 AssetId => Str

The ID of the Outpost hardware asset on which the Dedicated Host is
allocated.


=head2 AutoPlacement => Str

Whether auto-placement is on or off.


=head2 AvailabilityZone => Str

The Availability Zone of the Dedicated Host.


=head2 AvailabilityZoneId => Str

The ID of the Availability Zone in which the Dedicated Host is
allocated.


=head2 AvailableCapacity => L<Paws::EC2::AvailableCapacity>

Information about the instances running on the Dedicated Host.


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see Ensuring
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


=head2 HostId => Str

The ID of the Dedicated Host.


=head2 HostMaintenance => Str

Indicates whether host maintenance is enabled or disabled for the
Dedicated Host.


=head2 HostProperties => L<Paws::EC2::HostProperties>

The hardware specifications of the Dedicated Host.


=head2 HostRecovery => Str

Indicates whether host recovery is enabled or disabled for the
Dedicated Host.


=head2 HostReservationId => Str

The reservation ID of the Dedicated Host. This returns a C<null>
response if the Dedicated Host doesn't have an associated reservation.


=head2 Instances => ArrayRef[L<Paws::EC2::HostInstance>]

The IDs and instance type that are currently running on the Dedicated
Host.


=head2 MemberOfServiceLinkedResourceGroup => Bool

Indicates whether the Dedicated Host is in a host resource group. If
B<memberOfServiceLinkedResourceGroup> is C<true>, the host is in a host
resource group; otherwise, it is not.


=head2 OutpostArn => Str

The Amazon Resource Name (ARN) of the Amazon Web Services Outpost on
which the Dedicated Host is allocated.


=head2 OwnerId => Str

The ID of the Amazon Web Services account that owns the Dedicated Host.


=head2 ReleaseTime => Str

The time that the Dedicated Host was released.


=head2 State => Str

The Dedicated Host's state.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Any tags assigned to the Dedicated Host.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
