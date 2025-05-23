
package Paws::CloudFormation::DescribeStacks;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStacks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DescribeStacksOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStacksResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeStacks - Arguments for method DescribeStacks on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStacks on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DescribeStacks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStacks.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DescribeStacksOutput = $cloudformation->DescribeStacks(
      NextToken => 'MyNextToken',    # OPTIONAL
      StackName => 'MyStackName',    # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeStacksOutput->NextToken;
    my $Stacks    = $DescribeStacksOutput->Stacks;

    # Returns a L<Paws::CloudFormation::DescribeStacksOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DescribeStacks>

=head1 ATTRIBUTES


=head2 NextToken => Str

A string that identifies the next page of stacks that you want to
retrieve.



=head2 StackName => Str

If you don't pass a parameter to C<StackName>, the API returns a
response that describes all resources in the account, which can impact
performance. This requires C<ListStacks> and C<DescribeStacks>
permissions.

Consider using the ListStacks API if you're not passing a parameter to
C<StackName>.

The IAM policy below can be added to IAM policies when you want to
limit resource-level permissions and avoid returning a response when no
parameter is sent in the request:

{ "Version": "2012-10-17", "Statement": [{ "Effect": "Deny", "Action":
"cloudformation:DescribeStacks", "NotResource":
"arn:aws:cloudformation:*:*:stack/*/*" }] }

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

This class forms part of L<Paws>, documenting arguments for method DescribeStacks in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

