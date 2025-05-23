# Generated by default/object.tt
package Paws::BackupGateway::VirtualMachine;
  use Moose;
  has HostName => (is => 'ro', isa => 'Str');
  has HypervisorId => (is => 'ro', isa => 'Str');
  has LastBackupDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Path => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::VirtualMachine

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::BackupGateway::VirtualMachine object:

  $service_obj->Method(Att1 => { HostName => $value, ..., ResourceArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::BackupGateway::VirtualMachine object:

  $result = $service_obj->Method(...);
  $result->Att1->HostName

=head1 DESCRIPTION

A virtual machine that is on a hypervisor.

=head1 ATTRIBUTES


=head2 HostName => Str

The host name of the virtual machine.


=head2 HypervisorId => Str

The ID of the virtual machine's hypervisor.


=head2 LastBackupDate => Str

The most recent date a virtual machine was backed up, in Unix format
and UTC time.


=head2 Name => Str

The name of the virtual machine.


=head2 Path => Str

The path of the virtual machine.


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the virtual machine. For example,
C<arn:aws:backup-gateway:us-west-1:0000000000000:vm/vm-0000ABCDEFGIJKL>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::BackupGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

