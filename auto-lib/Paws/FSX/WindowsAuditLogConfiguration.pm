# Generated by default/object.tt
package Paws::FSX::WindowsAuditLogConfiguration;
  use Moose;
  has AuditLogDestination => (is => 'ro', isa => 'Str');
  has FileAccessAuditLogLevel => (is => 'ro', isa => 'Str', required => 1);
  has FileShareAccessAuditLogLevel => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::WindowsAuditLogConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::WindowsAuditLogConfiguration object:

  $service_obj->Method(Att1 => { AuditLogDestination => $value, ..., FileShareAccessAuditLogLevel => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::WindowsAuditLogConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AuditLogDestination

=head1 DESCRIPTION

The configuration that Amazon FSx for Windows File Server uses to audit
and log user accesses of files, folders, and file shares on the Amazon
FSx for Windows File Server file system. For more information, see File
access auditing
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/file-access-auditing.html).

=head1 ATTRIBUTES


=head2 AuditLogDestination => Str

The Amazon Resource Name (ARN) for the destination of the audit logs.
The destination can be any Amazon CloudWatch Logs log group ARN or
Amazon Kinesis Data Firehose delivery stream ARN.

The name of the Amazon CloudWatch Logs log group must begin with the
C</aws/fsx> prefix. The name of the Amazon Kinesis Data Firehose
delivery stream must begin with the C<aws-fsx> prefix.

The destination ARN (either CloudWatch Logs log group or Kinesis Data
Firehose delivery stream) must be in the same Amazon Web Services
partition, Amazon Web Services Region, and Amazon Web Services account
as your Amazon FSx file system.


=head2 B<REQUIRED> FileAccessAuditLogLevel => Str

Sets which attempt type is logged by Amazon FSx for file and folder
accesses.

=over

=item *

C<SUCCESS_ONLY> - only successful attempts to access files or folders
are logged.

=item *

C<FAILURE_ONLY> - only failed attempts to access files or folders are
logged.

=item *

C<SUCCESS_AND_FAILURE> - both successful attempts and failed attempts
to access files or folders are logged.

=item *

C<DISABLED> - access auditing of files and folders is turned off.

=back



=head2 B<REQUIRED> FileShareAccessAuditLogLevel => Str

Sets which attempt type is logged by Amazon FSx for file share
accesses.

=over

=item *

C<SUCCESS_ONLY> - only successful attempts to access file shares are
logged.

=item *

C<FAILURE_ONLY> - only failed attempts to access file shares are
logged.

=item *

C<SUCCESS_AND_FAILURE> - both successful attempts and failed attempts
to access file shares are logged.

=item *

C<DISABLED> - access auditing of file shares is turned off.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

