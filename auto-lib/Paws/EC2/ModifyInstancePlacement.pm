
package Paws::EC2::ModifyInstancePlacement;
  use Moose;
  has Affinity => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'affinity' );
  has GroupId => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has HostId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'hostId' );
  has HostResourceGroupArn => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceId' , required => 1);
  has PartitionNumber => (is => 'ro', isa => 'Int');
  has Tenancy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tenancy' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstancePlacement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyInstancePlacementResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstancePlacement - Arguments for method ModifyInstancePlacement on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyInstancePlacement on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyInstancePlacement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyInstancePlacement.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyInstancePlacementResult = $ec2->ModifyInstancePlacement(
      InstanceId           => 'MyInstanceId',
      Affinity             => 'default',                 # OPTIONAL
      GroupId              => 'MyPlacementGroupId',      # OPTIONAL
      GroupName            => 'MyPlacementGroupName',    # OPTIONAL
      HostId               => 'MyDedicatedHostId',       # OPTIONAL
      HostResourceGroupArn => 'MyString',                # OPTIONAL
      PartitionNumber      => 1,                         # OPTIONAL
      Tenancy              => 'default',                 # OPTIONAL
    );

    # Results:
    my $Return = $ModifyInstancePlacementResult->Return;

    # Returns a L<Paws::EC2::ModifyInstancePlacementResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyInstancePlacement>

=head1 ATTRIBUTES


=head2 Affinity => Str

The affinity setting for the instance. For more information, see Host
affinity
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/how-dedicated-hosts-work.html#dedicated-hosts-affinity)
in the I<Amazon EC2 User Guide>.

Valid values are: C<"default">, C<"host">

=head2 GroupId => Str

The Group Id of a placement group. You must specify the Placement Group
B<Group Id> to launch an instance in a shared placement group.



=head2 GroupName => Str

The name of the placement group in which to place the instance. For
spread placement groups, the instance must have a tenancy of
C<default>. For cluster and partition placement groups, the instance
must have a tenancy of C<default> or C<dedicated>.

To remove an instance from a placement group, specify an empty string
("").



=head2 HostId => Str

The ID of the Dedicated Host with which to associate the instance.



=head2 HostResourceGroupArn => Str

The ARN of the host resource group in which to place the instance. The
instance must have a tenancy of C<host> to specify this parameter.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance that you are modifying.



=head2 PartitionNumber => Int

The number of the partition in which to place the instance. Valid only
if the placement group strategy is set to C<partition>.



=head2 Tenancy => Str

The tenancy for the instance.

For T3 instances, you must launch the instance on a Dedicated Host to
use a tenancy of C<host>. You can't change the tenancy from C<host> to
C<dedicated> or C<default>. Attempting to make one of these unsupported
tenancy changes results in an C<InvalidRequest> error code.

Valid values are: C<"default">, C<"dedicated">, C<"host">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyInstancePlacement in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

