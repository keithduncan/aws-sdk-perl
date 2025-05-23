# Generated by default/object.tt
package Paws::QBusiness::DocumentAclCondition;
  use Moose;
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::DocumentAclGroup]', request_name => 'groups', traits => ['NameInRequest']);
  has MemberRelation => (is => 'ro', isa => 'Str', request_name => 'memberRelation', traits => ['NameInRequest']);
  has Users => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::DocumentAclUser]', request_name => 'users', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::DocumentAclCondition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QBusiness::DocumentAclCondition object:

  $service_obj->Method(Att1 => { Groups => $value, ..., Users => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QBusiness::DocumentAclCondition object:

  $result = $service_obj->Method(...);
  $result->Att1->Groups

=head1 DESCRIPTION

Represents a condition in the document's ACL, specifying access rules
for users and groups.

=head1 ATTRIBUTES


=head2 Groups => ArrayRef[L<Paws::QBusiness::DocumentAclGroup>]

An array of group identifiers that this condition applies to. Groups
listed here are subject to the access rule defined by this condition.


=head2 MemberRelation => Str

The logical relation between members in the condition, determining how
multiple user or group conditions are combined.


=head2 Users => ArrayRef[L<Paws::QBusiness::DocumentAclUser>]

An array of user identifiers that this condition applies to. Users
listed here are subject to the access rule defined by this condition.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

