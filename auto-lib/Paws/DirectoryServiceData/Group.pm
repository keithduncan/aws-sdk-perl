# Generated by default/object.tt
package Paws::DirectoryServiceData::Group;
  use Moose;
  has DistinguishedName => (is => 'ro', isa => 'Str');
  has GroupScope => (is => 'ro', isa => 'Str');
  has GroupType => (is => 'ro', isa => 'Str');
  has OtherAttributes => (is => 'ro', isa => 'Paws::DirectoryServiceData::Attributes');
  has SAMAccountName => (is => 'ro', isa => 'Str', required => 1);
  has SID => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectoryServiceData::Group

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DirectoryServiceData::Group object:

  $service_obj->Method(Att1 => { DistinguishedName => $value, ..., SID => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DirectoryServiceData::Group object:

  $result = $service_obj->Method(...);
  $result->Att1->DistinguishedName

=head1 DESCRIPTION

A group object that contains identifying information and attributes for
a specified group.

=head1 ATTRIBUTES


=head2 DistinguishedName => Str

The distinguished name
(https://learn.microsoft.com/en-us/windows/win32/ad/object-names-and-identities#distinguished-name)
of the object.


=head2 GroupScope => Str

The scope of the AD group. For details, see Active Directory security
groups
(https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope)


=head2 GroupType => Str

The AD group type. For details, see Active Directory security group
type
(https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work).


=head2 OtherAttributes => L<Paws::DirectoryServiceData::Attributes>

An expression of one or more attributes, data types, and the values of
a group.


=head2 B<REQUIRED> SAMAccountName => Str

The name of the group.


=head2 SID => Str

The unique security identifier (SID) of the group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DirectoryServiceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

