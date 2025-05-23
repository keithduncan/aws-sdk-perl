# Generated by default/object.tt
package Paws::M2::EfsStorageConfiguration;
  use Moose;
  has FileSystemId => (is => 'ro', isa => 'Str', request_name => 'file-system-id', traits => ['NameInRequest'], required => 1);
  has MountPoint => (is => 'ro', isa => 'Str', request_name => 'mount-point', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::EfsStorageConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::M2::EfsStorageConfiguration object:

  $service_obj->Method(Att1 => { FileSystemId => $value, ..., MountPoint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::M2::EfsStorageConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->FileSystemId

=head1 DESCRIPTION

Defines the storage configuration for an Amazon EFS file system.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileSystemId => Str

The file system identifier.


=head2 B<REQUIRED> MountPoint => Str

The mount point for the file system.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

