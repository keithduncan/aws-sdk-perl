# Generated by default/object.tt
package Paws::Drs::Disk;
  use Moose;
  has Bytes => (is => 'ro', isa => 'Int', request_name => 'bytes', traits => ['NameInRequest']);
  has DeviceName => (is => 'ro', isa => 'Str', request_name => 'deviceName', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::Disk

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Drs::Disk object:

  $service_obj->Method(Att1 => { Bytes => $value, ..., DeviceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Drs::Disk object:

  $result = $service_obj->Method(...);
  $result->Att1->Bytes

=head1 DESCRIPTION

An object representing a data storage device on a server.

=head1 ATTRIBUTES


=head2 Bytes => Int

The amount of storage on the disk in bytes.


=head2 DeviceName => Str

The disk or device name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

