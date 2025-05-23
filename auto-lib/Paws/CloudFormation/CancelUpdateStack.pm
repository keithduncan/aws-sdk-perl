
package Paws::CloudFormation::CancelUpdateStack;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelUpdateStack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::CancelUpdateStack - Arguments for method CancelUpdateStack on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelUpdateStack on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method CancelUpdateStack.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelUpdateStack.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    $cloudformation->CancelUpdateStack(
      StackName          => 'MyStackName',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/CancelUpdateStack>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique identifier for this C<CancelUpdateStack> request. Specify this
token if you plan to retry requests so that CloudFormation knows that
you're not attempting to cancel an update on a stack with the same
name. You might retry C<CancelUpdateStack> requests to ensure that
CloudFormation successfully received them.



=head2 B<REQUIRED> StackName => Str

If you don't pass a parameter to C<StackName>, the API returns a
response that describes all resources in the account.

The IAM policy below can be added to IAM policies when you want to
limit resource-level permissions and avoid returning a response when no
parameter is sent in the request:

C<{ "Version": "2012-10-17", "Statement": [{ "Effect": "Deny",
"Action": "cloudformation:DescribeStacks", "NotResource":
"arn:aws:cloudformation:*:*:stack/*/*" }] }>

The name or the unique stack ID that's associated with the stack.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelUpdateStack in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

