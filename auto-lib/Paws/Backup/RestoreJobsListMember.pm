# Generated by default/object.tt
package Paws::Backup::RestoreJobsListMember;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has BackupSizeInBytes => (is => 'ro', isa => 'Int');
  has CompletionDate => (is => 'ro', isa => 'Str');
  has CreatedBy => (is => 'ro', isa => 'Paws::Backup::RestoreJobCreator');
  has CreatedResourceArn => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has DeletionStatus => (is => 'ro', isa => 'Str');
  has DeletionStatusMessage => (is => 'ro', isa => 'Str');
  has ExpectedCompletionTimeMinutes => (is => 'ro', isa => 'Int');
  has IamRoleArn => (is => 'ro', isa => 'Str');
  has PercentDone => (is => 'ro', isa => 'Str');
  has RecoveryPointArn => (is => 'ro', isa => 'Str');
  has RecoveryPointCreationDate => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has RestoreJobId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has ValidationStatus => (is => 'ro', isa => 'Str');
  has ValidationStatusMessage => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::RestoreJobsListMember

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Backup::RestoreJobsListMember object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., ValidationStatusMessage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Backup::RestoreJobsListMember object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Contains metadata about a restore job.

=head1 ATTRIBUTES


=head2 AccountId => Str

The account ID that owns the restore job.


=head2 BackupSizeInBytes => Int

The size, in bytes, of the restored resource.


=head2 CompletionDate => Str

The date and time a job to restore a recovery point is completed, in
Unix format and Coordinated Universal Time (UTC). The value of
C<CompletionDate> is accurate to milliseconds. For example, the value
1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 CreatedBy => L<Paws::Backup::RestoreJobCreator>

Contains identifying information about the creation of a restore job.


=head2 CreatedResourceArn => Str

An Amazon Resource Name (ARN) that uniquely identifies a resource. The
format of the ARN depends on the resource type.


=head2 CreationDate => Str

The date and time a restore job is created, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreationDate> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 DeletionStatus => Str

This notes the status of the data generated by the restore test. The
status may be C<Deleting>, C<Failed>, or C<Successful>.


=head2 DeletionStatusMessage => Str

This describes the restore job deletion status.


=head2 ExpectedCompletionTimeMinutes => Int

The amount of time in minutes that a job restoring a recovery point is
expected to take.


=head2 IamRoleArn => Str

The IAM role ARN used to create the target recovery point; for example,
C<arn:aws:iam::123456789012:role/S3Access>.


=head2 PercentDone => Str

Contains an estimated percentage complete of a job at the time the job
status was queried.


=head2 RecoveryPointArn => Str

An ARN that uniquely identifies a recovery point; for example,
C<arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45>.


=head2 RecoveryPointCreationDate => Str

The date on which a recovery point was created.


=head2 ResourceType => Str

The resource type of the listed restore jobs; for example, an Amazon
Elastic Block Store (Amazon EBS) volume or an Amazon Relational
Database Service (Amazon RDS) database. For Windows Volume Shadow Copy
Service (VSS) backups, the only supported resource type is Amazon EC2.


=head2 RestoreJobId => Str

Uniquely identifies the job that restores a recovery point.


=head2 Status => Str

A status code specifying the state of the job initiated by Backup to
restore a recovery point.


=head2 StatusMessage => Str

A detailed message explaining the status of the job to restore a
recovery point.


=head2 ValidationStatus => Str

The status of validation run on the indicated restore job.


=head2 ValidationStatusMessage => Str

This describes the status of validation run on the indicated restore
job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

