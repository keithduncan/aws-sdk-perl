# Generated by default/object.tt
package Paws::Pipes::PipeLogConfiguration;
  use Moose;
  has CloudwatchLogsLogDestination => (is => 'ro', isa => 'Paws::Pipes::CloudwatchLogsLogDestination');
  has FirehoseLogDestination => (is => 'ro', isa => 'Paws::Pipes::FirehoseLogDestination');
  has IncludeExecutionData => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Level => (is => 'ro', isa => 'Str');
  has S3LogDestination => (is => 'ro', isa => 'Paws::Pipes::S3LogDestination');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pipes::PipeLogConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pipes::PipeLogConfiguration object:

  $service_obj->Method(Att1 => { CloudwatchLogsLogDestination => $value, ..., S3LogDestination => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pipes::PipeLogConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudwatchLogsLogDestination

=head1 DESCRIPTION

The logging configuration settings for the pipe.

=head1 ATTRIBUTES


=head2 CloudwatchLogsLogDestination => L<Paws::Pipes::CloudwatchLogsLogDestination>

The Amazon CloudWatch Logs logging configuration settings for the pipe.


=head2 FirehoseLogDestination => L<Paws::Pipes::FirehoseLogDestination>

The Amazon Data Firehose logging configuration settings for the pipe.


=head2 IncludeExecutionData => ArrayRef[Str|Undef]

Whether the execution data (specifically, the C<payload>,
C<awsRequest>, and C<awsResponse> fields) is included in the log
messages for this pipe.

This applies to all log destinations for the pipe.

For more information, see Including execution data in logs
(https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes-logs.html#eb-pipes-logs-execution-data)
in the I<Amazon EventBridge User Guide>.


=head2 Level => Str

The level of logging detail to include. This applies to all log
destinations for the pipe.


=head2 S3LogDestination => L<Paws::Pipes::S3LogDestination>

The Amazon S3 logging configuration settings for the pipe.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pipes>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

