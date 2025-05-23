# Generated by default/object.tt
package Paws::MigrationHubStrategy::ImportFileTaskInformation;
  use Moose;
  has CompletionTime => (is => 'ro', isa => 'Str', request_name => 'completionTime', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has ImportName => (is => 'ro', isa => 'Str', request_name => 'importName', traits => ['NameInRequest']);
  has InputS3Bucket => (is => 'ro', isa => 'Str', request_name => 'inputS3Bucket', traits => ['NameInRequest']);
  has InputS3Key => (is => 'ro', isa => 'Str', request_name => 'inputS3Key', traits => ['NameInRequest']);
  has NumberOfRecordsFailed => (is => 'ro', isa => 'Int', request_name => 'numberOfRecordsFailed', traits => ['NameInRequest']);
  has NumberOfRecordsSuccess => (is => 'ro', isa => 'Int', request_name => 'numberOfRecordsSuccess', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusReportS3Bucket => (is => 'ro', isa => 'Str', request_name => 'statusReportS3Bucket', traits => ['NameInRequest']);
  has StatusReportS3Key => (is => 'ro', isa => 'Str', request_name => 'statusReportS3Key', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::ImportFileTaskInformation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MigrationHubStrategy::ImportFileTaskInformation object:

  $service_obj->Method(Att1 => { CompletionTime => $value, ..., StatusReportS3Key => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MigrationHubStrategy::ImportFileTaskInformation object:

  $result = $service_obj->Method(...);
  $result->Att1->CompletionTime

=head1 DESCRIPTION

Information about the import file tasks you request.

=head1 ATTRIBUTES


=head2 CompletionTime => Str

The time that the import task completes.


=head2 Id => Str

The ID of the import file task.


=head2 ImportName => Str

The name of the import task given in C<StartImportFileTask>.


=head2 InputS3Bucket => Str

The S3 bucket where the import file is located.


=head2 InputS3Key => Str

The Amazon S3 key name of the import file.


=head2 NumberOfRecordsFailed => Int

The number of records that failed to be imported.


=head2 NumberOfRecordsSuccess => Int

The number of records successfully imported.


=head2 StartTime => Str

Start time of the import task.


=head2 Status => Str

Status of import file task.


=head2 StatusReportS3Bucket => Str

The S3 bucket name for status report of import task.


=head2 StatusReportS3Key => Str

The Amazon S3 key name for status report of import task. The report
contains details about whether each record imported successfully or why
it did not.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MigrationHubStrategy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

