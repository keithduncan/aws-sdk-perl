
package Paws::Lambda::GetFunction;
  use Moose;
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);
  has Qualifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Qualifier');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFunction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions/{FunctionName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::GetFunctionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetFunction - Arguments for method GetFunction on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFunction on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method GetFunction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFunction.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
 # To get a Lambda function
 # The following example returns code and configuration details for version 1 of
 # a function named my-function.
    my $GetFunctionResponse = $lambda->GetFunction(
      'FunctionName' => 'my-function',
      'Qualifier'    => 1
    );

    # Results:
    my $Code          = $GetFunctionResponse->Code;
    my $Configuration = $GetFunctionResponse->Configuration;
    my $Tags          = $GetFunctionResponse->Tags;

    # Returns a L<Paws::Lambda::GetFunctionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/GetFunction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FunctionName => Str

The name or ARN of the Lambda function, version, or alias.

B<Name formats>

=over

=item *

B<Function name> E<ndash> C<my-function> (name-only), C<my-function:v1>
(with alias).

=item *

B<Function ARN> E<ndash>
C<arn:aws:lambda:us-west-2:123456789012:function:my-function>.

=item *

B<Partial ARN> E<ndash> C<123456789012:function:my-function>.

=back

You can append a version number or alias to any of the formats. The
length constraint applies only to the full ARN. If you specify only the
function name, it is limited to 64 characters in length.



=head2 Qualifier => Str

Specify a version or alias to get details about a published version of
the function.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFunction in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

