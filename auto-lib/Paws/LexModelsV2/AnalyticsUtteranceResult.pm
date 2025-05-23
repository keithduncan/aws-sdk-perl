# Generated by default/object.tt
package Paws::LexModelsV2::AnalyticsUtteranceResult;
  use Moose;
  has AttributeResults => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AnalyticsUtteranceAttributeResult]', request_name => 'attributeResults', traits => ['NameInRequest']);
  has BinKeys => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AnalyticsBinKey]', request_name => 'binKeys', traits => ['NameInRequest']);
  has GroupByKeys => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AnalyticsUtteranceGroupByKey]', request_name => 'groupByKeys', traits => ['NameInRequest']);
  has MetricsResults => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AnalyticsUtteranceMetricResult]', request_name => 'metricsResults', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::AnalyticsUtteranceResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModelsV2::AnalyticsUtteranceResult object:

  $service_obj->Method(Att1 => { AttributeResults => $value, ..., MetricsResults => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModelsV2::AnalyticsUtteranceResult object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeResults

=head1 DESCRIPTION

An object containing the results for the utterance metrics you
requested and the bin and/or group(s) they refer to, if applicable.

=head1 ATTRIBUTES


=head2 AttributeResults => ArrayRef[L<Paws::LexModelsV2::AnalyticsUtteranceAttributeResult>]

A list of objects containing information about the last used intent at
the time of an utterance.


=head2 BinKeys => ArrayRef[L<Paws::LexModelsV2::AnalyticsBinKey>]

A list of objects containing the criteria you requested for binning
results and the values of the bins.


=head2 GroupByKeys => ArrayRef[L<Paws::LexModelsV2::AnalyticsUtteranceGroupByKey>]

A list of objects containing the criteria you requested for grouping
results and the values of the bins.


=head2 MetricsResults => ArrayRef[L<Paws::LexModelsV2::AnalyticsUtteranceMetricResult>]

A list of objects, each of which contains a metric you want to list,
the statistic for the metric you want to return, and the method by
which to organize the results.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

