# Generated by default/object.tt
package Paws::Macie2::UsageTotal;
  use Moose;
  has Currency => (is => 'ro', isa => 'Str', request_name => 'currency', traits => ['NameInRequest']);
  has EstimatedCost => (is => 'ro', isa => 'Str', request_name => 'estimatedCost', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::UsageTotal

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Macie2::UsageTotal object:

  $service_obj->Method(Att1 => { Currency => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Macie2::UsageTotal object:

  $result = $service_obj->Method(...);
  $result->Att1->Currency

=head1 DESCRIPTION

Provides aggregated data for an Amazon Macie usage metric. The value
for the metric reports estimated usage data for an account for the
preceding 30 days or the current calendar month to date, depending on
the time period (timeRange) specified in the request.

=head1 ATTRIBUTES


=head2 Currency => Str

The type of currency that the value for the metric (estimatedCost) is
reported in.


=head2 EstimatedCost => Str

The estimated value for the metric.


=head2 Type => Str

The name of the metric. Possible values are:
AUTOMATED_OBJECT_MONITORING, to monitor S3 objects for automated
sensitive data discovery; AUTOMATED_SENSITIVE_DATA_DISCOVERY, to
analyze S3 objects for automated sensitive data discovery;
DATA_INVENTORY_EVALUATION, to monitor S3 buckets; and,
SENSITIVE_DATA_DISCOVERY, to run classification jobs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

