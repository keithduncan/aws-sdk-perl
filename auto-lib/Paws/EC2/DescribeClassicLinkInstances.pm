
package Paws::EC2::DescribeClassicLinkInstances;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'InstanceId' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClassicLinkInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeClassicLinkInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeClassicLinkInstances - Arguments for method DescribeClassicLinkInstances on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeClassicLinkInstances on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeClassicLinkInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeClassicLinkInstances.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeClassicLinkInstancesResult = $ec2->DescribeClassicLinkInstances(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      InstanceIds => [ 'MyInstanceId', ... ],    # OPTIONAL
      MaxResults  => 1,                          # OPTIONAL
      NextToken   => 'MyString',                 # OPTIONAL
    );

    # Results:
    my $Instances = $DescribeClassicLinkInstancesResult->Instances;
    my $NextToken = $DescribeClassicLinkInstancesResult->NextToken;

    # Returns a L<Paws::EC2::DescribeClassicLinkInstancesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeClassicLinkInstances>

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

C<group-id> - The ID of a VPC security group that's associated with the
instance.

=item *

C<instance-id> - The ID of the instance.

=item *

C<tag> - The key/value combination of a tag assigned to the resource.
Use the tag key in the filter name and the tag value as the filter
value. For example, to find all resources that have a tag with the key
C<Owner> and the value C<TeamA>, specify C<tag:Owner> for the filter
name and C<TeamA> for the filter value.

=item *

C<tag-key> - The key of a tag assigned to the resource. Use this filter
to find all resources assigned a tag with a specific key, regardless of
the tag value.

=item *

C<vpc-id> - The ID of the VPC to which the instance is linked.

=back




=head2 InstanceIds => ArrayRef[Str|Undef]

The instance IDs. Must be instances linked to a VPC through
ClassicLink.



=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).

Constraint: If the value is greater than 1000, we return only 1000
items.



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeClassicLinkInstances in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

