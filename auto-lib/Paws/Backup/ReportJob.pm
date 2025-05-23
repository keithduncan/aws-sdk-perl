# Generated by default/object.tt
package Paws::Backup::ReportJob;
  use Moose;
  has CompletionTime => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has ReportDestination => (is => 'ro', isa => 'Paws::Backup::ReportDestination');
  has ReportJobId => (is => 'ro', isa => 'Str');
  has ReportPlanArn => (is => 'ro', isa => 'Str');
  has ReportTemplate => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ReportJob

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Backup::ReportJob object:

  $service_obj->Method(Att1 => { CompletionTime => $value, ..., StatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Backup::ReportJob object:

  $result = $service_obj->Method(...);
  $result->Att1->CompletionTime

=head1 DESCRIPTION

Contains detailed information about a report job. A report job compiles
a report based on a report plan and publishes it to Amazon S3.

=head1 ATTRIBUTES


=head2 CompletionTime => Str

The date and time that a report job is completed, in Unix format and
Coordinated Universal Time (UTC). The value of C<CompletionTime> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 CreationTime => Str

The date and time that a report job is created, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreationTime> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 ReportDestination => L<Paws::Backup::ReportDestination>

The S3 bucket name and S3 keys for the destination where the report job
publishes the report.


=head2 ReportJobId => Str

The identifier for a report job. A unique, randomly generated, Unicode,
UTF-8 encoded string that is at most 1,024 bytes long. Report job IDs
cannot be edited.


=head2 ReportPlanArn => Str

An Amazon Resource Name (ARN) that uniquely identifies a resource. The
format of the ARN depends on the resource type.


=head2 ReportTemplate => Str

Identifies the report template for the report. Reports are built using
a report template. The report templates are:

C<RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT |
BACKUP_JOB_REPORT | COPY_JOB_REPORT | RESTORE_JOB_REPORT>


=head2 Status => Str

The status of a report job. The statuses are:

C<CREATED | RUNNING | COMPLETED | FAILED>

C<COMPLETED> means that the report is available for your review at your
designated destination. If the status is C<FAILED>, review the
C<StatusMessage> for the reason.


=head2 StatusMessage => Str

A message explaining the status of the report job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

