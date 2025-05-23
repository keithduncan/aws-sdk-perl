# Generated by default/object.tt
package Paws::CustomerProfiles::Filter;
  use Moose;
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::CustomerProfiles::FilterGroup]', required => 1);
  has Include => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::Filter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CustomerProfiles::Filter object:

  $service_obj->Method(Att1 => { Groups => $value, ..., Include => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CustomerProfiles::Filter object:

  $result = $service_obj->Method(...);
  $result->Att1->Groups

=head1 DESCRIPTION

Defines how to filter the objects coming in for calculated attributes.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Groups => ArrayRef[L<Paws::CustomerProfiles::FilterGroup>]

Holds the list of Filter groups within the Filter definition.


=head2 B<REQUIRED> Include => Str

Define whether to include or exclude objects for Calculated Attributed
calculation that fit the filter groups criteria.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

