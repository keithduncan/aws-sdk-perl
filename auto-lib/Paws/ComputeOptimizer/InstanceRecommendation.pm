# Generated by default/object.tt
package Paws::ComputeOptimizer::InstanceRecommendation;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', request_name => 'accountId', traits => ['NameInRequest']);
  has CurrentInstanceGpuInfo => (is => 'ro', isa => 'Paws::ComputeOptimizer::GpuInfo', request_name => 'currentInstanceGpuInfo', traits => ['NameInRequest']);
  has CurrentInstanceType => (is => 'ro', isa => 'Str', request_name => 'currentInstanceType', traits => ['NameInRequest']);
  has CurrentPerformanceRisk => (is => 'ro', isa => 'Str', request_name => 'currentPerformanceRisk', traits => ['NameInRequest']);
  has EffectiveRecommendationPreferences => (is => 'ro', isa => 'Paws::ComputeOptimizer::EffectiveRecommendationPreferences', request_name => 'effectiveRecommendationPreferences', traits => ['NameInRequest']);
  has ExternalMetricStatus => (is => 'ro', isa => 'Paws::ComputeOptimizer::ExternalMetricStatus', request_name => 'externalMetricStatus', traits => ['NameInRequest']);
  has Finding => (is => 'ro', isa => 'Str', request_name => 'finding', traits => ['NameInRequest']);
  has FindingReasonCodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'findingReasonCodes', traits => ['NameInRequest']);
  has Idle => (is => 'ro', isa => 'Str', request_name => 'idle', traits => ['NameInRequest']);
  has InferredWorkloadTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'inferredWorkloadTypes', traits => ['NameInRequest']);
  has InstanceArn => (is => 'ro', isa => 'Str', request_name => 'instanceArn', traits => ['NameInRequest']);
  has InstanceName => (is => 'ro', isa => 'Str', request_name => 'instanceName', traits => ['NameInRequest']);
  has InstanceState => (is => 'ro', isa => 'Str', request_name => 'instanceState', traits => ['NameInRequest']);
  has LastRefreshTimestamp => (is => 'ro', isa => 'Str', request_name => 'lastRefreshTimestamp', traits => ['NameInRequest']);
  has LookBackPeriodInDays => (is => 'ro', isa => 'Num', request_name => 'lookBackPeriodInDays', traits => ['NameInRequest']);
  has RecommendationOptions => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::InstanceRecommendationOption]', request_name => 'recommendationOptions', traits => ['NameInRequest']);
  has RecommendationSources => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::RecommendationSource]', request_name => 'recommendationSources', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::Tag]', request_name => 'tags', traits => ['NameInRequest']);
  has UtilizationMetrics => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::UtilizationMetric]', request_name => 'utilizationMetrics', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::InstanceRecommendation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComputeOptimizer::InstanceRecommendation object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., UtilizationMetrics => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComputeOptimizer::InstanceRecommendation object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Describes an Amazon EC2 instance recommendation.

=head1 ATTRIBUTES


=head2 AccountId => Str

The Amazon Web Services account ID of the instance.


=head2 CurrentInstanceGpuInfo => L<Paws::ComputeOptimizer::GpuInfo>

Describes the GPU accelerator settings for the current instance type.


=head2 CurrentInstanceType => Str

The instance type of the current instance.


=head2 CurrentPerformanceRisk => Str

The risk of the current instance not meeting the performance needs of
its workloads. The higher the risk, the more likely the current
instance cannot meet the performance requirements of its workload.


=head2 EffectiveRecommendationPreferences => L<Paws::ComputeOptimizer::EffectiveRecommendationPreferences>

An object that describes the effective recommendation preferences for
the instance.


=head2 ExternalMetricStatus => L<Paws::ComputeOptimizer::ExternalMetricStatus>

An object that describes Compute Optimizer's integration status with
your external metrics provider.


=head2 Finding => Str

The finding classification of the instance.

Findings for instances include:

=over

=item *

B<C<Underprovisioned> >E<mdash>An instance is considered
under-provisioned when at least one specification of your instance,
such as CPU, memory, or network, does not meet the performance
requirements of your workload. Under-provisioned instances may lead to
poor application performance.

=item *

B<C<Overprovisioned> >E<mdash>An instance is considered
over-provisioned when at least one specification of your instance, such
as CPU, memory, or network, can be sized down while still meeting the
performance requirements of your workload, and no specification is
under-provisioned. Over-provisioned instances may lead to unnecessary
infrastructure cost.

