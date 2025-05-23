# Generated by default/object.tt
package Paws::Resiliencehub::ScoringComponentResiliencyScore;
  use Moose;
  has ExcludedCount => (is => 'ro', isa => 'Int', request_name => 'excludedCount', traits => ['NameInRequest']);
  has OutstandingCount => (is => 'ro', isa => 'Int', request_name => 'outstandingCount', traits => ['NameInRequest']);
  has PossibleScore => (is => 'ro', isa => 'Num', request_name => 'possibleScore', traits => ['NameInRequest']);
  has Score => (is => 'ro', isa => 'Num', request_name => 'score', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ScoringComponentResiliencyScore

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Resiliencehub::ScoringComponentResiliencyScore object:

  $service_obj->Method(Att1 => { ExcludedCount => $value, ..., Score => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Resiliencehub::ScoringComponentResiliencyScore object:

  $result = $service_obj->Method(...);
  $result->Att1->ExcludedCount

=head1 DESCRIPTION

Resiliency score of each scoring component. For more information about
scoring component, see Calculating resiliency score
(https://docs.aws.amazon.com/resilience-hub/latest/userguide/calculate-score.html).

=head1 ATTRIBUTES


=head2 ExcludedCount => Int

Number of recommendations that were excluded from the assessment.

For example, if the C<excludedCount> for Alarms coverage scoring
component is 7, it indicates that 7 Amazon CloudWatch alarms are
excluded from the assessment.


=head2 OutstandingCount => Int

Number of recommendations that must be implemented to obtain the
maximum possible score for the scoring component. For SOPs, alarms, and
tests, these are the number of recommendations that must be
implemented. For compliance, these are the number of Application
Components that have breached the resiliency policy.

For example, if the C<outstandingCount> for Alarms coverage scoring
component is 5, it indicates that 5 Amazon CloudWatch alarms need to be
implemented to achieve the maximum possible score.


=head2 PossibleScore => Num

Maximum possible score that can be obtained for the scoring component.

For example, if the C<possibleScore> is 20 points, it indicates the
maximum possible score you can achieve for the scoring component when
you run a new assessment after implementing all the Resilience Hub
recommendations.


=head2 Score => Num

Resiliency score points given for the scoring component. The score is
always less than or equal to the C<possibleScore>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

