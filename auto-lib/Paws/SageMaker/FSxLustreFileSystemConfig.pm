# Generated by default/object.tt
package Paws::SageMaker::FSxLustreFileSystemConfig;
  use Moose;
  has FileSystemId => (is => 'ro', isa => 'Str', required => 1);
  has FileSystemPath => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::FSxLustreFileSystemConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::FSxLustreFileSystemConfig object:

  $service_obj->Method(Att1 => { FileSystemId => $value, ..., FileSystemPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::FSxLustreFileSystemConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->FileSystemId

=head1 DESCRIPTION

The settings for assigning a custom Amazon FSx for Lustre file system
to a user profile or space for an Amazon SageMaker Domain.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FileSystemId => Str

The globally unique, 17-digit, ID of the file system, assigned by
Amazon FSx for Lustre.


=head2 FileSystemPath => Str

The path to the file system directory that is accessible in Amazon
SageMaker Studio. Permitted users can access only this directory and
below.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

