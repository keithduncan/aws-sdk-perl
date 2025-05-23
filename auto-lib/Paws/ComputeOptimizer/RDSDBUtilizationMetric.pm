# Generated by default/object.tt
package Paws::ComputeOptimizer::RDSDBUtilizationMetric;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Statistic => (is => 'ro', isa => 'Str', request_name => 'statistic', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Num', request_name => 'value', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::RDSDBUtilizationMetric

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComputeOptimizer::RDSDBUtilizationMetric object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComputeOptimizer::RDSDBUtilizationMetric object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Describes the utilization metric of an Amazon RDS.

To determine the performance difference between your current Amazon RDS
and the recommended option, compare the utilization metric data of your
service against its projected utilization metric data.

=head1 ATTRIBUTES


=head2 Name => Str

The name of the utilization metric.


=head2 Statistic => Str

The statistic of the utilization metric.

The Compute Optimizer API, Command Line Interface (CLI), and SDKs
return utilization metrics using only the C<Maximum> statistic, which
is the highest value observed during the specified period.

The Compute Optimizer console displays graphs for some utilization
metrics using the C<Average> statistic, which is the value of C<Sum> /
C<SampleCount> during the specified period. For more information, see
Viewing resource recommendations
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/viewing-recommendations.html)
in the I<Compute Optimizer User Guide>. You can also get averaged
utilization metric data for your resources using Amazon CloudWatch. For
more information, see the Amazon CloudWatch User Guide
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html).


=head2 Value => Num

The value of the utilization metric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

