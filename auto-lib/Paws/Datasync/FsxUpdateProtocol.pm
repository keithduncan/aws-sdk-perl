# Generated by default/object.tt
package Paws::Datasync::FsxUpdateProtocol;
  use Moose;
  has NFS => (is => 'ro', isa => 'Paws::Datasync::FsxProtocolNfs');
  has SMB => (is => 'ro', isa => 'Paws::Datasync::FsxUpdateProtocolSmb');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::FsxUpdateProtocol

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Datasync::FsxUpdateProtocol object:

  $service_obj->Method(Att1 => { NFS => $value, ..., SMB => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Datasync::FsxUpdateProtocol object:

  $result = $service_obj->Method(...);
  $result->Att1->NFS

=head1 DESCRIPTION

Specifies the data transfer protocol that DataSync uses to access your
Amazon FSx file system.

You can't update the Network File System (NFS) protocol configuration
for FSx for ONTAP locations. DataSync currently only supports NFS
version 3 with this location type.

=head1 ATTRIBUTES


=head2 NFS => L<Paws::Datasync::FsxProtocolNfs>




=head2 SMB => L<Paws::Datasync::FsxUpdateProtocolSmb>

Specifies the Server Message Block (SMB) protocol configuration that
DataSync uses to access your FSx for ONTAP file system's storage
virtual machine (SVM).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

