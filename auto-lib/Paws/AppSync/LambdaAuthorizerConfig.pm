# Generated by default/object.tt
package Paws::AppSync::LambdaAuthorizerConfig;
  use Moose;
  has AuthorizerResultTtlInSeconds => (is => 'ro', isa => 'Int', request_name => 'authorizerResultTtlInSeconds', traits => ['NameInRequest']);
  has AuthorizerUri => (is => 'ro', isa => 'Str', request_name => 'authorizerUri', traits => ['NameInRequest'], required => 1);
  has IdentityValidationExpression => (is => 'ro', isa => 'Str', request_name => 'identityValidationExpression', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::LambdaAuthorizerConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::LambdaAuthorizerConfig object:

  $service_obj->Method(Att1 => { AuthorizerResultTtlInSeconds => $value, ..., IdentityValidationExpression => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::LambdaAuthorizerConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthorizerResultTtlInSeconds

=head1 DESCRIPTION

A C<LambdaAuthorizerConfig> specifies how to authorize AppSync API
access when using the C<AWS_LAMBDA> authorizer mode. Be aware that an
AppSync API can have only one Lambda authorizer configured at a time.

=head1 ATTRIBUTES


=head2 AuthorizerResultTtlInSeconds => Int

The number of seconds a response should be cached for. The default is 0
seconds, which disables caching. If you don't specify a value for
C<authorizerResultTtlInSeconds>, the default value is used. The maximum
value is one hour (3600 seconds). The Lambda function can override this
by returning a C<ttlOverride> key in its response.


=head2 B<REQUIRED> AuthorizerUri => Str

The Amazon Resource Name (ARN) of the Lambda function to be called for
authorization. This can be a standard Lambda ARN, a version ARN
(C<.../v3>), or an alias ARN.

B<Note>: This Lambda function must have the following resource-based
policy assigned to it. When configuring Lambda authorizers in the
console, this is done for you. To use the Command Line Interface (CLI),
run the following:

C<aws lambda add-permission --function-name
"arn:aws:lambda:us-east-2:111122223333:function:my-function"
--statement-id "appsync" --principal appsync.amazonaws.com --action
lambda:InvokeFunction>


=head2 IdentityValidationExpression => Str

A regular expression for validation of tokens before the Lambda
function is called.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

