# Generated by default/object.tt
package Paws::ComputeOptimizer::UtilizationMetric;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Statistic => (is => 'ro', isa => 'Str', request_name => 'statistic', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Num', request_name => 'value', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::UtilizationMetric

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComputeOptimizer::UtilizationMetric object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComputeOptimizer::UtilizationMetric object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Describes a utilization metric of a resource, such as an Amazon EC2
instance.

Compare the utilization metric data of your resource against its
projected utilization metric data to determine the performance
difference between your current resource and the recommended option.

=head1 ATTRIBUTES


=head2 Name => Str

The name of the utilization metric.

The following utilization metrics are available:

=over

=item *

C<Cpu> - The percentage of allocated EC2 compute units that are
currently in use on the instance. This metric identifies the processing
power required to run an application on the instance.

Depending on the instance type, tools in your operating system can show
a lower percentage than CloudWatch when the instance is not allocated a
full processor core.

Units: Percent

=item *

C<Memory> - The percentage of memory that is currently in use on the
instance. This metric identifies the amount of memory required to run
an application on the instance.

Units: Percent

The C<Memory> metric is returned only for resources that have the
unified CloudWatch agent installed on them. For more information, see
Enabling Memory Utilization with the CloudWatch Agent
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent).

=item *

C<GPU> - The percentage of allocated GPUs that currently run on the
instance.

=item *

C<GPU_MEMORY> - The percentage of total GPU memory that currently runs
on the instance.

The C<GPU> and C<GPU_MEMORY> metrics are only returned for resources
with the unified CloudWatch Agent installed on them. For more
information, see Enabling NVIDIA GPU utilization with the CloudWatch
Agent
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#nvidia-cw-agent).

=item *

C<EBS_READ_OPS_PER_SECOND> - The completed read operations from all EBS
volumes attached to the instance in a specified period of time.

Unit: Count

=item *

C<EBS_WRITE_OPS_PER_SECOND> - The completed write operations to all EBS
volumes attached to the instance in a specified period of time.

Unit: Count

=item *

C<EBS_READ_BYTES_PER_SECOND> - The bytes read from all EBS volumes
attached to the instance in a specified period of time.

Unit: Bytes

=item *

C<EBS_WRITE_BYTES_PER_SECOND> - The bytes written to all EBS volumes
attached to the instance in a specified period of time.

Unit: Bytes

=item *

C<DISK_READ_OPS_PER_SECOND> - The completed read operations from all
instance store volumes available to the instance in a specified period
of time.

If there are no instance store volumes, either the value is C<0> or the
metric is not reported.

=item *

C<DISK_WRITE_OPS_PER_SECOND> - The completed write operations from all
instance store volumes available to the instance in a specified period
of time.

If there are no instance store volumes, either the value is C<0> or the
metric is not reported.

=item *

C<DISK_READ_BYTES_PER_SECOND> - The bytes read from all instance store
volumes available to the instance. This metric is used to determine the
volume of the data the application reads from the disk of the instance.
This can be used to determine the speed of the application.

If there are no instance store volumes, either the value is C<0> or the
metric is not reported.

=item *

C<DISK_WRITE_BYTES_PER_SECOND> - The bytes written to all instance
store volumes available to the instance. This metric is used to
determine the volume of the data the application writes onto the disk
of the instance. This can be used to determine the speed of the
application.

If there are no instance store volumes, either the value is C<0> or the
metric is not reported.

=item *

C<NETWORK_IN_BYTES_PER_SECOND> - The number of bytes received by the
instance on all network interfaces. This metric identifies the volume
of incoming network traffic to a single instance.

=item *

C<NETWORK_OUT_BYTES_PER_SECOND> - The number of bytes sent out by the
instance on all network interfaces. This metric identifies the volume
of outgoing network traffic from a single instance.

=item *

C<NETWORK_PACKETS_IN_PER_SECOND> - The number of packets received by
the instance on all network interfaces. This metric identifies the
volume of incoming traffic in terms of the number of packets on a
single instance.

=item *

C<NETWORK_PACKETS_OUT_PER_SECOND> - The number of packets sent out by
the instance on all network interfaces. This metric identifies the
volume of outgoing traffic in terms of the number of packets on a
single instance.

=back



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

