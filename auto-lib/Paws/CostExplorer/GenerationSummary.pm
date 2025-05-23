# Generated by default/object.tt
package Paws::CostExplorer::GenerationSummary;
  use Moose;
  has EstimatedCompletionTime => (is => 'ro', isa => 'Str');
  has GenerationCompletionTime => (is => 'ro', isa => 'Str');
  has GenerationStartedTime => (is => 'ro', isa => 'Str');
  has GenerationStatus => (is => 'ro', isa => 'Str');
  has RecommendationId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GenerationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::GenerationSummary object:

  $service_obj->Method(Att1 => { EstimatedCompletionTime => $value, ..., RecommendationId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::GenerationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->EstimatedCompletionTime

=head1 DESCRIPTION

The summary of the Savings Plans recommendation generation.

=head1 ATTRIBUTES


=head2 EstimatedCompletionTime => Str

Indicates the estimated time for when the recommendation generation
will complete.


=head2 GenerationCompletionTime => Str

Indicates the completion time of the recommendation generation.


=head2 GenerationStartedTime => Str

Indicates the start time of the recommendation generation.


=head2 GenerationStatus => Str

Indicates whether the recommendation generation succeeded, is
processing, or failed.


=head2 RecommendationId => Str

Indicates the ID for this specific recommendation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

