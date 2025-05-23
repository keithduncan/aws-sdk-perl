
package Paws::ApplicationInsights::DescribeProblemObservations;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has ProblemId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProblemObservations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationInsights::DescribeProblemObservationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::DescribeProblemObservations - Arguments for method DescribeProblemObservations on L<Paws::ApplicationInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProblemObservations on the
L<Amazon CloudWatch Application Insights|Paws::ApplicationInsights> service. Use the attributes of this class
as arguments to method DescribeProblemObservations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProblemObservations.

=head1 SYNOPSIS

    my $applicationinsights = Paws->service('ApplicationInsights');
    my $DescribeProblemObservationsResponse =
      $applicationinsights->DescribeProblemObservations(
      ProblemId => 'MyProblemId',
      AccountId => 'MyAccountId',    # OPTIONAL
      );

    # Results:
    my $RelatedObservations =
      $DescribeProblemObservationsResponse->RelatedObservations;

# Returns a L<Paws::ApplicationInsights::DescribeProblemObservationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/applicationinsights/DescribeProblemObservations>

=head1 ATTRIBUTES


=head2 AccountId => Str

The Amazon Web Services account ID for the resource group owner.



=head2 B<REQUIRED> ProblemId => Str

The ID of the problem.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProblemObservations in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

