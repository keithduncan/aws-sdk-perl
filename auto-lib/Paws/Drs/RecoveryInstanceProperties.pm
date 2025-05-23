# Generated by default/object.tt
package Paws::Drs::RecoveryInstanceProperties;
  use Moose;
  has Cpus => (is => 'ro', isa => 'ArrayRef[Paws::Drs::CPU]', request_name => 'cpus', traits => ['NameInRequest']);
  has Disks => (is => 'ro', isa => 'ArrayRef[Paws::Drs::RecoveryInstanceDisk]', request_name => 'disks', traits => ['NameInRequest']);
  has IdentificationHints => (is => 'ro', isa => 'Paws::Drs::IdentificationHints', request_name => 'identificationHints', traits => ['NameInRequest']);
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedDateTime', traits => ['NameInRequest']);
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::Drs::NetworkInterface]', request_name => 'networkInterfaces', traits => ['NameInRequest']);
  has Os => (is => 'ro', isa => 'Paws::Drs::OS', request_name => 'os', traits => ['NameInRequest']);
  has RamBytes => (is => 'ro', isa => 'Int', request_name => 'ramBytes', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::RecoveryInstanceProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Drs::RecoveryInstanceProperties object:

  $service_obj->Method(Att1 => { Cpus => $value, ..., RamBytes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Drs::RecoveryInstanceProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->Cpus

=head1 DESCRIPTION

Properties of the Recovery Instance machine.

=head1 ATTRIBUTES


=head2 Cpus => ArrayRef[L<Paws::Drs::CPU>]

An array of CPUs.


=head2 Disks => ArrayRef[L<Paws::Drs::RecoveryInstanceDisk>]

An array of disks.


=head2 IdentificationHints => L<Paws::Drs::IdentificationHints>

Hints used to uniquely identify a machine.


=head2 LastUpdatedDateTime => Str

The date and time the Recovery Instance properties were last updated
on.


=head2 NetworkInterfaces => ArrayRef[L<Paws::Drs::NetworkInterface>]

An array of network interfaces.


=head2 Os => L<Paws::Drs::OS>

Operating system.


=head2 RamBytes => Int

The amount of RAM in bytes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

