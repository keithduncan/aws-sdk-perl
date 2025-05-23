
package Paws::Rekognition::StartContentModeration;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has JobTag => (is => 'ro', isa => 'Str');
  has MinConfidence => (is => 'ro', isa => 'Num');
  has NotificationChannel => (is => 'ro', isa => 'Paws::Rekognition::NotificationChannel');
  has Video => (is => 'ro', isa => 'Paws::Rekognition::Video', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartContentModeration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::StartContentModerationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::StartContentModeration - Arguments for method StartContentModeration on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartContentModeration on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method StartContentModeration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartContentModeration.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $StartContentModerationResponse = $rekognition->StartContentModeration(
      Video => {
        S3Object => {
          Bucket  => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
          Name    => 'MyS3ObjectName',       # min: 1, max: 1024; OPTIONAL
          Version => 'MyS3ObjectVersion',    # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },
      ClientRequestToken  => 'MyClientRequestToken',    # OPTIONAL
      JobTag              => 'MyJobTag',                # OPTIONAL
      MinConfidence       => 1.0,                       # OPTIONAL
      NotificationChannel => {
        RoleArn     => 'MyRoleArn',
        SNSTopicArn => 'MySNSTopicArn',

      },                                                # OPTIONAL
    );

    # Results:
    my $JobId = $StartContentModerationResponse->JobId;

    # Returns a L<Paws::Rekognition::StartContentModerationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/StartContentModeration>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Idempotent token used to identify the start request. If you use the
same token with multiple C<StartContentModeration> requests, the same
C<JobId> is returned. Use C<ClientRequestToken> to prevent the same job
from being accidently started more than once.



=head2 JobTag => Str

An identifier you specify that's returned in the completion
notification that's published to your Amazon Simple Notification
Service topic. For example, you can use C<JobTag> to group related jobs
and identify them in the completion notification.



=head2 MinConfidence => Num

Specifies the minimum confidence that Amazon Rekognition must have in
order to return a moderated content label. Confidence represents how
certain Amazon Rekognition is that the moderated content is correctly
identified. 0 is the lowest confidence. 100 is the highest confidence.
Amazon Rekognition doesn't return any moderated content labels with a
confidence level lower than this specified value. If you don't specify
C<MinConfidence>, C<GetContentModeration> returns labels with
confidence values greater than or equal to 50 percent.



=head2 NotificationChannel => L<Paws::Rekognition::NotificationChannel>

The Amazon SNS topic ARN that you want Amazon Rekognition Video to
publish the completion status of the content analysis to. The Amazon
SNS topic must have a topic name that begins with I<AmazonRekognition>
if you are using the AmazonRekognitionServiceRole permissions policy to
access the topic.



=head2 B<REQUIRED> Video => L<Paws::Rekognition::Video>

The video in which you want to detect inappropriate, unwanted, or
offensive content. The video must be stored in an Amazon S3 bucket.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartContentModeration in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

