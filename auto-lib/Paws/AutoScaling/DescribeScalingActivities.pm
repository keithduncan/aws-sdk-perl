
package Paws::AutoScaling::DescribeScalingActivities;
  use Moose;
  has ActivityIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has IncludeDeletedGroups => (is => 'ro', isa => 'Bool');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScalingActivities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::ActivitiesType');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeScalingActivitiesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeScalingActivities - Arguments for method DescribeScalingActivities on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeScalingActivities on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method DescribeScalingActivities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeScalingActivities.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
  # To describe the scaling activities for an Auto Scaling group
  # This example describes the scaling activities for the specified Auto Scaling
  # group.
    my $ActivitiesType = $autoscaling->DescribeScalingActivities(
      'AutoScalingGroupName' => 'my-auto-scaling-group' );

    # Results:
    my $Activities = $ActivitiesType->Activities;

    # Returns a L<Paws::AutoScaling::ActivitiesType> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/DescribeScalingActivities>

=head1 ATTRIBUTES


=head2 ActivityIds => ArrayRef[Str|Undef]

The activity IDs of the desired scaling activities. If you omit this
property, all activities for the past six weeks are described. If
unknown activities are requested, they are ignored with no error. If
you specify an Auto Scaling group, the results are limited to that
group.

Array Members: Maximum number of 50 IDs.



=head2 AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 IncludeDeletedGroups => Bool

Indicates whether to include scaling activity from deleted Auto Scaling
groups.



=head2 MaxRecords => Int

The maximum number of items to return with this call. The default value
is C<100> and the maximum value is C<100>.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeScalingActivities in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

