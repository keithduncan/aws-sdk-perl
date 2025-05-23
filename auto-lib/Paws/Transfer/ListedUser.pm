# Generated by default/object.tt
package Paws::Transfer::ListedUser;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has HomeDirectory => (is => 'ro', isa => 'Str');
  has HomeDirectoryType => (is => 'ro', isa => 'Str');
  has Role => (is => 'ro', isa => 'Str');
  has SshPublicKeyCount => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListedUser

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transfer::ListedUser object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UserName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transfer::ListedUser object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Returns properties of the user that you specify.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

Provides the unique Amazon Resource Name (ARN) for the user that you
want to learn about.


=head2 HomeDirectory => Str

The landing directory (folder) for a user when they log in to the
server using the client.

A C<HomeDirectory> example is C</bucket_name/home/mydirectory>.

The C<HomeDirectory> parameter is only used if C<HomeDirectoryType> is
set to C<PATH>.


=head2 HomeDirectoryType => Str

The type of landing directory (folder) that you want your users' home
directory to be when they log in to the server. If you set it to
C<PATH>, the user will see the absolute Amazon S3 bucket or Amazon EFS
path as is in their file transfer protocol clients. If you set it to
C<LOGICAL>, you need to provide mappings in the
C<HomeDirectoryMappings> for how you want to make Amazon S3 or Amazon
EFS paths visible to your users.

If C<HomeDirectoryType> is C<LOGICAL>, you must provide mappings, using
the C<HomeDirectoryMappings> parameter. If, on the other hand,
C<HomeDirectoryType> is C<PATH>, you provide an absolute path using the
C<HomeDirectory> parameter. You cannot have both C<HomeDirectory> and
C<HomeDirectoryMappings> in your template.


=head2 Role => Str

The Amazon Resource Name (ARN) of the Identity and Access Management
(IAM) role that controls your users' access to your Amazon S3 bucket or
Amazon EFS file system. The policies attached to this role determine
the level of access that you want to provide your users when
transferring files into and out of your Amazon S3 bucket or Amazon EFS
file system. The IAM role should also contain a trust relationship that
allows the server to access your resources when servicing your users'
transfer requests.

The IAM role that controls your users' access to your Amazon S3 bucket
for servers with C<Domain=S3>, or your EFS file system for servers with
C<Domain=EFS>.

The policies attached to this role determine the level of access you
want to provide your users when transferring files into and out of your
S3 buckets or EFS file systems.


=head2 SshPublicKeyCount => Int

Specifies the number of SSH public keys stored for the user you
specified.


=head2 UserName => Str

Specifies the name of the user whose ARN was specified. User names are
used for authentication purposes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

