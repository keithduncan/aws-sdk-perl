# Generated by default/object.tt
package Paws::ComputeOptimizer::ProjectedMetric;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Timestamps => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'timestamps', traits => ['NameInRequest']);
  has Values => (is => 'ro', isa => 'ArrayRef[Num]', request_name => 'values', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::ProjectedMetric

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComputeOptimizer::ProjectedMetric object:

  $service_obj->Method(Att1 => { Name => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComputeOptimizer::ProjectedMetric object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Describes a projected utilization metric of a recommendation option,
such as an Amazon EC2 instance. This represents the projected
utilization of a recommendation option had you used that resource
during the analyzed period.

Compare the utilization metric data of your resource against its
projected utilization metric data to determine the performance
difference between your current resource and the recommended option.

The C<Cpu>, C<Memory>, C<GPU>, and C<GPU_MEMORY> metrics are the only
projected utilization metrics returned when you run the
GetEC2RecommendationProjectedMetrics action. Additionally, these
metrics are only returned for resources with the unified CloudWatch
agent installed on them. For more information, see Enabling Memory
Utilization with the CloudWatch Agent
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent)
and Enabling NVIDIA GPU utilization with the CloudWatch Agent
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#nvidia-cw-agent).

=head1 ATTRIBUTES


=head2 Name => Str

The name of the projected utilization metric.

The following projected utilization metrics are returned:

=over

=item *

C<Cpu> - The projected percentage of allocated EC2 compute units that
would be in use on the recommendation option had you used that resource
during the analyzed period. This metric identifies the processing power
required to run an application on the recommendation option.

Depending on the instance type, tools in your operating system can show
a lower percentage than CloudWatch when the instance is not allocated a
full processor core.

=item *

C<Memory> - The percentage of memory that would be in use on the
recommendation option had you used that resource during the analyzed
period. This metric identifies the amount of memory required to run an
application on the recommendation option.

Units: Percent

The C<Memory> metric is only returned for resources with the unified
CloudWatch agent installed on them. For more information, see Enabling
Memory Utilization with the CloudWatch Agent
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent).

=item *

C<GPU> - The projected percentage of allocated GPUs if you adjust your
configurations to Compute Optimizer's recommendation option.

=item *

C<GPU_MEMORY> - The projected percentage of total GPU memory if you
adjust your configurations to Compute Optimizer's recommendation
option.

The C<GPU> and C<GPU_MEMORY> metrics are only returned for resources
with the unified CloudWatch Agent installed on them. For more
information, see Enabling NVIDIA GPU utilization with the CloudWatch
Agent
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#nvidia-cw-agent).

=back



=head2 Timestamps => ArrayRef[Str|Undef]

The timestamps of the projected utilization metric.


=head2 Values => ArrayRef[Num]

The values of the projected utilization metrics.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

