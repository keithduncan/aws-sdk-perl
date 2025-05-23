# Generated by default/object.tt
package Paws::CloudTrail::DataResource;
  use Moose;
  has Type => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::DataResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudTrail::DataResource object:

  $service_obj->Method(Att1 => { Type => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudTrail::DataResource object:

  $result = $service_obj->Method(...);
  $result->Att1->Type

=head1 DESCRIPTION

You can configure the C<DataResource> in an C<EventSelector> to log
data events for the following three resource types:

=over

=item *

C<AWS::DynamoDB::Table>

=item *

C<AWS::Lambda::Function>

=item *

C<AWS::S3::Object>

=back

To log data events for all other resource types including objects
stored in directory buckets
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/directory-buckets-overview.html),
you must use AdvancedEventSelectors
(https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_AdvancedEventSelector.html).
You must also use C<AdvancedEventSelectors> if you want to filter on
the C<eventName> field.

Configure the C<DataResource> to specify the resource type and resource
ARNs for which you want to log data events.

The total number of allowed data resources is 250. This number can be
distributed between 1 and 5 event selectors, but the total cannot
exceed 250 across all selectors for the trail.

The following example demonstrates how logging works when you configure
logging of all data events for a general purpose bucket named
C<amzn-s3-demo-bucket1>. In this example, the CloudTrail user specified
an empty prefix, and the option to log both C<Read> and C<Write> data
events.

=over

=item 1.

A user uploads an image file to C<amzn-s3-demo-bucket1>.

=item 2.

The C<PutObject> API operation is an Amazon S3 object-level API. It is
recorded as a data event in CloudTrail. Because the CloudTrail user
specified an S3 bucket with an empty prefix, events that occur on any
object in that bucket are logged. The trail processes and logs the
event.

=item 3.

A user uploads an object to an Amazon S3 bucket named
C<arn:aws:s3:::amzn-s3-demo-bucket1>.

=item 4.

The C<PutObject> API operation occurred for an object in an S3 bucket
that the CloudTrail user didn't specify for the trail. The trail
doesnE<rsquo>t log the event.

=back

The following example demonstrates how logging works when you configure
logging of Lambda data events for a Lambda function named
I<MyLambdaFunction>, but not for all Lambda functions.

=over

=item 1.

A user runs a script that includes a call to the I<MyLambdaFunction>
function and the I<MyOtherLambdaFunction> function.

=item 2.

The C<Invoke> API operation on I<MyLambdaFunction> is an Lambda API. It
is recorded as a data event in CloudTrail. Because the CloudTrail user
specified logging data events for I<MyLambdaFunction>, any invocations
of that function are logged. The trail processes and logs the event.

=item 3.

The C<Invoke> API operation on I<MyOtherLambdaFunction> is an Lambda
API. Because the CloudTrail user did not specify logging data events
for all Lambda functions, the C<Invoke> operation for
I<MyOtherLambdaFunction> does not match the function specified for the
trail. The trail doesnE<rsquo>t log the event.

=back


=head1 ATTRIBUTES


=head2 Type => Str

The resource type in which you want to log data events. You can specify
the following I<basic> event selector resource types:

=over

=item *

C<AWS::DynamoDB::Table>

=item *

C<AWS::Lambda::Function>

=item *

C<AWS::S3::Object>

=back

Additional resource types are available through I<advanced> event
selectors. For more information, see AdvancedEventSelector
(https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_AdvancedEventSelector.html).


=head2 Values => ArrayRef[Str|Undef]

An array of Amazon Resource Name (ARN) strings or partial ARN strings
for the specified resource type.

=over

=item *

To log data events for all objects in all S3 buckets in your Amazon Web
Services account, specify the prefix as C<arn:aws:s3>.

This also enables logging of data event activity performed by any user
or role in your Amazon Web Services account, even if that activity is
performed on a bucket that belongs to another Amazon Web Services
account.

=item *

To log data events for all objects in an S3 bucket, specify the bucket
and an empty object prefix such as
C<arn:aws:s3:::amzn-s3-demo-bucket1/>. The trail logs data events for
all objects in this S3 bucket.

=item *

To log data events for specific objects, specify the S3 bucket and
object prefix such as
C<arn:aws:s3:::amzn-s3-demo-bucket1/example-images>. The trail logs
data events for objects in this S3 bucket that match the prefix.

=item *

To log data events for all Lambda functions in your Amazon Web Services
account, specify the prefix as C<arn:aws:lambda>.

This also enables logging of C<Invoke> activity performed by any user
or role in your Amazon Web Services account, even if that activity is
performed on a function that belongs to another Amazon Web Services
account.

=item *

To log data events for a specific Lambda function, specify the function
ARN.

Lambda function ARNs are exact. For example, if you specify a function
ARN I<arn:aws:lambda:us-west-2:111111111111:function:helloworld>, data
events will only be logged for
I<arn:aws:lambda:us-west-2:111111111111:function:helloworld>. They will
not be logged for
I<arn:aws:lambda:us-west-2:111111111111:function:helloworld2>.

=item *

To log data events for all DynamoDB tables in your Amazon Web Services
account, specify the prefix as C<arn:aws:dynamodb>.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