=item *

B<C<Optimized> >E<mdash>An instance is considered optimized when all
specifications of your instance, such as CPU, memory, and network, meet
the performance requirements of your workload and is not over
provisioned. For optimized resources, Compute Optimizer might recommend
a new generation instance type.

=back

The valid values in your API responses appear as OVER_PROVISIONED,
UNDER_PROVISIONED, or OPTIMIZED.


=head2 FindingReasonCodes => ArrayRef[Str|Undef]

The reason for the finding classification of the instance.

Finding reason codes for instances include:

=over

=item *

B<C<CPUOverprovisioned> > E<mdash> The instanceE<rsquo>s CPU
configuration can be sized down while still meeting the performance
requirements of your workload. This is identified by analyzing the
C<CPUUtilization> metric of the current instance during the look-back
period.

=item *

B<C<CPUUnderprovisioned> > E<mdash> The instanceE<rsquo>s CPU
configuration doesn't meet the performance requirements of your
workload and there is an alternative instance type that provides better
CPU performance. This is identified by analyzing the C<CPUUtilization>
metric of the current instance during the look-back period.

=item *

B<C<MemoryOverprovisioned> > E<mdash> The instanceE<rsquo>s memory
configuration can be sized down while still meeting the performance
requirements of your workload. This is identified by analyzing the
memory utilization metric of the current instance during the look-back
period.

=item *

B<C<MemoryUnderprovisioned> > E<mdash> The instanceE<rsquo>s memory
configuration doesn't meet the performance requirements of your
workload and there is an alternative instance type that provides better
memory performance. This is identified by analyzing the memory
utilization metric of the current instance during the look-back period.

Memory utilization is analyzed only for resources that have the unified
CloudWatch agent installed on them. For more information, see Enabling
memory utilization with the Amazon CloudWatch Agent
(https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent)
in the I<Compute Optimizer User Guide>. On Linux instances, Compute
Optimizer analyses the C<mem_used_percent> metric in the C<CWAgent>
namespace, or the legacy C<MemoryUtilization> metric in the
C<System/Linux> namespace. On Windows instances, Compute Optimizer
analyses the C<Memory % Committed Bytes In Use> metric in the
C<CWAgent> namespace.

=item *

B<C<EBSThroughputOverprovisioned> > E<mdash> The instanceE<rsquo>s EBS
throughput configuration can be sized down while still meeting the
performance requirements of your workload. This is identified by
analyzing the C<VolumeReadBytes> and C<VolumeWriteBytes> metrics of EBS
volumes attached to the current instance during the look-back period.

=item *

B<C<EBSThroughputUnderprovisioned> > E<mdash> The instanceE<rsquo>s EBS
throughput configuration doesn't meet the performance requirements of
your workload and there is an alternative instance type that provides
better EBS throughput performance. This is identified by analyzing the
C<VolumeReadBytes> and C<VolumeWriteBytes> metrics of EBS volumes
attached to the current instance during the look-back period.

=item *

B<C<EBSIOPSOverprovisioned> > E<mdash> The instanceE<rsquo>s EBS IOPS
configuration can be sized down while still meeting the performance
requirements of your workload. This is identified by analyzing the
C<VolumeReadOps> and C<VolumeWriteOps> metric of EBS volumes attached
to the current instance during the look-back period.

=item *

B<C<EBSIOPSUnderprovisioned> > E<mdash> The instanceE<rsquo>s EBS IOPS
configuration doesn't meet the performance requirements of your
workload and there is an alternative instance type that provides better
EBS IOPS performance. This is identified by analyzing the
C<VolumeReadOps> and C<VolumeWriteOps> metric of EBS volumes attached
to the current instance during the look-back period.

=item *

B<C<NetworkBandwidthOverprovisioned> > E<mdash> The instanceE<rsquo>s
network bandwidth configuration can be sized down while still meeting
the performance requirements of your workload. This is identified by
analyzing the C<NetworkIn> and C<NetworkOut> metrics of the current
instance during the look-back period.

=item *

B<C<NetworkBandwidthUnderprovisioned> > E<mdash> The instanceE<rsquo>s
network bandwidth configuration doesn't meet the performance
requirements of your workload and there is an alternative instance type
that provides better network bandwidth performance. This is identified
by analyzing the C<NetworkIn> and C<NetworkOut> metrics of the current
instance during the look-back period. This finding reason happens when
the C<NetworkIn> or C<NetworkOut> performance of an instance is
impacted.

=item *

