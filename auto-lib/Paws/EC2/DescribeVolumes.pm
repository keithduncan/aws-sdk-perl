
package Paws::EC2::DescribeVolumes;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has VolumeIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'VolumeId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVolumes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeVolumesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVolumes - Arguments for method DescribeVolumes on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVolumes on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeVolumes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVolumes.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To describe all volumes
    # This example describes all of your volumes in the default region.
    my $DescribeVolumesResult = $ec2->DescribeVolumes();

    # Results:
    my $NextToken = $DescribeVolumesResult->NextToken;
    my $Volumes   = $DescribeVolumesResult->Volumes;

# Returns a L<Paws::EC2::DescribeVolumesResult> object.
# To describe volumes that are attached to a specific instance
# This example describes all volumes that are both attached to the instance with
# the ID i-1234567890abcdef0 and set to delete when the instance terminates.
    my $DescribeVolumesResult = $ec2->DescribeVolumes(
      'Filters' => [

        {
          'Name'   => 'attachment.instance-id',
          'Values' => ['i-1234567890abcdef0']
        },

        {
          'Name'   => 'attachment.delete-on-termination',
          'Values' => ['true']
        }
      ]
    );

    # Results:
    my $Volumes = $DescribeVolumesResult->Volumes;

    # Returns a L<Paws::EC2::DescribeVolumesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeVolumes>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

The filters.

=over

=item *

C<attachment.attach-time> - The time stamp when the attachment
initiated.

=item *

C<attachment.delete-on-termination> - Whether the volume is deleted on
instance termination.

=item *

C<attachment.device> - The device name specified in the block device
mapping (for example, C</dev/sda1>).

=item *

C<attachment.instance-id> - The ID of the instance the volume is
attached to.

=item *

C<attachment.status> - The attachment state (C<attaching> | C<attached>
| C<detaching>).

=item *

C<availability-zone> - The Availability Zone in which the volume was
created.

=item *

C<create-time> - The time stamp when the volume was created.

=item *

C<encrypted> - Indicates whether the volume is encrypted (C<true> |
C<false>)

=item *

C<fast-restored> - Indicates whether the volume was created from a
snapshot that is enabled for fast snapshot restore (C<true> |
C<false>).

=item *

C<multi-attach-enabled> - Indicates whether the volume is enabled for
Multi-Attach (C<true> | C<false>)

=item *

C<operator.managed> - A Boolean that indicates whether this is a
managed volume.

=item *

C<operator.principal> - The principal that manages the volume. Only
valid for managed volumes, where C<managed> is C<true>.

=item *

C<size> - The size of the volume, in GiB.

=item *

C<snapshot-id> - The snapshot from which the volume was created.

=item *

C<status> - The state of the volume (C<creating> | C<available> |
C<in-use> | C<deleting> | C<deleted> | C<error>).

=item *

C<tag>:E<lt>keyE<gt> - The key/value combination of a tag assigned to
the resource. Use the tag key in the filter name and the tag value as
the filter value. For example, to find all resources that have a tag
with the key C<Owner> and the value C<TeamA>, specify C<tag:Owner> for
the filter name and C<TeamA> for the filter value.

=item *

C<tag-key> - The key of a tag assigned to the resource. Use this filter
to find all resources assigned a tag with a specific key, regardless of
the tag value.

=item *

C<volume-id> - The volume ID.

=item *

C<volume-type> - The Amazon EBS volume type (C<gp2> | C<gp3> | C<io1> |
C<io2> | C<st1> | C<sc1>| C<standard>)

=back




=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.



=head2 VolumeIds => ArrayRef[Str|Undef]

The volume IDs. If not specified, then all volumes are included in the
response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeVolumes in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

