package Paws::EC2::Placement;
  use Moose;
  has Affinity => (is => 'ro', isa => 'Str', request_name => 'affinity', traits => ['NameInRequest']);
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has GroupId => (is => 'ro', isa => 'Str', request_name => 'groupId', traits => ['NameInRequest']);
  has GroupName => (is => 'ro', isa => 'Str', request_name => 'groupName', traits => ['NameInRequest']);
  has HostId => (is => 'ro', isa => 'Str', request_name => 'hostId', traits => ['NameInRequest']);
  has HostResourceGroupArn => (is => 'ro', isa => 'Str', request_name => 'hostResourceGroupArn', traits => ['NameInRequest']);
  has PartitionNumber => (is => 'ro', isa => 'Int', request_name => 'partitionNumber', traits => ['NameInRequest']);
  has SpreadDomain => (is => 'ro', isa => 'Str', request_name => 'spreadDomain', traits => ['NameInRequest']);
  has Tenancy => (is => 'ro', isa => 'Str', request_name => 'tenancy', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Placement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Placement object:

  $service_obj->Method(Att1 => { Affinity => $value, ..., Tenancy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Placement object:

  $result = $service_obj->Method(...);
  $result->Att1->Affinity

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Affinity => Str

The affinity setting for the instance on the Dedicated Host.

This parameter is not supported for CreateFleet
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet)
or ImportInstance
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html).


=head2 AvailabilityZone => Str

The Availability Zone of the instance.

If not specified, an Availability Zone will be automatically chosen for
you based on the load balancing criteria for the Region.

This parameter is not supported for CreateFleet
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet).


=head2 GroupId => Str

The ID of the placement group that the instance is in. If you specify
C<GroupId>, you can't specify C<GroupName>.


=head2 GroupName => Str

The name of the placement group that the instance is in. If you specify
C<GroupName>, you can't specify C<GroupId>.


=head2 HostId => Str

The ID of the Dedicated Host on which the instance resides.

This parameter is not supported for CreateFleet
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet)
or ImportInstance
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html).


=head2 HostResourceGroupArn => Str

The ARN of the host resource group in which to launch the instances.

If you specify this parameter, either omit the B<Tenancy> parameter or
set it to C<host>.

This parameter is not supported for CreateFleet
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet).


=head2 PartitionNumber => Int

The number of the partition that the instance is in. Valid only if the
placement group strategy is set to C<partition>.

This parameter is not supported for CreateFleet
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet).


=head2 SpreadDomain => Str

Reserved for future use.


=head2 Tenancy => Str

The tenancy of the instance. An instance with a tenancy of C<dedicated>
runs on single-tenant hardware.

This parameter is not supported for CreateFleet
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFleet).
The C<host> tenancy is not supported for ImportInstance
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportInstance.html)
or for T3 instances that are configured for the C<unlimited> CPU credit
option.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
