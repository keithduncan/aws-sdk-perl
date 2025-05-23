
package Paws::CloudFormation::EstimateTemplateCostOutput;
  use Moose;
  has Url => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::EstimateTemplateCostOutput

=head1 ATTRIBUTES


=head2 Url => Str

An Amazon Web Services Simple Monthly Calculator URL with a query
string that describes the resources required to run the template.


=head2 _request_id => Str


=cut

