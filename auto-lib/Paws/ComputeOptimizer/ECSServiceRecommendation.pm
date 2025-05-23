# Generated by default/object.tt
package Paws::ComputeOptimizer::ECSServiceRecommendation;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', request_name => 'accountId', traits => ['NameInRequest']);
  has CurrentPerformanceRisk => (is => 'ro', isa => 'Str', request_name => 'currentPerformanceRisk', traits => ['NameInRequest']);
  has CurrentServiceConfiguration => (is => 'ro', isa => 'Paws::ComputeOptimizer::ServiceConfiguration', request_name => 'currentServiceConfiguration', traits => ['NameInRequest']);
  has EffectiveRecommendationPreferences => (is => 'ro', isa => 'Paws::ComputeOptimizer::ECSEffectiveRecommendationPreferences', request_name => 'effectiveRecommendationPreferences', traits => ['NameInRequest']);
  has Finding => (is => 'ro', isa => 'Str', request_name => 'finding', traits => ['NameInRequest']);
  has FindingReasonCodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'findingReasonCodes', traits => ['NameInRequest']);
  has LastRefreshTimestamp => (is => 'ro', isa => 'Str', request_name => 'lastRefreshTimestamp', traits => ['NameInRequest']);
  has LaunchType => (is => 'ro', isa => 'Str', request_name => 'launchType', traits => ['NameInRequest']);
  has LookbackPeriodInDays => (is => 'ro', isa => 'Num', request_name => 'lookbackPeriodInDays', traits => ['NameInRequest']);
  has ServiceArn => (is => 'ro', isa => 'Str', request_name => 'serviceArn', traits => ['NameInRequest']);
  has ServiceRecommendationOptions => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::ECSServiceRecommendationOption]', request_name => 'serviceRecommendationOptions', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::Tag]', request_name => 'tags', traits => ['NameInRequest']);
  has UtilizationMetrics => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::ECSServiceUtilizationMetric]', request_name => 'utilizationMetrics', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::ECSServiceRecommendation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComputeOptimizer::ECSServiceRecommendation object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., UtilizationMetrics => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComputeOptimizer::ECSServiceRecommendation object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Describes an Amazon ECS service recommendation.

=head1 ATTRIBUTES


=head2 AccountId => Str

The Amazon Web Services account ID of the Amazon ECS service.


=head2 CurrentPerformanceRisk => Str

The risk of the current Amazon ECS service not meeting the performance
needs of its workloads. The higher the risk, the more likely the
current service can't meet the performance requirements of its
workload.


=head2 CurrentServiceConfiguration => L<Paws::ComputeOptimizer::ServiceConfiguration>

The configuration of the current Amazon ECS service.


=head2 EffectiveRecommendationPreferences => L<Paws::ComputeOptimizer::ECSEffectiveRecommendationPreferences>

Describes the effective recommendation preferences for Amazon ECS
services.


=head2 Finding => Str

The finding classification of an Amazon ECS service.

Findings for Amazon ECS services include:

=over

=item *

B<C<Underprovisioned> > E<mdash> When Compute Optimizer detects that
thereE<rsquo>s not enough memory or CPU, an Amazon ECS service is
considered under-provisioned. An under-provisioned service might result
in poor application performance.

=item *

B<C<Overprovisioned> > E<mdash> When Compute Optimizer detects that
thereE<rsquo>s excessive memory or CPU, an Amazon ECS service is
considered over-provisioned. An over-provisioned service might result
in additional infrastructure costs.

=item *

B<C<Optimized> > E<mdash> When both the CPU and memory of your Amazon
ECS service meet the performance requirements of your workload, the
service is considered optimized.

=back



=head2 FindingReasonCodes => ArrayRef[Str|Undef]

The reason for the finding classification of an Amazon ECS service.

Finding reason codes for Amazon ECS services include:

=over

=item *

B<C<CPUUnderprovisioned> > E<mdash> The service CPU configuration can
be sized up to enhance the performance of your workload. This is
identified by analyzing the C<CPUUtilization> metric of the current
service during the look-back period.

=item *

B<C<CPUOverprovisioned> > E<mdash> The service CPU configuration can be
sized down while still meeting the performance requirements of your
workload. This is identified by analyzing the C<CPUUtilization> metric
of the current service during the look-back period.

=item *

B<C<MemoryUnderprovisioned> > E<mdash> The service memory configuration
can be sized up to enhance the performance of your workload. This is
identified by analyzing the C<MemoryUtilization> metric of the current
service during the look-back period.

=item *

B<C<MemoryOverprovisioned> > E<mdash> The service memory configuration
can be sized down while still meeting the performance requirements of
your workload. This is identified by analyzing the C<MemoryUtilization>
metric of the current service during the look-back period.

=back



=head2 LastRefreshTimestamp => Str

The timestamp of when the Amazon ECS service recommendation was last
generated.


=head2 LaunchType => Str

The launch type the Amazon ECS service is using.

Compute Optimizer only supports the Fargate launch type.


=head2 LookbackPeriodInDays => Num

The number of days the Amazon ECS service utilization metrics were
analyzed.


=head2 ServiceArn => Str

The Amazon Resource Name (ARN) of the current Amazon ECS service.

The following is the format of the ARN:

C<arn:aws:ecs:region:aws_account_id:service/cluster-name/service-name>


=head2 ServiceRecommendationOptions => ArrayRef[L<Paws::ComputeOptimizer::ECSServiceRecommendationOption>]

An array of objects that describe the recommendation options for the
Amazon ECS service.


=head2 Tags => ArrayRef[L<Paws::ComputeOptimizer::Tag>]

A list of tags assigned to your Amazon ECS service recommendations.


=head2 UtilizationMetrics => ArrayRef[L<Paws::ComputeOptimizer::ECSServiceUtilizationMetric>]

An array of objects that describe the utilization metrics of the Amazon
ECS service.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

