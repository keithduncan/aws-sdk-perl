# Generated by default/object.tt
package Paws::CleanRooms::QueryConstraint;
  use Moose;
  has RequireOverlap => (is => 'ro', isa => 'Paws::CleanRooms::QueryConstraintRequireOverlap', request_name => 'requireOverlap', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::QueryConstraint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CleanRooms::QueryConstraint object:

  $service_obj->Method(Att1 => { RequireOverlap => $value, ..., RequireOverlap => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CleanRooms::QueryConstraint object:

  $result = $service_obj->Method(...);
  $result->Att1->RequireOverlap

=head1 DESCRIPTION

Provides any necessary query constraint information.

=head1 ATTRIBUTES


=head2 RequireOverlap => L<Paws::CleanRooms::QueryConstraintRequireOverlap>

An array of column names that specifies which columns are required in
the JOIN statement.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

