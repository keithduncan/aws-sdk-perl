# Generated by default/object.tt
package Paws::DirectoryServiceData::User;
  use Moose;
  has DistinguishedName => (is => 'ro', isa => 'Str');
  has EmailAddress => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
  has GivenName => (is => 'ro', isa => 'Str');
  has OtherAttributes => (is => 'ro', isa => 'Paws::DirectoryServiceData::Attributes');
  has SAMAccountName => (is => 'ro', isa => 'Str', required => 1);
  has SID => (is => 'ro', isa => 'Str');
  has Surname => (is => 'ro', isa => 'Str');
  has UserPrincipalName => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectoryServiceData::User

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DirectoryServiceData::User object:

  $service_obj->Method(Att1 => { DistinguishedName => $value, ..., UserPrincipalName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DirectoryServiceData::User object:

  $result = $service_obj->Method(...);
  $result->Att1->DistinguishedName

=head1 DESCRIPTION

A user object that contains identifying information and attributes for
a specified user.

=head1 ATTRIBUTES


=head2 DistinguishedName => Str

The distinguished name
(https://learn.microsoft.com/en-us/windows/win32/ad/object-names-and-identities#distinguished-name)
of the object.


=head2 EmailAddress => Str

The email address of the user.


=head2 Enabled => Bool

Indicates whether the user account is active.


=head2 GivenName => Str

The first name of the user.


=head2 OtherAttributes => L<Paws::DirectoryServiceData::Attributes>

An expression that includes one or more attributes, data types, and
values of a user.


=head2 B<REQUIRED> SAMAccountName => Str

The name of the user.


=head2 SID => Str

The unique security identifier (SID) of the user.


=head2 Surname => Str

The last name of the user.


=head2 UserPrincipalName => Str

The UPN that is an internet-style login name for a user and based on
the internet standard RFC 822
(https://datatracker.ietf.org/doc/html/rfc822). The UPN is shorter than
the distinguished name and easier to remember.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DirectoryServiceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

