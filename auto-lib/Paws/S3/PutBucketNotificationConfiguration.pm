
package Paws::S3::PutBucketNotificationConfiguration;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has ExpectedBucketOwner => (is => 'ro', isa => 'Str', header_name => 'x-amz-expected-bucket-owner', traits => ['ParamInHeader']);
  has NotificationConfiguration => (is => 'ro', isa => 'Paws::S3::NotificationConfiguration', traits => ['ParamInBody'], required => 1);
  has SkipDestinationValidation => (is => 'ro', isa => 'Bool', header_name => 'x-amz-skip-destination-validation', traits => ['ParamInHeader']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketNotificationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?notification');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketNotificationConfiguration - Arguments for method PutBucketNotificationConfiguration on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketNotificationConfiguration on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method PutBucketNotificationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketNotificationConfiguration.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
  # Set notification configuration for a bucket
  # The following example sets notification configuration on a bucket to publish
  # the object created events to an SNS topic.
    $s3->PutBucketNotificationConfiguration(
      'Bucket'                    => 'examplebucket',
      'NotificationConfiguration' => {
        'TopicConfigurations' => [

          {
            'Events'   => ['s3:ObjectCreated:*'],
            'TopicArn' =>
              'arn:aws:sns:us-west-2:123456789012:s3-notification-topic'
          }
        ]
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/PutBucketNotificationConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket.



=head2 ExpectedBucketOwner => Str

The account ID of the expected bucket owner. If the account ID that you
provide does not match the actual owner of the bucket, the request
fails with the HTTP status code C<403 Forbidden> (access denied).



=head2 B<REQUIRED> NotificationConfiguration => L<Paws::S3::NotificationConfiguration>





=head2 SkipDestinationValidation => Bool

Skips validation of Amazon SQS, Amazon SNS, and Lambda destinations.
True or false value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketNotificationConfiguration in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

