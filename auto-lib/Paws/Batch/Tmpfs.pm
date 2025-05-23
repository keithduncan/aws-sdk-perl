# Generated by default/object.tt
package Paws::Batch::Tmpfs;
  use Moose;
  has ContainerPath => (is => 'ro', isa => 'Str', request_name => 'containerPath', traits => ['NameInRequest'], required => 1);
  has MountOptions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'mountOptions', traits => ['NameInRequest']);
  has Size => (is => 'ro', isa => 'Int', request_name => 'size', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::Tmpfs

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::Tmpfs object:

  $service_obj->Method(Att1 => { ContainerPath => $value, ..., Size => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::Tmpfs object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerPath

=head1 DESCRIPTION

The container path, mount options, and size of the C<tmpfs> mount.

This object isn't applicable to jobs that are running on Fargate
resources.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContainerPath => Str

The absolute file path in the container where the C<tmpfs> volume is
mounted.


=head2 MountOptions => ArrayRef[Str|Undef]

The list of C<tmpfs> volume mount options.

Valid values: "C<defaults>" | "C<ro>" | "C<rw>" | "C<suid>" |
"C<nosuid>" | "C<dev>" | "C<nodev>" | "C<exec>" | "C<noexec>" |
"C<sync>" | "C<async>" | "C<dirsync>" | "C<remount>" | "C<mand>" |
"C<nomand>" | "C<atime>" | "C<noatime>" | "C<diratime>" |
"C<nodiratime>" | "C<bind>" | "C<rbind" | "unbindable" | "runbindable"
| "private" | "rprivate" | "shared" | "rshared" | "slave" | "rslave" |
"relatime>" | "C<norelatime>" | "C<strictatime>" | "C<nostrictatime>" |
"C<mode>" | "C<uid>" | "C<gid>" | "C<nr_inodes>" | "C<nr_blocks>" |
"C<mpol>"


=head2 B<REQUIRED> Size => Int

The size (in MiB) of the C<tmpfs> volume.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

