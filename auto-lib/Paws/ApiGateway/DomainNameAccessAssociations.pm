
package Paws::ApiGateway::DomainNameAccessAssociations;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::DomainNameAccessAssociation]', traits => ['NameInRequest'], request_name => 'item');
  has Position => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'position');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DomainNameAccessAssociations

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ApiGateway::DomainNameAccessAssociation>]

The current page of elements from this collection.


=head2 Position => Str




=head2 _request_id => Str


=cut

