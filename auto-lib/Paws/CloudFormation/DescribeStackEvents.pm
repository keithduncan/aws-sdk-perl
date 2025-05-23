
package Paws::CloudFormation::DescribeStackEvents;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DescribeStackEventsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackEventsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeStackEvents - Arguments for method DescribeStackEvents on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStackEvents on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DescribeStackEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStackEvents.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DescribeStackEventsOutput = $cloudformation->DescribeStackEvents(
      NextToken => 'MyNextToken',    # OPTIONAL
      StackName => 'MyStackName',    # OPTIONAL
    );

    # Results:
    my $NextToken   = $DescribeStackEventsOutput->NextToken;
    my $StackEvents = $DescribeStackEventsOutput->StackEvents;

    # Returns a L<Paws::CloudFormation::DescribeStackEventsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DescribeStackEvents>

=head1 ATTRIBUTES


=head2 NextToken => Str

A string that identifies the next page of events that you want to
retrieve.



=head2 StackName => Str

The name or the unique stack ID that's associated with the stack, which
aren't always interchangeable:

=over

=item *

Running stacks: You can specify either the stack's name or its unique
stack ID.

=item *

Deleted stacks: You must specify the unique stack ID.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStackEvents in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

