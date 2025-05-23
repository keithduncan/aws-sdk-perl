# Generated by default/object.tt
package Paws::FSX::DeleteFileSystemLustreConfiguration;
  use Moose;
  has FinalBackupTags => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Tag]');
  has SkipFinalBackup => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DeleteFileSystemLustreConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::DeleteFileSystemLustreConfiguration object:

  $service_obj->Method(Att1 => { FinalBackupTags => $value, ..., SkipFinalBackup => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::DeleteFileSystemLustreConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->FinalBackupTags

=head1 DESCRIPTION

The configuration object for the Amazon FSx for Lustre file system
being deleted in the C<DeleteFileSystem> operation.

=head1 ATTRIBUTES


=head2 FinalBackupTags => ArrayRef[L<Paws::FSX::Tag>]

Use if C<SkipFinalBackup> is set to C<false>, and you want to apply an
array of tags to the final backup. If you have set the file system
property C<CopyTagsToBackups> to true, and you specify one or more
C<FinalBackupTags> when deleting a file system, Amazon FSx will not
copy any existing file system tags to the backup.


=head2 SkipFinalBackup => Bool

Set C<SkipFinalBackup> to false if you want to take a final backup of
the file system you are deleting. By default, Amazon FSx will not take
a final backup on your behalf when the C<DeleteFileSystem> operation is
invoked. (Default = true)

The C<fsx:CreateBackup> permission is required if you set
C<SkipFinalBackup> to C<false> in order to delete the file system and
take a final backup.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

