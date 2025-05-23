# Generated by default/object.tt
package Paws::Transfer::ListedHostKey;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has DateImported => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Fingerprint => (is => 'ro', isa => 'Str');
  has HostKeyId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListedHostKey

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transfer::ListedHostKey object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transfer::ListedHostKey object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Returns properties of the host key that's specified.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The unique Amazon Resource Name (ARN) of the host key.


=head2 DateImported => Str

The date on which the host key was added to the server.


=head2 Description => Str

The current description for the host key. You can change it by calling
the C<UpdateHostKey> operation and providing a new description.


=head2 Fingerprint => Str

The public key fingerprint, which is a short sequence of bytes used to
identify the longer public key.


=head2 HostKeyId => Str

A unique identifier for the host key.


=head2 Type => Str

The encryption algorithm that is used for the host key. The C<Type>
parameter is specified by using one of the following values:

=over

=item *

C<ssh-rsa>

=item *

C<ssh-ed25519>

=item *

C<ecdsa-sha2-nistp256>

=item *

C<ecdsa-sha2-nistp384>

=item *

C<ecdsa-sha2-nistp521>

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

