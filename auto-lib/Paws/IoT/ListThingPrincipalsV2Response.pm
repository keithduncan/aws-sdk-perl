
package Paws::IoT::ListThingPrincipalsV2Response;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ThingPrincipalObjects => (is => 'ro', isa => 'ArrayRef[Paws::IoT::ThingPrincipalObject]', traits => ['NameInRequest'], request_name => 'thingPrincipalObjects');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThingPrincipalsV2Response

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to get the next set of results, or B<null> if there
are no additional results.


=head2 ThingPrincipalObjects => ArrayRef[L<Paws::IoT::ThingPrincipalObject>]

A list of C<thingPrincipalObject> that represents the principal and the
type of relation it has with the thing.


=head2 _request_id => Str


=cut

