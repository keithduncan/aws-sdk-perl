# Generated by default/object.tt
package Paws::FraudDetector::BatchPrediction;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CompletionTime => (is => 'ro', isa => 'Str', request_name => 'completionTime', traits => ['NameInRequest']);
  has DetectorName => (is => 'ro', isa => 'Str', request_name => 'detectorName', traits => ['NameInRequest']);
  has DetectorVersion => (is => 'ro', isa => 'Str', request_name => 'detectorVersion', traits => ['NameInRequest']);
  has EventTypeName => (is => 'ro', isa => 'Str', request_name => 'eventTypeName', traits => ['NameInRequest']);
  has FailureReason => (is => 'ro', isa => 'Str', request_name => 'failureReason', traits => ['NameInRequest']);
  has IamRoleArn => (is => 'ro', isa => 'Str', request_name => 'iamRoleArn', traits => ['NameInRequest']);
  has InputPath => (is => 'ro', isa => 'Str', request_name => 'inputPath', traits => ['NameInRequest']);
  has JobId => (is => 'ro', isa => 'Str', request_name => 'jobId', traits => ['NameInRequest']);
  has LastHeartbeatTime => (is => 'ro', isa => 'Str', request_name => 'lastHeartbeatTime', traits => ['NameInRequest']);
  has OutputPath => (is => 'ro', isa => 'Str', request_name => 'outputPath', traits => ['NameInRequest']);
  has ProcessedRecordsCount => (is => 'ro', isa => 'Int', request_name => 'processedRecordsCount', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has TotalRecordsCount => (is => 'ro', isa => 'Int', request_name => 'totalRecordsCount', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::BatchPrediction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FraudDetector::BatchPrediction object:

  $service_obj->Method(Att1 => { Arn => $value, ..., TotalRecordsCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FraudDetector::BatchPrediction object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

The batch prediction details.

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of batch prediction job.


=head2 CompletionTime => Str

Timestamp of when the batch prediction job completed.


=head2 DetectorName => Str

The name of the detector.


=head2 DetectorVersion => Str

The detector version.


=head2 EventTypeName => Str

The name of the event type.


=head2 FailureReason => Str

The reason a batch prediction job failed.


=head2 IamRoleArn => Str

The ARN of the IAM role to use for this job request.


=head2 InputPath => Str

The Amazon S3 location of your training file.


=head2 JobId => Str

The job ID for the batch prediction.


=head2 LastHeartbeatTime => Str

Timestamp of most recent heartbeat indicating the batch prediction job
was making progress.


=head2 OutputPath => Str

The Amazon S3 location of your output file.


=head2 ProcessedRecordsCount => Int

The number of records processed by the batch prediction job.


=head2 StartTime => Str

Timestamp of when the batch prediction job started.


=head2 Status => Str

The batch prediction status.


=head2 TotalRecordsCount => Int

The total number of records in the batch prediction job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FraudDetector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

