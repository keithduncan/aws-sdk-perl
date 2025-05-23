
package Paws::AutoScaling::DescribeAutoScalingGroups;
  use Moose;
  has AutoScalingGroupNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::Filter]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::AutoScalingGroupsType');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAutoScalingGroupsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeAutoScalingGroups - Arguments for method DescribeAutoScalingGroups on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAutoScalingGroups on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method DescribeAutoScalingGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAutoScalingGroups.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To describe an Auto Scaling group
    # This example describes the specified Auto Scaling group.
    my $AutoScalingGroupsType = $autoscaling->DescribeAutoScalingGroups(
      'AutoScalingGroupNames' => ['my-auto-scaling-group'] );

    # Results:
    my $AutoScalingGroups = $AutoScalingGroupsType->AutoScalingGroups;

    # Returns a L<Paws::AutoScaling::AutoScalingGroupsType> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/DescribeAutoScalingGroups>

=head1 ATTRIBUTES


=head2 AutoScalingGroupNames => ArrayRef[Str|Undef]

The names of the Auto Scaling groups. By default, you can only specify
up to 50 names. You can optionally increase this limit using the
C<MaxRecords> property.

If you omit this property, all Auto Scaling groups are described.



=head2 Filters => ArrayRef[L<Paws::AutoScaling::Filter>]

One or more filters to limit the results based on specific tags.



=head2 MaxRecords => Int

The maximum number of items to return with this call. The default value
is C<50> and the maximum value is C<100>.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAutoScalingGroups in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

