# Generated by default/object.tt
package Paws::SecurityHub::AwsCodeBuildProjectLogsConfigDetails;
  use Moose;
  has CloudWatchLogs => (is => 'ro', isa => 'Paws::SecurityHub::AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails');
  has S3Logs => (is => 'ro', isa => 'Paws::SecurityHub::AwsCodeBuildProjectLogsConfigS3LogsDetails');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsCodeBuildProjectLogsConfigDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsCodeBuildProjectLogsConfigDetails object:

  $service_obj->Method(Att1 => { CloudWatchLogs => $value, ..., S3Logs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsCodeBuildProjectLogsConfigDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchLogs

=head1 DESCRIPTION

Information about logs for the build project.

=head1 ATTRIBUTES


=head2 CloudWatchLogs => L<Paws::SecurityHub::AwsCodeBuildProjectLogsConfigCloudWatchLogsDetails>

Information about CloudWatch Logs for the build project.


=head2 S3Logs => L<Paws::SecurityHub::AwsCodeBuildProjectLogsConfigS3LogsDetails>

Information about logs built to an S3 bucket for a build project.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