B<C<NetworkPPSOverprovisioned> > E<mdash> The instanceE<rsquo>s network
PPS (packets per second) configuration can be sized down while still
meeting the performance requirements of your workload. This is
identified by analyzing the C<NetworkPacketsIn> and C<NetworkPacketsIn>
metrics of the current instance during the look-back period.

=item *

B<C<NetworkPPSUnderprovisioned> > E<mdash> The instanceE<rsquo>s
network PPS (packets per second) configuration doesn't meet the
performance requirements of your workload and there is an alternative
instance type that provides better network PPS performance. This is
identified by analyzing the C<NetworkPacketsIn> and C<NetworkPacketsIn>
metrics of the current instance during the look-back period.

=item *

B<C<DiskIOPSOverprovisioned> > E<mdash> The instanceE<rsquo>s disk IOPS
configuration can be sized down while still meeting the performance
requirements of your workload. This is identified by analyzing the
C<DiskReadOps> and C<DiskWriteOps> metrics of the current instance
during the look-back period.

=item *

B<C<DiskIOPSUnderprovisioned> > E<mdash> The instanceE<rsquo>s disk
IOPS configuration doesn't meet the performance requirements of your
workload and there is an alternative instance type that provides better
disk IOPS performance. This is identified by analyzing the
C<DiskReadOps> and C<DiskWriteOps> metrics of the current instance
during the look-back period.

=item *

B<C<DiskThroughputOverprovisioned> > E<mdash> The instanceE<rsquo>s
disk throughput configuration can be sized down while still meeting the
performance requirements of your workload. This is identified by
analyzing the C<DiskReadBytes> and C<DiskWriteBytes> metrics of the
current instance during the look-back period.

=item *

B<C<DiskThroughputUnderprovisioned> > E<mdash> The instanceE<rsquo>s
disk throughput configuration doesn't meet the performance requirements
of your workload and there is an alternative instance type that
provides better disk throughput performance. This is identified by
analyzing the C<DiskReadBytes> and C<DiskWriteBytes> metrics of the
current instance during the look-back period.

=back

For more information about instance metrics, see List the available
CloudWatch metrics for your instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/viewing_metrics_with_cloudwatch.html)
in the I<Amazon Elastic Compute Cloud User Guide>. For more information
about EBS volume metrics, see Amazon CloudWatch metrics for Amazon EBS
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using_cloudwatch_ebs.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 Idle => Str

Describes if an Amazon EC2 instance is idle.


=head2 InferredWorkloadTypes => ArrayRef[Str|Undef]

The applications that might be running on the instance as inferred by
Compute Optimizer.

Compute Optimizer can infer if one of the following applications might
be running on the instance:

=over

=item *

C<AmazonEmr> - Infers that Amazon EMR might be running on the instance.

=item *

C<ApacheCassandra> - Infers that Apache Cassandra might be running on
the instance.

=item *

C<ApacheHadoop> - Infers that Apache Hadoop might be running on the
instance.

=item *

C<Memcached> - Infers that Memcached might be running on the instance.

=item *

C<NGINX> - Infers that NGINX might be running on the instance.

=item *

C<PostgreSql> - Infers that PostgreSQL might be running on the
instance.

=item *

C<Redis> - Infers that Redis might be running on the instance.

=item *

C<Kafka> - Infers that Kafka might be running on the instance.

=item *

C<SQLServer> - Infers that SQLServer might be running on the instance.

=back



=head2 InstanceArn => Str

The Amazon Resource Name (ARN) of the current instance.


=head2 InstanceName => Str

The name of the current instance.


=head2 InstanceState => Str

The state of the instance when the recommendation was generated.


=head2 LastRefreshTimestamp => Str

The timestamp of when the instance recommendation was last generated.


=head2 LookBackPeriodInDays => Num

The number of days for which utilization metrics were analyzed for the
instance.


=head2 RecommendationOptions => ArrayRef[L<Paws::ComputeOptimizer::InstanceRecommendationOption>]

An array of objects that describe the recommendation options for the
instance.


=head2 RecommendationSources => ArrayRef[L<Paws::ComputeOptimizer::RecommendationSource>]

An array of objects that describe the source resource of the
recommendation.


=head2 Tags => ArrayRef[L<Paws::ComputeOptimizer::Tag>]

A list of tags assigned to your Amazon EC2 instance recommendations.


=head2 UtilizationMetrics => ArrayRef[L<Paws::ComputeOptimizer::UtilizationMetric>]

An array of objects that describe the utilization metrics of the
instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

