# Generated by default/object.tt
package Paws::FSX::FileSystemEndpoints;
  use Moose;
  has Intercluster => (is => 'ro', isa => 'Paws::FSX::FileSystemEndpoint');
  has Management => (is => 'ro', isa => 'Paws::FSX::FileSystemEndpoint');

1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::FileSystemEndpoints

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::FileSystemEndpoints object:

  $service_obj->Method(Att1 => { Intercluster => $value, ..., Management => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::FileSystemEndpoints object:

  $result = $service_obj->Method(...);
  $result->Att1->Intercluster

=head1 DESCRIPTION

An Amazon FSx for NetApp ONTAP file system has the following endpoints
that are used to access data or to manage the file system using the
NetApp ONTAP CLI, REST API, or NetApp SnapMirror.

=head1 ATTRIBUTES


=head2 Intercluster => L<Paws::FSX::FileSystemEndpoint>

An endpoint for managing your file system by setting up NetApp
SnapMirror with other ONTAP systems.


=head2 Management => L<Paws::FSX::FileSystemEndpoint>

An endpoint for managing your file system using the NetApp ONTAP CLI
and NetApp ONTAP API.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

