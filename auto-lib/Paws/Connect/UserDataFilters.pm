# Generated by default/object.tt
package Paws::Connect::UserDataFilters;
  use Moose;
  has Agents => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ContactFilter => (is => 'ro', isa => 'Paws::Connect::ContactFilter');
  has Queues => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RoutingProfiles => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has UserHierarchyGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UserDataFilters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::UserDataFilters object:

  $service_obj->Method(Att1 => { Agents => $value, ..., UserHierarchyGroups => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::UserDataFilters object:

  $result = $service_obj->Method(...);
  $result->Att1->Agents

=head1 DESCRIPTION

A filter for the user data.

=head1 ATTRIBUTES


=head2 Agents => ArrayRef[Str|Undef]

A list of up to 100 agent IDs or ARNs.


=head2 ContactFilter => L<Paws::Connect::ContactFilter>

A filter for the user data based on the contact information that is
associated to the user. It contains a list of contact states.


=head2 Queues => ArrayRef[Str|Undef]

A list of up to 100 queues or ARNs.


=head2 RoutingProfiles => ArrayRef[Str|Undef]

A list of up to 100 routing profile IDs or ARNs.


=head2 UserHierarchyGroups => ArrayRef[Str|Undef]

A UserHierarchyGroup ID or ARN.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

