
package Paws::RDS::TagListMessage;
  use Moose;
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]', request_name => 'Tag', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::TagListMessage

=head1 ATTRIBUTES


=head2 TagList => ArrayRef[L<Paws::RDS::Tag>]

List of tags returned by the C<ListTagsForResource> operation.


=head2 _request_id => Str


=cut

