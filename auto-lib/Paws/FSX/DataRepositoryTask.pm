# Generated by default/object.tt
package Paws::FSX::DataRepositoryTask;
  use Moose;
  has CapacityToRelease => (is => 'ro', isa => 'Int');
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has EndTime => (is => 'ro', isa => 'Str');
  has FailureDetails => (is => 'ro', isa => 'Paws::FSX::DataRepositoryTaskFailureDetails');
  has FileCacheId => (is => 'ro', isa => 'Str');
  has FileSystemId => (is => 'ro', isa => 'Str');
  has Lifecycle => (is => 'ro', isa => 'Str', required => 1);
  has Paths => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ReleaseConfiguration => (is => 'ro', isa => 'Paws::FSX::ReleaseConfiguration');
  has Report => (is => 'ro', isa => 'Paws::FSX::CompletionReport');
  has ResourceARN => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Paws::FSX::DataRepositoryTaskStatus');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Tag]');
  has TaskId => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DataRepositoryTask

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::DataRepositoryTask object:

  $service_obj->Method(Att1 => { CapacityToRelease => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::DataRepositoryTask object:

  $result = $service_obj->Method(...);
  $result->Att1->CapacityToRelease

=head1 DESCRIPTION

A description of the data repository task.

=over

=item *

You use import and export data repository tasks to perform bulk
transfer operations between an Amazon FSx for Lustre file system and a
linked data repository.

=item *

You use release data repository tasks to release files that have been
exported to a linked S3 bucket from your Amazon FSx for Lustre file
system.

=item *

An Amazon File Cache resource uses a task to automatically release
files from the cache.

=back

To learn more about data repository tasks, see Data Repository Tasks
(https://docs.aws.amazon.com/fsx/latest/LustreGuide/data-repository-tasks.html).

=head1 ATTRIBUTES


=head2 CapacityToRelease => Int

Specifies the amount of data to release, in GiB, by an Amazon File
Cache AUTO_RELEASE_DATA task that automatically releases files from the
cache.


=head2 B<REQUIRED> CreationTime => Str




=head2 EndTime => Str

The time the system completed processing the task, populated after the
task is complete.


=head2 FailureDetails => L<Paws::FSX::DataRepositoryTaskFailureDetails>

Failure message describing why the task failed, it is populated only
when C<Lifecycle> is set to C<FAILED>.


=head2 FileCacheId => Str

The system-generated, unique ID of the cache.


=head2 FileSystemId => Str

The globally unique ID of the file system.


=head2 B<REQUIRED> Lifecycle => Str

The lifecycle status of the data repository task, as follows:

=over

=item *

C<PENDING> - The task has not started.

=item *

C<EXECUTING> - The task is in process.

=item *

C<FAILED> - The task was not able to be completed. For example, there
may be files the task failed to process. The
DataRepositoryTaskFailureDetails property provides more information
about task failures.

=item *

C<SUCCEEDED> - The task has completed successfully.

=item *

C<CANCELED> - The task was canceled and it did not complete.

=item *

C<CANCELING> - The task is in process of being canceled.

=back

You cannot delete an FSx for Lustre file system if there are data
repository tasks for the file system in the C<PENDING> or C<EXECUTING>
states. Please retry when the data repository task is finished (with a
status of C<CANCELED>, C<SUCCEEDED>, or C<FAILED>). You can use the
DescribeDataRepositoryTask action to monitor the task status. Contact
the FSx team if you need to delete your file system immediately.


=head2 Paths => ArrayRef[Str|Undef]

An array of paths that specify the data for the data repository task to
process. For example, in an EXPORT_TO_REPOSITORY task, the paths
specify which data to export to the linked data repository.

(Default) If C<Paths> is not specified, Amazon FSx uses the file system
root directory.


=head2 ReleaseConfiguration => L<Paws::FSX::ReleaseConfiguration>

The configuration that specifies the last accessed time criteria for
files that will be released from an Amazon FSx for Lustre file system.


=head2 Report => L<Paws::FSX::CompletionReport>




=head2 ResourceARN => Str




=head2 StartTime => Str

The time the system began processing the task.


=head2 Status => L<Paws::FSX::DataRepositoryTaskStatus>

Provides the status of the number of files that the task has processed
successfully and failed to process.


=head2 Tags => ArrayRef[L<Paws::FSX::Tag>]




=head2 B<REQUIRED> TaskId => Str

The system-generated, unique 17-digit ID of the data repository task.


=head2 B<REQUIRED> Type => Str

The type of data repository task.

=over

=item *

C<EXPORT_TO_REPOSITORY> tasks export from your Amazon FSx for Lustre
file system to a linked data repository.

=item *

C<IMPORT_METADATA_FROM_REPOSITORY> tasks import metadata changes from a
linked S3 bucket to your Amazon FSx for Lustre file system.

=item *

C<RELEASE_DATA_FROM_FILESYSTEM> tasks release files in your Amazon FSx
for Lustre file system that have been exported to a linked S3 bucket
and that meet your specified release criteria.

=item *

C<AUTO_RELEASE_DATA> tasks automatically release files from an Amazon
File Cache resource.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

