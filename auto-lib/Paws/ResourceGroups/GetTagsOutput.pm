
package Paws::ResourceGroups::GetTagsOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::ResourceGroups::Tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::GetTagsOutput

=head1 ATTRIBUTES


=head2 Arn => Str

TheAmazon resource name (ARN) of the tagged resource group.


=head2 Tags => L<Paws::ResourceGroups::Tags>

The tags associated with the specified resource group.


=head2 _request_id => Str


=cut

