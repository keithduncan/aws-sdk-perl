
package Paws::CloudFormation::DescribeStackResource;
  use Moose;
  has LogicalResourceId => (is => 'ro', isa => 'Str', required => 1);
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStackResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DescribeStackResourceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStackResourceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeStackResource - Arguments for method DescribeStackResource on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStackResource on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DescribeStackResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStackResource.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DescribeStackResourceOutput = $cloudformation->DescribeStackResource(
      LogicalResourceId => 'MyLogicalResourceId',
      StackName         => 'MyStackName',

    );

    # Results:
    my $StackResourceDetail = $DescribeStackResourceOutput->StackResourceDetail;

    # Returns a L<Paws::CloudFormation::DescribeStackResourceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DescribeStackResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogicalResourceId => Str

The logical name of the resource as specified in the template.



=head2 B<REQUIRED> StackName => Str

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

This class forms part of L<Paws>, documenting arguments for method DescribeStackResource in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

