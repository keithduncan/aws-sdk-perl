
package Paws::CloudFormation::DescribeStackResources;
  use Moose;
  has LogicalResourceId => (is => 'ro', isa => 'Str');
  has PhysicalResourceId => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DescribeStackResourcesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackResourcesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeStackResources - Arguments for method DescribeStackResources on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStackResources on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DescribeStackResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStackResources.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DescribeStackResourcesOutput = $cloudformation->DescribeStackResources(
      LogicalResourceId  => 'MyLogicalResourceId',     # OPTIONAL
      PhysicalResourceId => 'MyPhysicalResourceId',    # OPTIONAL
      StackName          => 'MyStackName',             # OPTIONAL
    );

    # Results:
    my $StackResources = $DescribeStackResourcesOutput->StackResources;

    # Returns a L<Paws::CloudFormation::DescribeStackResourcesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DescribeStackResources>

=head1 ATTRIBUTES


=head2 LogicalResourceId => Str

The logical name of the resource as specified in the template.



=head2 PhysicalResourceId => Str

The name or unique identifier that corresponds to a physical instance
ID of a resource supported by CloudFormation.

For example, for an Amazon Elastic Compute Cloud (EC2) instance,
C<PhysicalResourceId> corresponds to the C<InstanceId>. You can pass
the EC2 C<InstanceId> to C<DescribeStackResources> to find which stack
the instance belongs to and what other resources are part of the stack.

Required: Conditional. If you don't specify C<PhysicalResourceId>, you
must specify C<StackName>.



=head2 StackName => Str

The name or the unique stack ID that is associated with the stack,
which aren't always interchangeable:

=over

=item *

Running stacks: You can specify either the stack's name or its unique
stack ID.

=item *

Deleted stacks: You must specify the unique stack ID.

=back

Required: Conditional. If you don't specify C<StackName>, you must
specify C<PhysicalResourceId>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStackResources in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

