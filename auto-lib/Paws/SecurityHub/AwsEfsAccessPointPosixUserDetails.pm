# Generated by default/object.tt
package Paws::SecurityHub::AwsEfsAccessPointPosixUserDetails;
  use Moose;
  has Gid => (is => 'ro', isa => 'Str');
  has SecondaryGids => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Uid => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsEfsAccessPointPosixUserDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsEfsAccessPointPosixUserDetails object:

  $service_obj->Method(Att1 => { Gid => $value, ..., Uid => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsEfsAccessPointPosixUserDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Gid

=head1 DESCRIPTION

Provides details for all file system operations using this Amazon EFS
access point.

=head1 ATTRIBUTES


=head2 Gid => Str

The POSIX group ID used for all file system operations using this
access point.


=head2 SecondaryGids => ArrayRef[Str|Undef]

Secondary POSIX group IDs used for all file system operations using
this access point.


=head2 Uid => Str

The POSIX user ID used for all file system operations using this access
point.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

