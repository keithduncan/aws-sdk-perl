package Paws::EC2::VerifiedAccessLogOptions;
  use Moose;
  has CloudWatchLogs => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessLogCloudWatchLogsDestinationOptions');
  has IncludeTrustContext => (is => 'ro', isa => 'Bool');
  has KinesisDataFirehose => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessLogKinesisDataFirehoseDestinationOptions');
  has LogVersion => (is => 'ro', isa => 'Str');
  has S3 => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessLogS3DestinationOptions');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VerifiedAccessLogOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VerifiedAccessLogOptions object:

  $service_obj->Method(Att1 => { CloudWatchLogs => $value, ..., S3 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VerifiedAccessLogOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchLogs

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CloudWatchLogs => L<Paws::EC2::VerifiedAccessLogCloudWatchLogsDestinationOptions>

Sends Verified Access logs to CloudWatch Logs.


=head2 IncludeTrustContext => Bool

Indicates whether to include trust data sent by trust providers in the
logs.


=head2 KinesisDataFirehose => L<Paws::EC2::VerifiedAccessLogKinesisDataFirehoseDestinationOptions>

Sends Verified Access logs to Kinesis.


=head2 LogVersion => Str

The logging version.

Valid values: C<ocsf-0.1> | C<ocsf-1.0.0-rc.2>


=head2 S3 => L<Paws::EC2::VerifiedAccessLogS3DestinationOptions>

Sends Verified Access logs to Amazon S3.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
