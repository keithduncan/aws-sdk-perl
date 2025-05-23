# Generated by default/object.tt
package Paws::DataZone::FilterClause;
  use Moose;
  has And => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::FilterClause]', request_name => 'and', traits => ['NameInRequest']);
  has Filter => (is => 'ro', isa => 'Paws::DataZone::Filter', request_name => 'filter', traits => ['NameInRequest']);
  has Or => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::FilterClause]', request_name => 'or', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::FilterClause

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataZone::FilterClause object:

  $service_obj->Method(Att1 => { And => $value, ..., Or => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataZone::FilterClause object:

  $result = $service_obj->Method(...);
  $result->Att1->And

=head1 DESCRIPTION

A search filter clause in Amazon DataZone.

=head1 ATTRIBUTES


=head2 And => ArrayRef[L<Paws::DataZone::FilterClause>]

The 'and' search filter clause in Amazon DataZone.


=head2 Filter => L<Paws::DataZone::Filter>

A search filter in Amazon DataZone.


=head2 Or => ArrayRef[L<Paws::DataZone::FilterClause>]

The 'or' search filter clause in Amazon DataZone.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

