# Generated by default/object.tt
package Paws::PerformanceInsights::Insight;
  use Moose;
  has BaselineData => (is => 'ro', isa => 'ArrayRef[Paws::PerformanceInsights::Data]');
  has Context => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has InsightData => (is => 'ro', isa => 'ArrayRef[Paws::PerformanceInsights::Data]');
  has InsightId => (is => 'ro', isa => 'Str', required => 1);
  has InsightType => (is => 'ro', isa => 'Str');
  has Recommendations => (is => 'ro', isa => 'ArrayRef[Paws::PerformanceInsights::Recommendation]');
  has Severity => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has SupportingInsights => (is => 'ro', isa => 'ArrayRef[Paws::PerformanceInsights::Insight]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::Insight

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PerformanceInsights::Insight object:

  $service_obj->Method(Att1 => { BaselineData => $value, ..., SupportingInsights => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PerformanceInsights::Insight object:

  $result = $service_obj->Method(...);
  $result->Att1->BaselineData

=head1 DESCRIPTION

Retrieves the list of performance issues which are identified.

=head1 ATTRIBUTES


=head2 BaselineData => ArrayRef[L<Paws::PerformanceInsights::Data>]

Metric names and values from the timeframe used as baseline to generate
the insight.


=head2 Context => Str

Indicates if the insight is causal or correlated insight.


=head2 Description => Str

Description of the insight. For example: C<A high severity Insight
found between 02:00 to 02:30, where there was an unusually high DB load
600x above baseline. Likely performance impact>.


=head2 EndTime => Str

The end time of the insight. For example, C<2018-10-30T00:00:00Z>.


=head2 InsightData => ArrayRef[L<Paws::PerformanceInsights::Data>]

List of data objects containing metrics and references from the time
range while generating the insight.


=head2 B<REQUIRED> InsightId => Str

The unique identifier for the insight. For example,
C<insight-12345678901234567>.


=head2 InsightType => Str

The type of insight. For example, C<HighDBLoad>, C<HighCPU>, or
C<DominatingSQLs>.


=head2 Recommendations => ArrayRef[L<Paws::PerformanceInsights::Recommendation>]

List of recommendations for the insight. For example, C<Investigate the
following SQLs that contributed to 100% of the total DBLoad during that
time period: sql-id>.


=head2 Severity => Str

The severity of the insight. The values are: C<Low>, C<Medium>, or
C<High>.


=head2 StartTime => Str

The start time of the insight. For example, C<2018-10-30T00:00:00Z>.


=head2 SupportingInsights => ArrayRef[L<Paws::PerformanceInsights::Insight>]

List of supporting insights that provide additional factors for the
insight.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PerformanceInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

